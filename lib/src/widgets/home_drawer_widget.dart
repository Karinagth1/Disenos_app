import 'package:flutter/material.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key, this.indexInDrawer, this.callBackIndex});

  final DrawerIndex? indexInDrawer;
  final Function(DrawerIndex)? callBackIndex;

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  List<DrawerLista>? drawerLista;
  @override
  void initState() {
    setListDrawer();
    super.initState();
  }

  void setListDrawer() {
    drawerLista = <DrawerLista>[
      DrawerLista(
        index: DrawerIndex.HOME,
        leading: const Icon(Icons.home),
        title: 'Home',
      ),
      DrawerLista(
        index: DrawerIndex.Help,
        isAssetsImage: true,
        imageName: 'assets/supportIcon.png',
        title: 'Help',
      ),
      DrawerLista(
        index: DrawerIndex.FeedBack,
        leading: const Icon(Icons.help),
        title: 'Feedback',
      ),
      DrawerLista(
        index: DrawerIndex.Invite,
        leading: const Icon(Icons.group),
        title: 'Invita Amigos',
      ),
      DrawerLista(
        index: DrawerIndex.Share,
        leading: const Icon(Icons.share),
        title: 'Rango de la app',
      ),
      DrawerLista(
        index: DrawerIndex.About,
        leading: const Icon(Icons.info),
        title: 'Acerca de la app',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // var brightness = MediaQuery.of(context).platformBrightness;
    // bool isLightMode = brightness == Brightness.light;
    return Scaffold(
      backgroundColor: const Color(0xff223232),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 120,
                    width: 120,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Color(0xff2F4858),
                            offset: Offset(2.0, 4.0),
                            blurRadius: 8),
                      ],
                    ),
                    child: const ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(60.0)),
                      child: Image(image: AssetImage('assets/userImage.png')),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8, left: 4),
                    child: Text(
                      'Reconocido Actor',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xffB5BABA),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          const Divider(
            height: 1,
            color: Color(0xff223232),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(0.0),
              itemCount: drawerLista?.length,
              itemBuilder: (context, index) {
                return inkell(drawerLista![index]);
              },
            ),
          ),
          const Divider(
            height: 1,
            color: Color(0xff223232),
          ),
          const Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  'Sign Out',
                  style: TextStyle(
                    fontFamily: 'WorkSans',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.deepPurpleAccent,
                  ),
                  textAlign: TextAlign.left,
                ),
                trailing: Icon(
                  Icons.power_settings_new,
                  color: Colors.deepOrange,
                ),
                // onTap: () => onTapped(),
              ),
/*               SizedBox(
                height: MediaQuery.of(,
              ) */
            ],
          ),
        ],
      ),
    );
  }

  void onTapped() {
    print('Doing Something...'); // Print to console.
  }

  Widget inkell(DrawerLista dataList) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.blueGrey,
        highlightColor: Colors.transparent,
        onTap: () {
          navigationtoScreen(dataList.index!);
        },
        child: Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 6.0,
                    height: 46.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                  ),
                  dataList.isAssetsImage
                      ? SizedBox(
                          width: 24,
                          height: 24,
                          child: Image.asset(dataList.imageName,
                              color: widget.indexInDrawer == dataList.index
                                  ? Colors.amber
                                  : Colors.cyan),
                        )
                      : Icon(dataList.leading?.icon,
                          color: widget.indexInDrawer == dataList.index
                              ? Colors.blue
                              : Colors.cyan),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                  ),
                  Text(
                    dataList.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: widget.indexInDrawer == dataList.index
                          ? Colors.black
                          : Colors.cyan,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            widget.indexInDrawer == dataList.index
                ? Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.75 - 64,
                      height: 46,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(28),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(28),
                        ),
                      ),
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }

  Future<void> navigationtoScreen(DrawerIndex indexScren) async {
    widget.callBackIndex!(indexScren);
  }
}

enum DrawerIndex {
  HOME,
  FeedBack,
  Help,
  Share,
  About,
  Invite,
  Testing,
}

class DrawerLista {
  DrawerLista({
    this.isAssetsImage = false,
    this.title = '',
    this.leading,
    this.index,
    this.imageName = '',
  });

  String title;
  Icon? leading;
  bool isAssetsImage;
  String imageName;
  DrawerIndex? index;
}





/* 
      appBar: AppBar(
        title: const Text('Drawer'),
        backgroundColor: const Color(0xff223232),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xff879192),
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            CircleAvatar(
              radius: 70,
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(60.0)),
                  child: Image(image: AssetImage('assets/userImage.png'))),
            ),
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff879192),
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.headset_mic_outlined),
              title: Text('Help'),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Feedback'),
            ),
          ],
        ),
      ),
    );
  }
} */

