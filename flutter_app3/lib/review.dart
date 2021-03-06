import 'package:flutter/material.dart';

class  Review  extends StatelessWidget{

  String pPathImage  = "assets/img/viajero1.jpeg";
  String pNombre = "Felipe";
  String pDetalle  = "1 revision y 5 fotos";
  String pComentario = "Este es un ejemplo de comentario";


  Review(this.pPathImage,this.pNombre,this.pDetalle, this.pComentario);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final comentarioUsuario = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        pComentario,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900,
        ),
      ),
    );

    final informacionUsuario = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        pDetalle,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final nombreUsuario =  Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        pNombre,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0
        ),
      ),
    );

    final detalleUsuario =  Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        nombreUsuario,
        informacionUsuario,
        comentarioUsuario
      ],
    );


    final foto = Container(
       margin: EdgeInsets.only(
         top: 20.0,
         left: 20.0
       ),

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pPathImage)),
      ),
    );
    return  Row(
      children: <Widget>[
        foto,
        detalleUsuario
      ],
    );
  }


}