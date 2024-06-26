import 'package:feedback_customer/util/color_custom.dart';
import 'package:flutter/material.dart';

Widget customPressButton({double? padding,onPress,double? width,required String? text,}){
  return ClipRRect(
    borderRadius: BorderRadius.circular(padding!),
    child:  Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: MyColor.yellow_bg,
          onTap: ()=>onPress(),
          child: Container( alignment: Alignment.center,
                                padding: const EdgeInsets.all(8.0),
                                width: width,
                                height: 65.0,
                                decoration: BoxDecoration(
                                    border: Border.all(color: MyColor.black_text, width: .5),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      stops: const [0.1, 0.45, 0.85],
                                      colors: [
                                          MyColor.yellow.withOpacity(1),
                                         MyColor.yellow.withOpacity(.55),
                                        MyColor.yellow.withOpacity(.15),
                                      ],
                                    ),
                                    borderRadius:
                                        BorderRadius.circular(padding)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                        text!,
                                        style: const TextStyle(fontSize: 26.0,fontWeight: FontWeight.bold),),
                                    const SizedBox(width: 4.0,),
                                    const Icon(Icons.double_arrow_rounded,color:Colors.black,size: 36.0,)
                                  ],
                                ),
                              )
        ),
      ),
  );
}