import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:formation_locagri/models/Quiz.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizView extends StatefulWidget {
  List<Quiz> listQuiz;
  final int initialQuizIndex;
  QuizView(this.listQuiz, {this.initialQuizIndex = 0, super.key});

  @override
  State<QuizView> createState() => _QuizState();
}

class _QuizState extends State<QuizView> {
  int _currentQuizIndex = 0;
  List<String> _selectedAnswers = [];
  int _selectedIndex = -1;
  int _mesPoints = 0;
  bool isEnabled = true;
  bool _isButtonEnabled = true;
  Color tileColor = Colors.white;
  Color defaultTileColor = Colors.white;
  bool _allQuizzesValidated = false;

  @override
  void initState() {
    super.initState();
    _currentQuizIndex = widget.initialQuizIndex;
  }

  void _onAnswerSelected(String answer) {
    setState(() {
      if (widget.listQuiz[_currentQuizIndex].reponseExacte.length > 1) {
        if (_selectedAnswers.contains(answer)) {
          _selectedAnswers.remove(answer);
        } else {
          _selectedAnswers.add(answer);
        }
      } else {
        _selectedAnswers.clear();
        _selectedAnswers.add(answer);
      }
    });
  }

  void _onNextPressed() {
    setState(() {
      _currentQuizIndex++;
      isEnabled = true;
      _isButtonEnabled = true;
      _selectedAnswers.clear();
      tileColor = Colors.white;
    });
  }

  void _onValidatePressed() {
    _isButtonEnabled = false;
    isEnabled = false;
    setState(() {
      if (widget.listQuiz[_currentQuizIndex].reponseExacte.length > 1) {
        bool answerCorrect = true;
        
        if (!(_selectedAnswers.length == widget.listQuiz[_currentQuizIndex].reponseExacte.length && _selectedAnswers.every((element) => widget.listQuiz[_currentQuizIndex].reponseExacte.contains(element)))) {
          answerCorrect = false;
          tileColor = Colors.red;
        }
        
        if (answerCorrect) {
          _mesPoints += 1;
          tileColor = Colors.green;
        }
      } else {
        bool answerCorrect = true;
        // if (!(_selectedAnswers[_currentQuizIndex] == widget.listQuiz[_currentQuizIndex].reponseExacte[0])) {
        //   answerCorrect = false;
        //   tileColor = Colors.red;
        // }

        for (String correctAnswer in widget.listQuiz[_currentQuizIndex].reponseExacte) {
          if (!_selectedAnswers.contains(correctAnswer)) {
            answerCorrect = false;
            tileColor = Colors.red;
            break;
          }
        }
        if (answerCorrect) {
          _mesPoints += 1;
          tileColor = Colors.green;
        }
      }
    });
  }

  Widget _buildQuestionText() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.green[100],
      ),
      child: Center(
        child: Text(
          widget.listQuiz[_currentQuizIndex].question,
          style: GoogleFonts.poppins(
            color: Colors.black.withOpacity(0.8),
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildAnswerList(){
    if (widget.listQuiz[_currentQuizIndex].propositionReponse.isEmpty) {
      return Text("Aucune proposition de réponse n'est disponible.");
    }
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.listQuiz[_currentQuizIndex].propositionReponse.length,
      itemBuilder: (context, index){
        List<int> selectedIndices = [];
        String label = widget.listQuiz[_currentQuizIndex].propositionReponse.keys.elementAt(index);
        String value = widget.listQuiz[_currentQuizIndex].propositionReponse.values.elementAt(index);
        
        if (widget.listQuiz[_currentQuizIndex].reponseExacte.length > 1) {
          return Card(
            color: selectedIndices.contains(index) ? Colors.blue : defaultTileColor,
            elevation: 4.0,
            child: ListTile(
              title: Text(
                value,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              // Modifiez la fonction onTap
              onTap: () {
                setState(() {
                  isEnabled = true;
                  if (selectedIndices.contains(index)) {
                    selectedIndices.remove(index);
                  } else {
                    selectedIndices.add(index);
                  }
                  _onAnswerSelected(label);
                });
              },
              enabled: isEnabled,
            ),
          );
        } else {
          return Card(
            color: _selectedIndex == index ? tileColor : defaultTileColor, // utilisez la propriété color du widget Container pour définir la couleur d'arrière-plan du Card
            elevation: 4.0,
            child: ListTile(
              title: Text(
                value,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black, // utilisez la variable _isSelected pour déterminer la couleur du texte
                ),
              ),
              onTap: (){
                setState(() {
                  // isEnabled = false;
                  _selectedIndex = index; // basculez la valeur de _isSelected à chaque appui sur le ListTile
                  tileColor = Colors.blue;
                  _onAnswerSelected(label);
                  print(_selectedAnswers);
                });
              },
              enabled: isEnabled,
            ),
          );
        }
      }
    );
  }

  Widget _buildValidateButton() {
    return Material(
      color: _isButtonEnabled ? Colors.green : Colors.green[100],
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: _isButtonEnabled ? () => _onValidatePressed() : null,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Valider",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  // letterSpacing: 1,
                  fontWeight: FontWeight.w500
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    // _currentQuizIndex == widget.listQuiz.length - 1
    if (_currentQuizIndex == widget.listQuiz.length - 1) {
      return Material(
      color: Colors.green,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: (){
          setState(() {
            _allQuizzesValidated = true;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Terminer",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
              )
            ],
          ),
        ),
      ),
    );
    } else {
      return Material(
      color: Colors.green,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: (){
          _onNextPressed();
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Suivant",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  // letterSpacing: 1,
                  fontWeight: FontWeight.w500
                ),
              )
            ],
          ),
        ),
      ),
    );
    }
  }
  
  Widget _buildQuizView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildQuestionText(),
        SizedBox(height: 20,),
        _buildAnswerList(),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildValidateButton(),
            _buildNextButton()
          ],
        )      
      ],
    );
  }

  Widget _buildResultView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Votre score est de : $_mesPoints',
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(height: 16),
        // ElevatedButton(
        //   onPressed: () {
        //     setState(() {
        //       _currentQuizIndex = 0;
        //       _selectedAnswers.clear();
        //       _mesPoints = 0;
        //       for (Quiz quiz in widget.listQuiz) {
        //         quiz.valide = false;
        //       }
        //       _allQuizzesValidated = false;
        //     });
        //   },
        //   child: Text('Rejouer'),
        // ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white,)
        ),
        title: Text(
          "Tous les quiz",
          style: GoogleFonts.poppins(
            color: Colors.white,
          ),
        ),
        actions: [
          Center(child: Text(
            _mesPoints.toString(),
            style: GoogleFonts.poppins(
              color: Colors.white,
              // fontSize: size.width*0.044
            ),
          )),
          const Padding(
            padding: EdgeInsets.only(left: 2.0, right: 4.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!_allQuizzesValidated)
              _buildQuizView()
            else
              _buildResultView(),
          ],
        ),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';

class QuizView extends StatefulWidget {
  final List<Quiz> listQuiz;
  final int initialQuizIndex;

  const QuizView({
    required this.listQuiz,
    this.initialQuizIndex = 0,
  });

  @override
  _QuizViewState createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  int _currentQuizIndex = 0;
  Map<int, String> _selectedAnswers = {};

  @override
  void initState() {
    super.initState();
    _currentQuizIndex = widget.initialQuizIndex;
  }

  void _onAnswerSelected(String answer) {
    setState(() {
      _selectedAnswers[widget.listQuiz[_currentQuizIndex].id] = answer;
    });
  }

  void _onNextPressed() {
    setState(() {
      _currentQuizIndex++;
    });
  }

  void _onValidatePressed() {
    // Vérifier les réponses et afficher les résultats
  }

  Widget _buildQuestionText() {
    return Text(
      widget.listQuiz[_currentQuizIndex].question,
      style: TextStyle(fontSize: 20),
    );
  }

  Widget _buildAnswerList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.listQuiz[_currentQuizIndex].propositionReponse.length,
      itemBuilder: (BuildContext context, int index) {
        String label = widget.listQuiz[_currentQuizIndex].propositionReponse.keys.elementAt(index);
        String value = widget.listQuiz[_currentQuizIndex].propositionReponse.values.elementAt(index);
        return RadioListTile<String>(
          title: Text(value),
          value: label,
          groupValue: _selectedAnswers[widget.listQuiz[_currentQuizIndex].id],
          onChanged: (String? value) {
            _onAnswerSelected(value!);
          },
        );
      },
    );
  }

  Widget _buildNextButton() {
    if (_currentQuizIndex == widget.listQuiz.length - 1) {
      return ElevatedButton(
        onPressed: _onValidatePressed,
        child: Text('Valider'),
      );
    } else {
      return ElevatedButton(
        onPressed: _onNextPressed,
        child: Text('Suivant'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildQuestionText(),
        SizedBox(height: 16),
        _buildAnswerList(),
        SizedBox(height: 16),
        _buildNextButton(),
      ],
    );
  }
}


void _onAnswerSelected(String label) {
    setState(() {
      if (_selectedAnswers.contains(label)) {
        _selectedAnswers.remove(label);
      } else {
        _selectedAnswers.add(label);
      }
    });
  }

  void _onValidatePressed() {
    setState(() {
      bool allAnswersCorrect = true;
      for (String correctAnswer in widget.quizzes[_currentQuizIndex].reponseExacte) {
        if (!_selectedAnswers.contains(correctAnswer)) {
          allAnswersCorrect = false;
          break;
        }
      }
      if (allAnswersCorrect) {
        _mesPoints += 2;
      }
      widget.quizzes[_currentQuizIndex].valide = true;
      _currentQuizIndex++;
      if (_currentQuizIndex < widget.quizzes.length) {
        _selectedAnswers.clear();
      } else {
        _allQuizzesValidated = true;
      }
    });
  }

  Widget _buildQuestionText() {
    return Text(
      widget.quizzes[_currentQuizIndex].question,
      style: TextStyle(fontSize: 20),
    );
  }

  Widget _buildAnswerList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.quizzes[_currentQuizIndex].propositionReponse.length,
      itemBuilder: (BuildContext context, int index) {
        String label = widget.quizzes[_currentQuizIndex].propositionReponse.keys.elementAt(index);
        String value = widget.quizzes[_currentQuizIndex].propositionReponse.values.elementAt(index);
        Color tileColor = Colors.white;

        if (widget.quizzes[_currentQuizIndex].valide) {
          if (widget.quizzes[_currentQuizIndex].reponseExacte.contains(label)) {
            tileColor = _selectedAnswers.contains(label) ? Colors.green : Colors.grey;
          } else {
            tileColor = _selectedAnswers.contains(label) ? Colors.red : Colors.grey;
          }
        }

        return ListTile(
          title: Text(value),
          tileColor: tileColor,
          enabled: !widget.quizzes[_currentQuizIndex].valide,
          onTap: () {
            _onAnswerSelected(label);
          },
        );
      },
    );
  }

  Widget _buildValidateButton() {
    return ElevatedButton(
      onPressed: _onValidatePressed,
      child: Text('Valider'),
    );
  }

  Widget _buildNextButton() {
    return ElevatedButton(
      onPressed: _currentQuizIndex < widget.quizzes.length - 1 ? _onValidatePressed : () {
        setState(() {
          _allQuizzesValidated = true;
        });
      },
      child: Text(_currentQuizIndex < widget.quizzes.length - 1 ? 'Suivant' : 'Terminer'),
    );
  }

  Widget _buildQuizView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildQuestionText(),
        SizedBox(height: 16),
        _buildAnswerList(),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildValidateButton(),
            _buildNextButton(),
          ],
        ),
      ],
    );
  }

  Widget _buildResultView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Votre score est de : $_mesPoints',
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _currentQuizIndex = 0;
              _selectedAnswers.clear();
              _mesPoints = 0;
              for (Quiz quiz in widget.quizzes) {
                quiz.valide = false;
              }
              _allQuizzesValidated = false;
            });
          },
          child: Text('Rejouer'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!_allQuizzesValidated)
              _buildQuizView()
            else
              _buildResultView(),
          ],
        ),
      ),
    );
  }
}

*/