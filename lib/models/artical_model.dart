class ArticalModel {
  final String? image;
  final String title;
  final String? subTitle;
  ArticalModel(
      {required this.image, required this.title, required this.subTitle});
  newsmodel({required Map<String, dynamic> json}) {
    return ArticalModel(
        image: json['urlToImage'],
        title: json['title'],
        subTitle: json['description']);
  }
}
