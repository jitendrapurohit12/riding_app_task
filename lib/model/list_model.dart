import 'package:riding_app_task/constants/constant.dart';

class ListModel {
  String icon, title, subtitle;

  ListModel({this.icon, this.title, this.subtitle});
}

List<ListModel> list = [
  ListModel(
      icon: kImageCalendar,
      title: 'Friday 17, January',
      subtitle: '07:00 - 09:00'),
  ListModel(icon: kImageLocation, title: '38 Guild Street', subtitle: 'London'),
  ListModel(
      icon: kImageOffers,
      title: 'Friday 17, January',
      subtitle: '18:00 - 20:00'),
];
