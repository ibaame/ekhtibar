import 'questions.dart';
import 'package:audioplayers/audioplayers.dart';

class Functions {
  int _numOfQuestion = 0;
  final List<Question> _q = [];

  Functions() {
    _q.add(Question(
        text: "عدد الكواكب في المجموعة الشمسية هو ثمانية الكواكب",
        image: "images/image-1.jpg",
        answer: true));
    _q.add(Question(
        text: "القطط هي حيوانات لاحمة",
        image: "images/image-2.jpg",
        answer: true));
    _q.add(Question(
        text: "الصين موجودة في القارة الإفريقية",
        image: "images/image-3.jpg",
        answer: false));
    _q.add(Question(
        text: "الأرض مسطحة وليست كروية",
        image: "images/image-4.jpg",
        answer: false));
    _q.add(Question(
        text: "بإستطاعة الإنسان البقاء على قيد الحياة بدون أكل اللحوم",
        image: "images/image-5.jpg",
        answer: true));
    _q.add(Question(
        text: "الشمس تدور حول الأرض والأرض تدول حول القمر",
        image: "images/image-6.jpg",
        answer: false));
    _q.add(Question(
        text: "الحيوانات لا تشعر بالألم",
        image: "images/image-7.jpg",
        answer: false));
  }

  void nextQuestion() {
    _numOfQuestion++;
  }

  bool previousQuestion() {
    if (_numOfQuestion >= 1) {
      _numOfQuestion--;
      return true;
    } else {
      return false;
    }
  }

  bool isFinished() {
    if (_numOfQuestion >= _q.length) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _numOfQuestion = 0;
  }

  int getNumOfQuestion() {
    return _numOfQuestion;
  }

  int getLengthOfQuestions() {
    return _q.length;
  }

  // sounds
  void sound(String path) {
    final player = AudioPlayer();
    player.play(UrlSource(path));
  }

  // get methods

  String getText() {
    return _q[_numOfQuestion].text;
  }

  String getImage() {
    return _q[_numOfQuestion].image;
  }

  bool getAnswer() {
    return _q[_numOfQuestion].answer;
  }
}
