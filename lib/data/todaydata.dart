class Wheather {
  final String temperature;
  final String image;
  final String time;

  Wheather({
    required this.temperature,
    required this.image,
    required this.time,
  });
}
class WeekWheather {
  final String name;
  final String tem1;
  final String image;
  final String tem2;
  final String day;
  WeekWheather({
    required this.image,
    required this.day,
    required this.name,
    required this.tem1,
    required this.tem2,

});

}
List<Wheather>today=[
  Wheather(temperature: "23*",image: "assets/rain.png",time: "10:00"),
  Wheather(temperature: "21*",image: "assets/thunderbold.webp",time: "11:00"),
  Wheather(temperature: "22*",image: "assets/rain2.png",time: "12:00"),
  Wheather(temperature: "19*",image: "assets/wind.png",time: "01:00"),
  Wheather(temperature: "25*",image: "assets/rain.png",time: "02:00"),
  Wheather(temperature: "23*",image: "assets/thunderbold.webp",time: "03:00"),
  Wheather(temperature: "20*",image: "assets/rain2.png",time: "04:00"),
  Wheather(temperature: "19*",image: "assets/wind.png",time: "05:00"),
];

List<WeekWheather>weekWeatherList=[
  WeekWheather(image: "assets/rain.png", day: "Rainy", name: "Mon", tem1:
      "+20*", tem2: "+14*"),
  WeekWheather(image: "assets/rain2.png", day: "Rainy", name: "Tue", tem1:
  "+22*", tem2: "+15*"),
  WeekWheather(image: "assets/thunderbold.webp", day: "Storm", name: "Wed", tem1:
  "+21*", tem2: "+14*"),
  WeekWheather(image: "assets/wind.png", day: "Windy", name: "Thu", tem1:
  "+18*", tem2: "+16*"),
  WeekWheather(image: "assets/rain.png", day: "Rainy", name: "Fri", tem1:
  "+19*", tem2: "+14*"),
  WeekWheather(image: "assets/rain2.png", day: "Rainy", name: "Sat", tem1:
  "+20*", tem2: "+17*"),
  WeekWheather(image: "assets/thunderbold.webp", day: "Storm", name: "Sun", tem1:
  "+24*", tem2: "+20*"),
];