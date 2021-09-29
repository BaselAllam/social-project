import 'package:flutter/material.dart';




class ContainerItem extends StatefulWidget {

  final String txt;
  final Color color;
  final Size size;
  final bool isBorder;

  ContainerItem(this.txt, this.color, this.size, this.isBorder);

  @override
  _ContainerItemState createState() => _ContainerItemState();
}

class _ContainerItemState extends State<ContainerItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(10.0),
        border: widget.isBorder == true ? Border.all(color: Colors.white, width: 1.5) : Border.all()
      ),
      height: widget.size.height,
      width: widget.size.width,
      alignment: Alignment.center,
      child: Text(
        '${widget.txt}',
        style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}