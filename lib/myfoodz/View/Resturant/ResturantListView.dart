import 'package:flutter/material.dart';
import 'package:flutter_food_app/myfoodz/Theme/Color.dart';
import 'package:flutter_food_app/myfoodz/Theme/CustomTextStyle.dart';
import 'package:flutter_food_app/myfoodz/View/Resturant/ResturantDetail.dart';
import 'package:flutter_food_app/myfoodz/Widgets/CustomOutlineButton.dart';



List<String>images=[
  "https://www.thecandidadiet.com/wp-content/uploads/2018/08/candida-foods-to-eat-1200x628.jpg",
  "https://previews.123rf.com/images/inganielsen/inganielsen1202/inganielsen120200059/12418864-raw-ingredients-for-a-chili-con-carne.jpg",
  "https://www.weightwatchers.com/us/sites/default/files/styles/wwvs_default_image/public/article_masthead/0p_foodlist_purple_1200x628.jpg?itok=3ErSwv7S",
  "https://hips.hearstapps.com/vidthumb/images/img-6223-jpg-1585253089.jpg?crop=1.00xw:0.757xh;0,0.0769xh&resize=480:*",
  "https://previews.123rf.com/images/inganielsen/inganielsen1202/inganielsen120200059/12418864-raw-ingredients-for-a-chili-con-carne.jpg",
  "https://www.thecandidadiet.com/wp-content/uploads/2018/08/candida-foods-to-eat-1200x628.jpg",
  "https://www.thecandidadiet.com/wp-content/uploads/2018/08/candida-foods-to-eat-1200x628.jpg",
  "https://www.weightwatchers.com/us/sites/default/files/styles/wwvs_default_image/public/article_masthead/0p_foodlist_purple_1200x628.jpg?itok=3ErSwv7S",
  "https://www.thecandidadiet.com/wp-content/uploads/2018/08/candida-foods-to-eat-1200x628.jpg",
  "https://www.weightwatchers.com/us/sites/default/files/styles/wwvs_default_image/public/article_masthead/0p_foodlist_purple_1200x628.jpg?itok=3ErSwv7S",
];

List<String>itemNames=[
  "Veg-Spicy",
  "Dal Makan",
  "North Indians",
  "Fish - Fry",
  "Noodle Soup",
  "Veg-Spicy",
  "Italian Food",
  "North Indians",
  "Fish - Fry",
  "Noodle Soup",
  ];

class ResturantListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: (context,constraint){

        double height = constraint.biggest.height;
        double width = constraint.biggest.width;
        return ListView.separated(
          key: PageStorageKey("list_data"),
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResturantDetail(index: index,image: images[index],title: "Title From",),
                    ),
                );
              },
              child: ResturantListItem(width: width,height: height,index: index,),
            );
          },
          separatorBuilder: (context,index){
            return Container();
          },
          itemCount: 10,
        );
      },
    );
  }
}

class TextSection extends StatelessWidget{
  TextSection(this.name);
  String name;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(name,style: resturantListTitleText(),),
                Text("India",style: resturantListSubTitleText())
              ],
            ),
          ),
        ),
        Container(
          child: CustomOutlineButton(
          onPressed: (){

          },
          textStyle: resturantListButton(),
          highlightColor: primaryColor,
          borderColor: primaryColor,
          text: "Delivery in 30 Mins",
          ),
        ),
      ],
    );
  }
}

class ResturantListItem extends StatelessWidget{

  double height;
  double width;
  int index;
  ResturantListItem({this.width,this.height,this.index});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      height: height/3,
      child: Column(
        children: <Widget>[
          Expanded(
              child: Hero(
                tag: index,
                child: Container(
                  width: width-20,
                  child: Image.network(images[index],fit: BoxFit.fitWidth,),
                ),
              )
          ),
          TextSection(itemNames[index])
        ],
      ),
    );
  }
}