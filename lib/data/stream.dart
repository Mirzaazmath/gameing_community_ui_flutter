class Stream{
  final String title;
  final String views;
  final String image;
  final String  time;
  Stream({required this.image,required this.time,required this.title,required this.views});
}
List<Stream>streamList=[
  Stream(image: "assets/video1.jpeg", time: "12h ago", title: "Fortnite Stream", views: "3.7m"),
  Stream(image: "assets/video2.jpeg", time: "1 day ago", title: "Super Sonic Mania", views: "1.2m"),
  Stream(image: "assets/video3.png", time: "2 days ago", title: "Rap With Speed", views: "2.9m"),
  Stream(image: "assets/live.jpeg", time: "3 days ago", title: "BGMI Rampage", views: "5.1m"),


];