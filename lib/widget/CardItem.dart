import 'package:flutter/material.dart';

class CardItem extends StatelessWidget{
  final Widget child;
  final EdgeInsets margin;
  final Color color;
  final RoundedRectangleBorder shape;
  final double elevation;

  CardItem({@required this.color,this.child,this.elevation = 5.0,this.shape,this.margin});

  @override
  Widget build(BuildContext context) {
    EdgeInsets margin = this.margin;
    RoundedRectangleBorder shape = this.shape;
    Color color = this.color;
    margin ??= EdgeInsets.only(left: 2.0,top: 2.0,right: 2.0,bottom: 2.0);
    shape ??= new RoundedRectangleBorder(borderRadius: new BorderRadius.all(Radius.circular(4.0)));
    color ??= new Color(0xffeeff);
    return new Card(elevation: elevation,shape: shape,color: color,margin: margin,child: child,);
  }

}