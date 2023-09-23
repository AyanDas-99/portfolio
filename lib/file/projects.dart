import 'package:portfolio/file/project_model.dart';

class Projects {
  static List<ProjectModel> projects = [
    // verve
    ProjectModel(
      name: 'Verve',
      intro: 'Platform for creative people to connect and grow',
      desc: '',
      image: 'assets/projects/VERVE.png',
      github: 'https://github.com/AyanDas-99/Verve',
    ),

    // Coffee UI
    ProjectModel(
      name: 'Coffee UI',
      intro: 'Flutter UI for an online Coffee store',
      desc: '',
      image: 'assets/projects/COFFEEUI.png',
      github: '',
    ),

    ProjectModel(
      name: 'Flutter Animations',
      intro: 'Representation of various types of animations in Flutter',
      desc: '',
      image: 'assets/projects/animation.png',
      github: 'https://github.com/AyanDas-99/Flutter-animations',
    ),
  ];

  const Projects._();
}
