import 'package:ecom_app/widgets/AllHeightsAndWidth.dart';
import 'package:ecom_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget(
      {Key? key
    , required this.text,
      }) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firsthalf;
  late String secondhalf;

  bool hiddenText = true;
  double textheight = heightAndWidth.containerHeight(100);

  @override
  void initState() {
    super.initState();
    if(widget.text.length>textheight)
      {
        firsthalf = widget.text.substring(0,textheight.toInt());
        secondhalf = widget.text.substring(textheight.toInt() + 1,widget.text.length);
      }
    else{
      firsthalf = widget.text;
      secondhalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: heightAndWidth.containerHeight(10),
      ),
      child: secondhalf.isEmpty?SmallText(text: firsthalf,):Column(
        children: [
          SmallText(text: hiddenText?("$firsthalf..."):(firsthalf + secondhalf) ,size: 18,),
          InkWell(
            onTap: (){
              setState(()  {
                hiddenText = !hiddenText;

                });


            },
            child: Row(
              children: [
                SmallText(text: hiddenText?("show more"):"show less",size: 16,),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: Colors.lightBlueAccent,)
              ],
            ),
          )
        ],

      ),
    );
  }
}
