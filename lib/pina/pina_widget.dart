import '../articulos/articulos_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../inicio2/inicio2_widget.dart';
import '../registrar/registrar_widget.dart';
import '../venta/venta_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class PinaWidget extends StatefulWidget {
  const PinaWidget({Key key}) : super(key: key);

  @override
  _PinaWidgetState createState() => _PinaWidgetState();
}

class _PinaWidgetState extends State<PinaWidget> {
  double ratingBarValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFD80D0A),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 14),
          child: InkWell(
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Inicio2Widget(),
                ),
              );
            },
            child: Image.network(
              'https://retailers.mx/website/wp-content/uploads/2021/09/Soriana-741x486-1-400x260.png',
              width: 200,
              height: 69,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        title: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Inicio2Widget(),
              ),
            );
          },
          child: Text(
            'Soriana',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
        ),
        actions: [
          Align(
            alignment: AlignmentDirectional(0, 0.35),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
              child: FlutterFlowIconButton(
                borderColor: Color(0xFFB4BD00),
                borderRadius: 7,
                buttonSize: 35,
                fillColor: Color(0xFFB4BD00),
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 15,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 7, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 25,
              borderWidth: 1,
              buttonSize: 35,
              icon: Icon(
                Icons.person_outline,
                color: Colors.white,
                size: 28,
              ),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrarWidget(),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 7,
              borderWidth: 1,
              buttonSize: 35,
              fillColor: Color(0xFFB11A0F),
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
                size: 19,
              ),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArticulosWidget(),
                  ),
                );
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        'https://github.com/ariadnaesparza/imagenes_soriana/blob/main/pi%C3%B1a.jpg?raw=true',
                        width: 350,
                        height: 200,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Text(
                        'Pi??a Gota Miel Kg',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                      child: Text(
                        'Frutas tropicales',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '\$23.50',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(32, 0, 5, 0),
                    child: Text(
                      'Agregar',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFFB4BD00),
                          ),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: Color(0xFFB4BD00),
                    borderRadius: 8,
                    borderWidth: 2,
                    buttonSize: 45,
                    fillColor: Color(0xD5FFFFFF),
                    icon: Icon(
                      Icons.add_shopping_cart,
                      color: Color(0xFFB4BD00),
                      size: 25,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Text(
                          'Selecciona el grado de maduraci??n',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                  ),
                        ),
                      ),
                      Text(
                        'Verde    Medio    Maduro',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                      ),
                      RatingBar.builder(
                        onRatingUpdate: (newValue) =>
                            setState(() => ratingBarValue = newValue),
                        itemBuilder: (context, index) => Icon(
                          Icons.star_outlined,
                          color: Color(0xFFA6B01A),
                        ),
                        direction: Axis.horizontal,
                        initialRating: ratingBarValue ??= 0,
                        unratedColor: Color(0xFF9E9E9E),
                        itemCount: 3,
                        itemPadding: EdgeInsets.fromLTRB(7, 7, 7, 7),
                        itemSize: 25,
                        glowColor: Color(0xFFA6B01A),
                      ),
                      Text(
                        'Descripcion:',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFFD40000),
                            ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(11, 11, 11, 11),
                child: Text(
                  'Convierte a la Pi??a Gota Miel Kg en el ingrediente principal de tu cocina. Ya sea en bebidas, postres, aperitivos o guisados, esta fruta le dar?? un toque de dulzura y acides a tus platillos favoritos.',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VentaWidget(),
                    ),
                  );
                },
                text: 'Regresar',
                icon: Icon(
                  Icons.arrow_back_rounded,
                  size: 15,
                ),
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: Color(0xFFB4BD00),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Color(0xFFB11A0F),
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
