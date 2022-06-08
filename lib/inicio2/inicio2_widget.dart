import '../almacen/almacen_widget.dart';
import '../articulos/articulos_widget.dart';
import '../creditos/creditos_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../inicio/inicio_widget.dart';
import '../registrar/registrar_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Inicio2Widget extends StatefulWidget {
  const Inicio2Widget({Key key}) : super(key: key);

  @override
  _Inicio2WidgetState createState() => _Inicio2WidgetState();
}

class _Inicio2WidgetState extends State<Inicio2Widget> {
  PageController pageViewController;
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
                  builder: (context) => InicioWidget(),
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: Color(0xFFD80D0A),
                        unselectedLabelColor: Color(0xFFB4BD00),
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 11,
                                ),
                        indicatorColor: Color(0xFFD80D0A),
                        tabs: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 6, 0),
                                child: Icon(
                                  Icons.menu_outlined,
                                  size: 20,
                                ),
                              ),
                              Tab(
                                text: 'Departamentos',
                              ),
                            ],
                          ),
                          Tab(
                            text: 'Inicio',
                          ),
                          Tab(
                            text: 'Julio regalado',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: ListView(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  RegistrarWidget(),
                                            ),
                                          );
                                        },
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.fastfood_sharp,
                                            color: Color(0xFFCC0C0C),
                                          ),
                                          title: Text(
                                            'Despensa',
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFCC0C0C),
                                                ),
                                          ),
                                          subtitle: Text(
                                            'Prodctos ',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                ),
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xFF303030),
                                            size: 20,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBtnText,
                                          dense: false,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  RegistrarWidget(),
                                            ),
                                          );
                                        },
                                        child: ListTile(
                                          leading: FaIcon(
                                            FontAwesomeIcons.wineBottle,
                                            color: Color(0xFFCC0C0C),
                                          ),
                                          title: Text(
                                            'Vinos, licores y cervezas',
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFCC0C0C),
                                                ),
                                          ),
                                          subtitle: Text(
                                            'Prodctos ',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                ),
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xFF303030),
                                            size: 20,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBtnText,
                                          dense: false,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  RegistrarWidget(),
                                            ),
                                          );
                                        },
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.phone_android,
                                            color: Color(0xFFCC0C0C),
                                          ),
                                          title: Text(
                                            'Electrónica',
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFCC0C0C),
                                                ),
                                          ),
                                          subtitle: Text(
                                            'Prodctos ',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                ),
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xFF303030),
                                            size: 20,
                                          ),
                                          tileColor: Color(0xFFFFFFFFF),
                                          dense: false,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  RegistrarWidget(),
                                            ),
                                          );
                                        },
                                        child: ListTile(
                                          leading: FaIcon(
                                            FontAwesomeIcons.baby,
                                            color: Color(0xFFCC0C0C),
                                          ),
                                          title: Text(
                                            'Bebés',
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFCC0C0C),
                                                ),
                                          ),
                                          subtitle: Text(
                                            'Prodctos ',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                ),
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xFF303030),
                                            size: 20,
                                          ),
                                          tileColor: Color(0x0FFFFFFF),
                                          dense: false,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  RegistrarWidget(),
                                            ),
                                          );
                                        },
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.medical_services_sharp,
                                            color: Color(0xFFCC0C0C),
                                          ),
                                          title: Text(
                                            'Farmacia',
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFCC0C0C),
                                                ),
                                          ),
                                          subtitle: Text(
                                            'Prodctos ',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                ),
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xFF303030),
                                            size: 20,
                                          ),
                                          tileColor: Colors.white,
                                          dense: false,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  RegistrarWidget(),
                                            ),
                                          );
                                        },
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.house_outlined,
                                            color: Color(0xFFCC0C0C),
                                          ),
                                          title: Text(
                                            'Hogar y electrodomésticos',
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFCC0C0C),
                                                ),
                                          ),
                                          subtitle: Text(
                                            'Prodctos ',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                ),
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xFF303030),
                                            size: 20,
                                          ),
                                          tileColor: Colors.white,
                                          dense: false,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  RegistrarWidget(),
                                            ),
                                          );
                                        },
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.home,
                                            color: Color(0xFFCC0C0C),
                                          ),
                                          title: Text(
                                            'Limpieza del hogar',
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFCC0C0C),
                                                ),
                                          ),
                                          subtitle: Text(
                                            'Prodctos ',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                ),
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xFF303030),
                                            size: 20,
                                          ),
                                          tileColor: Colors.white,
                                          dense: false,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  RegistrarWidget(),
                                            ),
                                          );
                                        },
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.pets,
                                            color: Color(0xFFCC0C0C),
                                          ),
                                          title: Text(
                                            'Mascotas',
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFCC0C0C),
                                                ),
                                          ),
                                          subtitle: Text(
                                            'Prodctos ',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                ),
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xFF303030),
                                            size: 20,
                                          ),
                                          tileColor: Colors.white,
                                          dense: false,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 50),
                                  child: PageView(
                                    controller: pageViewController ??=
                                        PageController(initialPage: 1),
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Stack(
                                        children: [
                                          Image.network(
                                            'https://github.com/ariadnaesparza/imagenes_soriana/blob/main/julreg.jpg?raw=true',
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 150, 0, 0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 0, 20, 0),
                                                    child: Text(
                                                      'Bienvenido a tu tienda en línea Soriana\nBienvenido a Soriana, aquí podrás comprar el súper en línea, además de encontrar un amplio catálogo con los mejores artículos de tecnología, productos para tu hogar, para uso personal y mucho más.\n\nPide el súper a domicilio\nTe invitamos a hacer la despensa en línea con Soriana. Así es, te llevamos los productos más frescos hasta la puerta de tu hogar. Encuentra frutas y verduras, carnes, pescados y mariscos, lácteos, abarrotes, productos de salchichonería, bebidas, vinos y licores, artículos de limpieza y más.\n\nEncuentra lo mejor de la tecnología\nConoce nuestro catálogo de tecnología y compra en línea artículos como pantallas, laptops, computadoras, videojuegos, impresoras, barras de sonido, bocinas bluetooth, teléfonos celulares y más.\n\nEquipa tu hogar con Soriana\nEn Soriana también tenemos todo lo que buscas para armar cada rincón de tu hogar. Contamos con muebles para sala de estar, para salas de entretenimiento, recámaras, baño y cocina. Además, contamos con electrodomésticos y productos de línea blanca de las mejores marcas.\n\nTodo para tu salud y cuidado personal\nEn nuestra farmacia contamos con un catálogo variado de medicamentos y suplementos. Además, tenemos para ti el departamento de cuidado personal, con una gran variedad de productos como fragancias, productos para la piel, artículos de belleza, cosméticos y más.\n\nAseguramos la diversión y entretenimiento\nPara los chicos de todas las edades tenemos una gran variedad de juguetes, desde figuras de acción o muñecas, hasta juegos de mesa y juguetes montables.\n\nAdemás, contamos con artículos deportivos para chicos y grandes. Encuentra desde balones de tus deportes favoritos, hasta tableros de basquetbol, artículos de camping y mucho más.\n\nConoce todos nuestros departamentos, encuentra tus productos favoritos y haz todas tus compras en línea con Soriana.',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        await Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                CreditosWidget(),
                                                          ),
                                                        );
                                                      },
                                                      child: Text(
                                                        'Concluciones y creditos',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFFB11A0F),
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Stack(
                                        children: [
                                          Image.network(
                                            'https://github.com/ariadnaesparza/imagenes_soriana/blob/main/juntos.jpg?raw=true',
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 150, 20, 0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    'Bienvenido a tu tienda en línea Soriana\nBienvenido a Soriana, aquí podrás comprar el súper en línea, además de encontrar un amplio catálogo con los mejores artículos de tecnología, productos para tu hogar, para uso personal y mucho más.\n\nPide el súper a domicilio\nTe invitamos a hacer la despensa en línea con Soriana. Así es, te llevamos los productos más frescos hasta la puerta de tu hogar. Encuentra frutas y verduras, carnes, pescados y mariscos, lácteos, abarrotes, productos de salchichonería, bebidas, vinos y licores, artículos de limpieza y más.\n\nEncuentra lo mejor de la tecnología\nConoce nuestro catálogo de tecnología y compra en línea artículos como pantallas, laptops, computadoras, videojuegos, impresoras, barras de sonido, bocinas bluetooth, teléfonos celulares y más.\n\nEquipa tu hogar con Soriana\nEn Soriana también tenemos todo lo que buscas para armar cada rincón de tu hogar. Contamos con muebles para sala de estar, para salas de entretenimiento, recámaras, baño y cocina. Además, contamos con electrodomésticos y productos de línea blanca de las mejores marcas.\n\nTodo para tu salud y cuidado personal\nEn nuestra farmacia contamos con un catálogo variado de medicamentos y suplementos. Además, tenemos para ti el departamento de cuidado personal, con una gran variedad de productos como fragancias, productos para la piel, artículos de belleza, cosméticos y más.\n\nAseguramos la diversión y entretenimiento\nPara los chicos de todas las edades tenemos una gran variedad de juguetes, desde figuras de acción o muñecas, hasta juegos de mesa y juguetes montables.\n\nAdemás, contamos con artículos deportivos para chicos y grandes. Encuentra desde balones de tus deportes favoritos, hasta tableros de basquetbol, artículos de camping y mucho más.\n\nConoce todos nuestros departamentos, encuentra tus productos favoritos y haz todas tus compras en línea con Soriana.',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 12,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        await Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                CreditosWidget(),
                                                          ),
                                                        );
                                                      },
                                                      child: Text(
                                                        'Concluciones y creditos',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFFB11A0F),
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Stack(
                                        children: [
                                          Image.network(
                                            'https://github.com/ariadnaesparza/imagenes_soriana/blob/main/vaca.jpg?raw=true',
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 150, 0, 0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 0, 20, 0),
                                                    child: Text(
                                                      'Bienvenido a tu tienda en línea Soriana\nBienvenido a Soriana, aquí podrás comprar el súper en línea, además de encontrar un amplio catálogo con los mejores artículos de tecnología, productos para tu hogar, para uso personal y mucho más.\n\nPide el súper a domicilio\nTe invitamos a hacer la despensa en línea con Soriana. Así es, te llevamos los productos más frescos hasta la puerta de tu hogar. Encuentra frutas y verduras, carnes, pescados y mariscos, lácteos, abarrotes, productos de salchichonería, bebidas, vinos y licores, artículos de limpieza y más.\n\nEncuentra lo mejor de la tecnología\nConoce nuestro catálogo de tecnología y compra en línea artículos como pantallas, laptops, computadoras, videojuegos, impresoras, barras de sonido, bocinas bluetooth, teléfonos celulares y más.\n\nEquipa tu hogar con Soriana\nEn Soriana también tenemos todo lo que buscas para armar cada rincón de tu hogar. Contamos con muebles para sala de estar, para salas de entretenimiento, recámaras, baño y cocina. Además, contamos con electrodomésticos y productos de línea blanca de las mejores marcas.\n\nTodo para tu salud y cuidado personal\nEn nuestra farmacia contamos con un catálogo variado de medicamentos y suplementos. Además, tenemos para ti el departamento de cuidado personal, con una gran variedad de productos como fragancias, productos para la piel, artículos de belleza, cosméticos y más.\n\nAseguramos la diversión y entretenimiento\nPara los chicos de todas las edades tenemos una gran variedad de juguetes, desde figuras de acción o muñecas, hasta juegos de mesa y juguetes montables.\n\nAdemás, contamos con artículos deportivos para chicos y grandes. Encuentra desde balones de tus deportes favoritos, hasta tableros de basquetbol, artículos de camping y mucho más.\n\nConoce todos nuestros departamentos, encuentra tus productos favoritos y haz todas tus compras en línea con Soriana.',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                fontSize: 12,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        await Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                CreditosWidget(),
                                                          ),
                                                        );
                                                      },
                                                      child: Text(
                                                        'Concluciones y creditos',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFFB11A0F),
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -0.6),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: SmoothPageIndicator(
                                      controller: pageViewController ??=
                                          PageController(initialPage: 1),
                                      count: 3,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) {
                                        pageViewController.animateToPage(
                                          i,
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      effect: ExpandingDotsEffect(
                                        expansionFactor: 2,
                                        spacing: 8,
                                        radius: 12,
                                        dotWidth: 16,
                                        dotHeight: 14,
                                        dotColor: Color(0xFFB4BD00),
                                        activeDotColor: Color(0xFFB11A0F),
                                        paintStyle: PaintingStyle.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AlmacenWidget(),
                                      ),
                                    );
                                  },
                                  child: Image.network(
                                    'https://image.isu.pub/190718223945-526cb66190c37f63e355cffbd3c0a962/jpg/page_1.jpg',
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Image.network(
                                  'https://promociondescuentos.com/wp-content/uploads/2019/06/folleto-de-ofertas-soriana-julio-regalado-del-21-al-27-de-junio-2019.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
