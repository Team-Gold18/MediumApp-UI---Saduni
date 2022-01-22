import 'package:flutter/material.dart';

final ImageURL = [
  'https://media.istockphoto.com/photos/cute-artificial-intelligence-robot-with-headset-picture-id1283257467?b=1&k=20&m=1283257467&s=170667a&w=0&h=5NF5-7_2H4LOfeuKxWnGVdyZkV5uq8qeVxK-tfA7NL8=',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU27eY4Yz6PNwAyCj6EIPaUOVF1x8aC-m-hg&usqp=CAU',
  'https://blog.hdwallsource.com/wp-content/uploads/2016/02/retro-3d-robot-wallpaper-49975-51660-hd-wallpapers-1024x614.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3cKzjCFnIZMhD14h4S7nGQyGJExRFWaSa1g&usqp=CAU',
  'https://www.personalrobots.biz/wp-content/uploads/2019/02/alpha_mini_UBTECH.jpg',
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Home",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                  height: 200.0,
                  child: const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.black54,
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://assets-global.website-files.com/5ec7dad2e6f6295a9e2a23dd/5edfa7c6f978e75372dc332e_profilephoto1.jpeg',
                      ),

                      // radius: 50.0,
                    ),
                  ),
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(0.0)),
              ListTile(
                title: const Text('Home',
                    style: TextStyle(fontSize: 15.0, color: Colors.grey)),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                  // Update the state of the app.
                  // ...
                },
              ),
              const Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: const Text('About',
                    style: TextStyle(fontSize: 15.0, color: Colors.grey)),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              const Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: const Text('Reading List',
                    style: TextStyle(fontSize: 15.0, color: Colors.grey)),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              const Divider(
                color: Colors.grey,
              ),
            ],
          ),
        ),
        body: const ImageGalery(),
      ),
    );
  }
}

class ImageGalery extends StatelessWidget {
  const ImageGalery({Key? key}) : super(key: key);

  get children => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Robotics",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey[800]),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Image(
              image: NetworkImage(ImageURL.elementAt(0)),
              width: 200.0,
              height: 200.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Text(
          //   "Robotics ",
          //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
          // ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                " Robotics is an interdisciplinary branch of computer science and engineering. Robotics involves design, construction, operation, and use of robots. The goal of robotics is to design machines that can help and assist humans. Robotics integrates fields of mechanical engineering, electrical engineering, information engineering, mechatronics, electronics, bioengineering, computer engineering, control engineering, software engineering, mathematics, etc.Robotics develops machines that can substitute for humans and replicate human actions. Robots can be used in many situations for many purposes."),
          ),
          // InkWell(
          //   child: Text("See more..."),
          //   onTap: () {
          //     final url = "https://en.wikipedia.org/wiki/Robotics";
          //   },
          // ),
          Divider(
            color: Colors.grey[200],
            height: 20,
            thickness: 1,
          ),
          Container(
            child: Image(
              image: NetworkImage(ImageURL.elementAt(1)),
              width: 200.0,
              height: 200.0,
            ),
          ),
          Divider(
            color: Colors.grey[200],
            height: 20,
            thickness: 1,
          ),
          Container(
            child: Image(
              image: NetworkImage(ImageURL.elementAt(2)),
              width: 250.0,
              height: 250.0,
            ),
          ),
          Divider(
            color: Colors.grey[200],
            height: 20,
            thickness: 1,
          ),
          Container(
            child: Image(
              image: NetworkImage(ImageURL.elementAt(3)),
              width: 250.0,
              height: 250.0,
            ),
          ),
          Divider(
            color: Colors.grey[200],
            height: 20,
            thickness: 1,
          ),
          Container(
            child: Image(
              image: NetworkImage(ImageURL.elementAt(4)),
              width: 300.0,
              height: 300.0,
            ),
          ),
          Divider(
            color: Colors.grey[200],
            height: 20,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
