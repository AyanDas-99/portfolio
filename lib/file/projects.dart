import 'package:portfolio/file/project_model.dart';

class Projects {
  static List<ProjectModel> projects = [
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
    ),
  ];

  const Projects._();
}
