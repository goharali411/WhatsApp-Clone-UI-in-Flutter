import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            centerTitle: false,

            title: const Text('Whatsapp'),
            bottom: const TabBar(
                tabs: [
                  Tab(
                    child: Icon(Icons.camera_alt_outlined, color: Colors.white,),
                  ),
                  Tab(
                    child: Text('Chats', style: TextStyle(color: Colors.white),),
                  ),
                  Tab(
                    child: Text('Status', style: TextStyle(color: Colors.white),),
                  ),
                  Tab(
                    child:Text('Calls', style: TextStyle(color: Colors.white),),
                  ),

                ]
            ),
            actions:  [
              const Icon(Icons.search),
              const SizedBox(width: 20),
              PopupMenuButton(
                icon: Icon(Icons.more_horiz),
                  itemBuilder: (context,) => [
                    const PopupMenuItem(
                      value: 1,
                        child: Text('New Groups'),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text('Settings'),
                    ),
                    const PopupMenuItem(
                      value: 3,
                      child: Text('Logout'),
                    ),
                  ]

              ),
              
            ],
          ),
          body: TabBarView(
            children: [
              const Text('Camera'),
              ListView.builder(
                itemCount: 30,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                      title: Text('John Wick'),
                      subtitle: Text('Where is my Dog?'),
                      trailing: Text('20:23 PM'),
                    );
                  }
              ),
              ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index){
                    if(index == 0){
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('New Updates'),
                            ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                            
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 3,
                            
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage('https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=600'),
                            
                                ),
                              ),
                              title: Text('John Wick'),
                              subtitle: Text('11:30 AM'),
                              // trailing: Text('20:23 PM'),
                            ),
                          ],
                        );
                      }
                    else{
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,

                            border: Border.all(
                              color: Colors.green,
                              width: 3,

                            ),
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=600'),

                          ),
                        ),
                        title: Text('John Wick'),
                        subtitle: Text('11:30 AM'),
                        // trailing: Text('20:23 PM'),
                      );
                    }
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,

                          border: Border.all(
                            color: Colors.green,
                            width: 3,

                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=600'),

                        ),
                      ),
                      title: Text('John Wick'),
                      subtitle: Text('11:30 AM'),
                      // trailing: Text('20:23 PM'),
                    );
                  }
              ),
              ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                      title: Text('John Wick'),
                      subtitle: Text(index /2 == 0 ? 'You missed call' : 'Call time is 12:03'),
                      trailing: Icon(index /2 == 0 ? Icons.phone : Icons.video_call),
                    );
                  }
              ),


            ],
          ),
        ),);
  }
}
