import 'package:portfolio/file/project_model.dart';

class Projects {
  static List<ProjectModel> projects = [
    // Dibook
    ProjectModel(
        name: 'Dibook',
        intro: 'The Book reselling market app',
        image: 'assets/projects/dibook.png',
        desc:
            "Dibook is an online reselling platform for books, allowing users to effortlessly buy and sell books. Whether you're looking for a new read or want to declutter your bookshelf, Dibook has got you covered.",
        github: 'https://github.com/AyanDas-99/DiBook',
        techUsed:
            '''The mobile app is build using Flutter, with Riverpod state management.
      Backed with node.js server powered by express.js.
      Uses MongoDB to store all the book data (mongoose js),
      Initial design created with figma.
''',
        learnings:
            '''I mostly learned how to create server using node.js and express.js, and using mongoDB to store and retrieve data.
  Used MVVM architecture to keep the code organised and maintainable.
  '''),

    // verve
    ProjectModel(
      name: 'Verve',
      intro: 'Platform for creative people to connect and grow',
      image: 'assets/projects/VERVE.png',
      github: 'https://github.com/AyanDas-99/Verve',
      techUsed: '''The mobile app and website, are both created using Flutter.
Backend for this app is created using Firebase with Riverpod for state management.''',
      learnings: '''
I acquired deep understanding of how to perform CRUD operations on the database, learned to implement complex UI.
Implemented MVVM architecture and followed clean code principles.
''',
      link: 'http://verve-f9fb9.web.app/',
    ),

    // Coffee UI
    ProjectModel(
        name: 'Coffee UI',
        intro: 'Flutter UI for an online Coffee store',
        image: 'assets/projects/COFFEEUI.png',
        techUsed: '''This UI is built using Flutter''',
        learnings:
            'I learned how to implement some UI features like Frost Effect, etc.'),

    ProjectModel(
        name: 'Flutter Animations',
        intro: 'Representation of various types of animations in Flutter',
        image: 'assets/projects/animation.png',
        github: 'https://github.com/AyanDas-99/Flutter-animations',
        learnings:
            '''I learned basic to advanced animations in flutter from this project.
      Learned how to implement implicit animations, tween animations, animation controller, chaining ,etc.
      '''),
  ];

  const Projects._();
}
