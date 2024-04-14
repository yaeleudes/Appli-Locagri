import 'package:flutter/material.dart';
import 'package:formation_locagri/models/Chapter.dart';
import 'package:formation_locagri/models/Quiz.dart';
import 'package:formation_locagri/models/User.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class QuizView extends StatefulWidget {
  List<Quiz> listQuiz;
  int id;
  String labelle;
  final int initialQuizIndex;
  QuizView(this.listQuiz, this.id, this.labelle, {this.initialQuizIndex = 0, super.key});

  @override
  State<QuizView> createState() => _QuizState();
}

class _QuizState extends State<QuizView> {
  int _currentQuizIndex = 0;
  List<String> _selectedAnswers = [];
  Set<int> _selectedIndices = <int>{}; 
  int _selectedIndex = -1;
  int _score = 0;
  int _mesPoints = 0;
  bool isEnabled = true;
  bool _isButtonEnabled = true;
  Color tileColor = Colors.white;
  Color defaultTileColor = Colors.white;
  bool _allQuizzesValidated = false;
  int _nbrQuestions = 0;
  List<int> _validatedIndices = [];
  String _animeRes = "0";
  final box = GetStorage();
  late User user;
  late Chapter chapter;

  @override
  void initState() {
    super.initState();
    // _allQuizzesValidated = box.read(widget.labelle) ?? false;
    _currentQuizIndex = widget.initialQuizIndex;
    _nbrQuestions = widget.listQuiz.length;
    _score = box.read("score") ?? 0;
    GetStorage().listenKey("score", (value) {
      setState(() {
        _score = value;
      });
    });
  }

  void _incrementScore() {
    setState(() {
      _score++;
      box.write("score", _score);
    });
  }

  Color _getIconColor(int index) {
    return _selectedIndices.contains(index) ? Colors.blue : Colors.grey;
  }

  Color _getTileValidetColor(int index, String label) {
    if (_validatedIndices.contains(index)) {
      if (widget.listQuiz[_currentQuizIndex].reponseExacte.contains(label)) {
        return Color(0xFF4CAF50);
      } else {
        return Colors.red;
      }
    }
    return defaultTileColor;
  }

  void _onAnswersSelected(int index, String label) {
    setState(() {
      if (_selectedIndices.contains(index)) {
        _selectedAnswers.remove(label);
        _selectedIndices.remove(index); 
      } else {
        _selectedAnswers.add(label);
        _selectedIndices.add(index);
      }
      print(_selectedAnswers);
    });
  }

  void _onAnswerSelected(String answer) {
    setState(() {
        _selectedAnswers.clear();
        _selectedAnswers.add(answer);
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
        
        bool hasCorrectAnswer = false;
        _validatedIndices.clear();

        for (int index in _selectedIndices) {
          String selectedAnswer = widget.listQuiz[_currentQuizIndex].propositionReponse.keys.elementAt(index);

          if (widget.listQuiz[_currentQuizIndex].reponseExacte.contains(selectedAnswer)) {
            _validatedIndices.add(index); 
            hasCorrectAnswer = true;
          } else {
            _validatedIndices.add(index);
          }
        }

        if (hasCorrectAnswer && (_selectedAnswers.length == widget.listQuiz[_currentQuizIndex].reponseExacte.length && _selectedAnswers.every((element) => widget.listQuiz[_currentQuizIndex].reponseExacte.contains(element)))) {
          _mesPoints += 1;
          if ((box.read(widget.labelle) ?? false) == false) {
            _incrementScore();
          }
        }
      } else {
        bool answerCorrect = true;

        for (String correctAnswer in widget.listQuiz[_currentQuizIndex].reponseExacte) {
          if (!_selectedAnswers.contains(correctAnswer)) {
            answerCorrect = false;
            tileColor = Colors.red;
            break;
          }
        }
        if (answerCorrect) {
          _mesPoints += 1;
          if ((box.read(widget.labelle) ?? false) == false) {
            _incrementScore();
          }
          tileColor = Colors.green;
        }
      }
    });
  }

  void _revenir(){
    setState(() {
      isEnabled = true;
      _isButtonEnabled = true;
      _currentQuizIndex = 0;
      _selectedAnswers.clear();
      _selectedIndices.clear();
      _allQuizzesValidated = false;
      _validatedIndices.clear();
      _mesPoints = 0;
      for (Quiz quiz in widget.listQuiz) {
        quiz.valide = false;
      }
      _allQuizzesValidated = false;
    });
  }

  void _mAllQuizzesValidated() {
    setState(() {
      _allQuizzesValidated = true;
      box.write(widget.labelle, _allQuizzesValidated);
    });
  }

  Widget _buildQuestionText() {
    if(widget.listQuiz[_currentQuizIndex].reponseExacte.length > 1){
      int a = widget.listQuiz[_currentQuizIndex].reponseExacte.length;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
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
          ),
          SizedBox(height: 20,),
          Text(
            "NB : Pour ce quiz il y a $a réponses exactes !",
            style: GoogleFonts.poppins(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 14
            ),
          )        
        ],
      );
    }
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
        String label = widget.listQuiz[_currentQuizIndex].propositionReponse.keys.elementAt(index);
        String value = widget.listQuiz[_currentQuizIndex].propositionReponse.values.elementAt(index);
        
        if (widget.listQuiz[_currentQuizIndex].reponseExacte.length > 1) {
          return Card(
            color: _getTileValidetColor(index, label),
            elevation: 4.0,
            child: ListTile(
              title: Text(
                value,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                setState(() {
                  isEnabled = true;
                  _onAnswersSelected(index, label);
                });
                print(widget.listQuiz[index].isSelected);
              },
              trailing: Icon(Icons.check_circle, color: _getIconColor(index),),
              enabled: isEnabled,
            ),
          );
        } else {
          return Card(
            color: _selectedIndex == index ? tileColor : defaultTileColor,
            elevation: 4.0,
            child: ListTile(
              title: Text(
                value,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              onTap: (){
                setState(() {
                  _selectedIndex = index;
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
    if (_currentQuizIndex == widget.listQuiz.length - 1) {
      return Material(
      color: !_isButtonEnabled ? Colors.green : Colors.green[100],
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: !_isButtonEnabled ? () => _mAllQuizzesValidated() : null,
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
      color: !_isButtonEnabled ? Colors.green : Colors.green[100],
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: !_isButtonEnabled ? () => _onNextPressed() : null,
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
    _animeRes = _mesPoints >= _nbrQuestions/2 ? 'assets/animations/congrate.json' : 'assets/animations/fail.json';
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: _mesPoints >= _nbrQuestions/2 ? Colors.green[100] : Colors.red[100],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset(
                  _animeRes,
                  height: 200
                ),
                // SizedBox(height: 0),
                Text(
                  'Score : $_mesPoints/$_nbrQuestions',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: _mesPoints >= _nbrQuestions/2 ? Colors.green : Colors.red
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Le quiz est terminé.",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Material(
            color:Colors.green,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {
                _revenir();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Rejouer",
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
          )
        ],
      ),
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
          "Quiz ${_currentQuizIndex + 1} / ${widget.listQuiz.length}",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          Center(child: Text(
            "${_score}",
            style: GoogleFonts.poppins(
              color: Colors.white,
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
      body: ListView(
        children:[ 
          Padding(
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
        ]
      ),
    );
  }
}