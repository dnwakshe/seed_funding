import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';

class CardFeed extends StatefulWidget {  
  final String firstname;
  final String lastname;
  final String caption_details;
  final String product_details;
  

  CardFeed(
      {
      this.firstname,
      this.lastname,
      this.caption_details,
      this.product_details,
     });

  @override
  _CardFeedState createState() => _CardFeedState(
      
      firstname: firstname,
      lastname:lastname,
      caption_details:caption_details,
      product_details:product_details,
     );
}

class _CardFeedState extends State<CardFeed> {
  final String firstname="";
  final String lastname="";
  final String caption_details="";
  final String product_details="";

  _CardFeedState({
      this.firstname,
      this.lastname,
      this.caption_details,
      this.product_details,
  });
  Color randomColor() {
    var random = Random();
    final colorList = [
      LightColor.orange,
      LightColor.green,
      LightColor.grey,
      LightColor.lightOrange,
      LightColor.skyBlue,
      LightColor.titleTextColor,
      Colors.red,
      Colors.brown,
      LightColor.purpleExtraLight,
      LightColor.skyBlue,
    ];
    var color = colorList[random.nextInt(colorList.length)];
    return color;
  }

  // final String phone1 = 'tel:+919179772425';
  // final String phone2 = 'tel:+919826853640';
  // final String phone3 = 'tel:+917415585662';

  void _callPhone1(String phone1) async {
    if (await canLaunch(phone1)) {
      await launch(phone1);
    } else {
      throw 'Could not Call Phone';
    }
  }

  void launchWhatsApp({
    @required String phone,
    @required String message,
  }) async {
    String url() {
      if (Platform.isIOS) {
        return "whatsapp://wa.me/$phone/?text=${Uri.parse(message)}";
      } else {
        return "whatsapp://send?phone=$phone.&text=${Uri.parse(message)}";
      }
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }

// final String phone = 'tel:+1 234 517 8991';

  @override
  Widget build(BuildContext context) {
    // AppBuilder.of(context).rebuild();

    //final DecrementBloc decrementBloc = Provider.of<DecrementBloc>(context);
    //IconData myFeedback = FontAwesomeIcons.sadTear;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(4, 4),
              blurRadius: 10,
              color: LightColor.grey.withOpacity(.2),
            ),
            BoxShadow(
              offset: Offset(-3, 0),
              blurRadius: 15,
              color: LightColor.grey.withOpacity(.1),
            )
          ],
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          child: ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(13)),
              child: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: randomColor(),
                ),
                child: Image.asset(
                  "assets/card2.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            title: Text(prodName,
                style: TextStyles.title.copyWith(
                    fontWeight: FontWeight.bold,
                    color: LightColor.titleTextColor)),
            subtitle: Row(
              children: [
                Text(
                  "${prodQuant}",
                  style: TextStyles.bodySm.copyWith(
                      fontWeight: FontWeight.bold,
                      color: LightColor.subTitleTextColor),
                ),
                SizedBox(
                  width: 5,
                ),
                // Text(
                //   "Price : ${prodPrice}",
                //   style: TextStyles.bodySm.copyWith(fontWeight: FontWeight.bold,color: LightColor.subTitleTextColor),
                // ),
              ],
            ),
            trailing: InkWell(
              onTap: funToCalNum == 0
                  ? () async {
                      launchWhatsApp(
                          message: "COVID", phone: "+1 234 517 8991");
                    }
                  : () {
                      // canLaunch('tel:+91-9179772425');
                      _callPhone1('tel:+91-9179772425');
                    },
              child: Container(
                height: imageSize,
                width: imageSize,
                child: Image.asset(imagePath),
              ),
            ),
          ),
        ));
  }
}
