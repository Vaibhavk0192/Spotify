import 'package:flutter/material.dart';
import 'package:spotify/musicplayer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> image = [
    'assests/images/41a0593ec5c6562e838f349aba5ae9ef.jpg',
    'assests/images/43.jpg',
    'assests/images/butter-cover.jpg',
    'assests/images/one.jpg',
    'assests/images/Q7gBkUusiDcIYljQOMX9ow6W.jpg',
    'assests/images/two.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF131213),
        body: Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,

        child: SafeArea(
          child: ListView(
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Recently played",
                        style: const TextStyle(
                          fontFamily: 'gontham2',
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.notifications_none_outlined,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Icon(
                          Icons.history,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Icon(
                          Icons.settings,
                          size: 30,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Card(
                        color: const Color(0xFF2c2b29).withOpacity(0.7),
                        elevation: 20,
                        child: Container(
                          // width: MediaQuery.of(context).size.width*0.5,
                          height:55,
                          decoration: const BoxDecoration(
                            borderRadius: const BorderRadius.all(const Radius.circular(7)),
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: const Radius.circular(7),
                                      bottomLeft: Radius.circular(7)),
                                  child: Image.asset(
                                    'assests/images/two.jpg',
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Ahima',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 12,
                                  fontFamily: 'gontham2',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 7,
                    // ),
                    Expanded(
                      child: Card(
                        color: const Color(0xFF2c2b29).withOpacity(0.7),
                        elevation: 20,
                        child: Container(
                          height: 55,
                          decoration: const BoxDecoration(
                            borderRadius: const BorderRadius.all(const Radius.circular(7)),
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(7),
                                      bottomLeft: Radius.circular(7)),
                                  child: Image.asset(
                                    'assests/images/one.jpg',
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Anihology',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 12,
                                  fontFamily: 'gontham2',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Card(
                        color: const Color(0xFF2c2b29).withOpacity(0.7),
                        elevation: 20,
                        child: Container(
                          // width: MediaQuery.of(context).size.width*0.5,
                          height: 55,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: const Radius.circular(7),
                                      bottomLeft: const Radius.circular(7)),
                                  child: Image.asset(
                                    'assests/images/butter-cover.jpg',
                                    scale: 0.5,
                                    alignment: Alignment.topLeft,
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Butter by BTS',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 12,
                                  fontFamily: 'gontham2',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: const Color(0xFF2c2b29).withOpacity(0.7),
                        elevation: 20,
                        child: Container(
                          height: 55,
                          decoration: const BoxDecoration(
                            borderRadius: const BorderRadius.all(const Radius.circular(7)),
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: const Radius.circular(7),
                                      bottomLeft: const Radius.circular(7)),
                                  child: Image.asset(
                                    'assests/images/Q7gBkUusiDcIYljQOMX9ow6W.jpg',
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Dynamite',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  fontFamily: 'gontham2',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Card(
                        color: const Color(0xFF2c2b29).withOpacity(0.7),
                        elevation: 20,
                        child: Container(
                          // width: MediaQuery.of(context).size.width*0.5,
                          height: 55,
                          decoration: const BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(7)),
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(7),
                                    bottomLeft: Radius.circular(7)),
                                child: Image.asset(
                                  'assests/images/41a0593ec5c6562e838f349aba5ae9ef.jpg',
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Ahima',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  fontFamily: 'gontham2',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: const Color(0xFF2c2b29).withOpacity(0.7),
                        elevation: 20,
                        child: Container(
                          height: 55,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(7),
                                      bottomLeft: Radius.circular(7)),
                                  child: Image.asset(
                                    'assests/images/43.jpg',
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '43',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Jump back in',
                      style: TextStyle(
                        fontFamily: 'gontham2',
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(children: [
                    SongRow_Card(
                        'assests/images/audience-mixtape-cd-cover-art-template-design-8c62ec86ba4f92c86622f45b755c4fb8_screen.jpg',
                        'My Audience'),
                    const SizedBox(
                      width: 10,
                    ),
                    SongRow_Card(
                        'assests/images/Spotify-Cover-Art-with-Text-Aligned-480x480.png',
                        'Smile Album by Vaibhav '),
                    const SizedBox(
                      width: 10,
                    ),
                    SongRow_Card(
                        'assests/images/album-cover-art-template-design-1146376885b7f99e73118d6dcad00c20_screen.jpg',
                        'Ambidient Music'),
                    const SizedBox(
                      width: 10,
                    ),
                    SongRow_Card(
                        'assests/images/images.jpg', 'Album Of Astronaut'),
                    const SizedBox(
                      width: 10,
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Your Favourites',
                      style: const TextStyle(
                        fontFamily: 'gontham2',
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(children: [
                    SongRow_Card(
                        'assests/images/ab67616d0000b273c5545f737b16ad5ee767b62a.jpg',
                        'Kaise Hua'),
                    const SizedBox(
                      width: 10,
                    ),
                    SongRow_Card(
                        'assests/images/8d64e974c73f8cb168958407dc79eb17.jpg',
                        'everyday '),
                    const SizedBox(
                      width: 10,
                    ),
                    SongRow_Card(
                        'assests/images/cb8b98b0aeb733b3af8f4f4d6fe9cb83.jpg',
                        'Study'),
                    const SizedBox(
                      width: 10,
                    ),
                    SongRow_Card(
                        'assests/images/Photo-by-xaviershanley-from-Pexels.jpg',
                        'War paint'
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    ]));
  }

  Widget SongRow_Card(String image, String label) {
    return GestureDetector(
      onTap:(){
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MusicPlayer()));
        });

      },
      child: Container(
          width: 140,
          height: 190,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(
                  '$image',
                ),
                width: 140,
                height: 140,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '$label',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(
                  fontFamily: 'gontham',
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.grey,
                ),
              )
            ],
          )),
    );
  }
}
