import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Facebook",
            style: TextStyle(
                fontSize: 25,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold),
          ),
          actions: const [
            CircleAvatar(
              radius: 20,
              backgroundColor: Color.fromARGB(255, 201, 198, 197),
              child: Icon(
                Icons.add,
                size: 25,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: Color.fromARGB(255, 201, 198, 197),
              child: Icon(
                Icons.search,
                size: 25,
                weight: 200,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color.fromARGB(255, 201, 198, 197),
                child: Icon(
                  Icons.messenger,
                  size: 25,
                  weight: 10,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.home,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.group),
                  ),
                  Tab(
                    icon: Icon(Icons.video_call),
                  ),
                  Tab(
                    icon: Icon(Icons.notifications),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?cs=srgb&dl=pexels-justin-shaifer-1222271.jpg&fm=jpg"),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 38,
                        width: MediaQuery.of(context).size.width / 1.50,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: "What`s on your mind?"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8, left: 8),
                      child: Icon(
                        Icons.image_rounded,
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Card(
                        elevation: 2,
                        child: Container(
                          height: 215,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Container(
                                  height: 150,
                                  width: MediaQuery.of(context).size.width,
                                  child: Image.network(
                                    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 130,
                                left: 40,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                      radius: 17,
                                      backgroundColor: Colors.blueAccent,
                                      child: Icon(
                                        Icons.add,
                                        size: 30,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                              Positioned(
                                top: 170,
                                left: 40,
                                child: Text(
                                  "Create \n Story",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //// 2nd //
                    ///
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Card(
                        elevation: 2,
                        child: Container(
                          height: 215,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 240, 239, 239)),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1474552226712-ac0f0961a954?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 8,
                                child: Text(
                                  "Anish Kunwar",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 10,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueAccent,
                                  radius: 18,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundImage: NetworkImage(
                                      "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    ////
                    ///
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Card(
                        elevation: 2,
                        child: Container(
                          height: 215,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 240, 239, 239)),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1474447976065-67d23accb1e3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=685&q=80",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 8,
                                child: Text(
                                  "Yashraj Luitel",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 10,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueAccent,
                                  radius: 18,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundImage: NetworkImage(
                                      "https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=612x612&w=0&k=20&c=QjebAlXBgee05B3rcLDAtOaMtmdLjtZ5Yg9IJoiy-VY=",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    ///
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Card(
                        elevation: 2,
                        child: Container(
                          height: 215,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 240, 239, 239)),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 8,
                                child: Text(
                                  "Dinesh Katwal",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 10,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueAccent,
                                  radius: 18,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundImage: NetworkImage(
                                      "https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/profile-photos-4.jpg",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    ////

                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Card(
                        elevation: 2,
                        child: Container(
                          height: 215,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 240, 239, 239)),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1497316730643-415fac54a2af?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 8,
                                child: Text(
                                  "Aashish Sigdel",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 10,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueAccent,
                                  radius: 18,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundImage: NetworkImage(
                                      "https://images.unsplash.com/photo-1497316730643-415fac54a2af?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ////

                    ///
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                thickness: 7,
              ),
              Card(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  // height: 350,
                  width: MediaQuery.of(context).size.width,

                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://img.freepik.com/free-photo/portrait-handsome-man-with-dark-hairstyle-bristle-toothy-smile-dressed-white-sweatshirt-feels-very-glad-poses-indoor-pleased-european-guy-being-good-mood-smiles-positively-emotions-concept_273609-61405.jpg"),
                        ),
                        title: Text(
                          "Dinoj Poudel",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              "June 12 at 9:15 PM. ",
                              style: TextStyle(fontSize: 13),
                            ),
                            Image.network(
                                "https://static.xx.fbcdn.net/rsrc.php/v3/y5/r/qop9rFQ_Ys1.png"),
                          ],
                        ),
                        // trailing: Row(
                        //   mainAxisSize: MainAxisSize.min,
                        //   children: [
                        //     Icon(Icons.ac_unit),
                        //     Icon(Icons.abc),
                        //   ],
                        // ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          "https://www.artinstitutes.edu/~/media/ai/main/images/publications/blog/onlinephotonov/photographyphoto.ashx?modified=20181123034155&la=en&hash=061F51B0825AEC249CED44DB5E32432D3FEA05C2",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 7,
              ),
              Card(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  // height: 350,
                  width: MediaQuery.of(context).size.width,

                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://img.freepik.com/free-photo/portrait-handsome-man-with-dark-hairstyle-bristle-toothy-smile-dressed-white-sweatshirt-feels-very-glad-poses-indoor-pleased-european-guy-being-good-mood-smiles-positively-emotions-concept_273609-61405.jpg"),
                        ),
                        title: Text(
                          "Keshav Dahal",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              "June 14 at 9:00 PM. ",
                              style: TextStyle(fontSize: 13),
                            ),
                            Image.network(
                                "https://static.xx.fbcdn.net/rsrc.php/v3/y5/r/qop9rFQ_Ys1.png"),
                          ],
                        ),
                        // trailing: Row(
                        //   mainAxisSize: MainAxisSize.min,
                        //   children: [
                        //     Icon(Icons.ac_unit),
                        //     Icon(Icons.abc),
                        //   ],
                        // ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/6/61/Pokhara-valley-nepal.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 7,
              )
            ],
          ),
        ),
      ),
    );
  }
}
