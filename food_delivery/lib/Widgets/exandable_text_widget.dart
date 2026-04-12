import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({
    super.key,
    required this.text,

  });

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText=true;

  double textHeight = Dimensions.screenHeight/5.63;
  @override
  void initState() {
    super.initState();
    int textLimit = 150;
    if (widget.text.length > textLimit) {
      firstHalf = widget.text.substring(0, textLimit);
      secondHalf = widget.text.substring(textLimit);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }
  // @override
  // void initState(){
  //   super.initState();
  //     if(widget.text.length>textHeight){
  //       firstHalf = widget.text.substring(0,textHeight.toInt());
  //       secondHalf =widget.text.substring(textHeight.toInt()+1,widget.text.length);
  //     }else{
  //       firstHalf=widget.text;
  //       secondHalf="";
  //     }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child:secondHalf.isEmpty?SmallText(size:Dimensions.font16,text: firstHalf):Column(
        children: [
          SmallText(height:1.8,color:AppColors.paraColor,size:Dimensions.font16,text: hiddenText?(firstHalf+"..."):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText=!hiddenText;
              });

            },
            child: Row(
              children: [
                SmallText(text: "show more",color: AppColors.mainColor,),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: AppColors.mainColor,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
