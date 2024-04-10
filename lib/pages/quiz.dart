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
  int _mesPoints = 0;
  bool _allQuizzesValidated = false;

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
        Color tileColor = Colors.white;
        return ListTile(
          title: Text(value),
          tileColor: tileColor,
          enabled: !widget.listQuiz[_currentQuizIndex].valide || _selectedAnswers[widget.listQuiz[_currentQuizIndex].id] == label,
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
      onPressed: _currentQuizIndex < widget.listQuiz.length - 1 ? _onValidatePressed : () {
        setState(() {
          _allQuizzesValidated = true;
        });
      },
      child: Text(_currentQuizIndex < widget.listQuiz.length - 1 ? 'Suivant' : 'Terminer'),
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
              for (Quiz quiz in widget.listQuiz) {
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
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
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