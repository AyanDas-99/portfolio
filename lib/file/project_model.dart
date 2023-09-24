class ProjectModel {
  final String name;
  final String intro;
  final String? desc;
  final String image;
  final String? github;
  final String? techUsed;
  final String? learnings;
  final String? link;

  ProjectModel({
    required this.name,
    required this.intro,
    this.desc,
    required this.image,
    this.github,
    this.techUsed,
    this.learnings,
    this.link,
  });
}
