import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';

class FindIntrustorScreen extends StatefulWidget {
  const FindIntrustorScreen({super.key});

  @override
  State<FindIntrustorScreen> createState() => _FindIntrustorScreenState();
}

class _FindIntrustorScreenState extends State<FindIntrustorScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Find a intrustor"),
        backgroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Automatically finds for instructors",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                          backgroundColor: MaterialStatePropertyAll(
                              Theme.of(context).primaryColor),
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10))),
                      onPressed: () {
                        context.go("/makequestion/findintrustor/answer");
                      },
                      child: const Text(
                        "Find",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "Intrustors Suggestions",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Color.fromARGB(64, 158, 158, 158),
                    ),
                    child: TabBar.secondary(
                        controller: _tabController,
                        indicator: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12))),
                        unselectedLabelColor: Colors.black,
                        labelColor: Colors.white,
                        tabs: const [
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Suggestions",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Following",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  )),
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Row(
                      children: [Text("All"), Icon(Icons.filter_list)],
                    ),
                  ),
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () =>
                          context.go("/makequestion/findintrustor/tutor"),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/imgs/user.png",
                            height: 60,
                            width: 60,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Long vu",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            width: 1,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                border: Border.all()),
                                          ),
                                          const Text("23 tuoi"),
                                        ],
                                      )
                                    ],
                                  ),
                                  RatingBarIndicator(
                                    itemBuilder: (context, index) => const Icon(
                                        Icons.star,
                                        color: Colors.orange),
                                    rating: 5,
                                    itemSize: 24,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/imgs/user.png",
                          height: 60,
                          width: 60,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Long vu",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          width: 1,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              border: Border.all()),
                                        ),
                                        const Text("23 tuoi"),
                                      ],
                                    )
                                  ],
                                ),
                                RatingBarIndicator(
                                  itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Colors.orange),
                                  rating: 5,
                                  itemSize: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/imgs/user.png",
                          height: 60,
                          width: 60,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Long vu",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          width: 1,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              border: Border.all()),
                                        ),
                                        const Text("23 tuoi"),
                                      ],
                                    )
                                  ],
                                ),
                                RatingBarIndicator(
                                  itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Colors.orange),
                                  rating: 5,
                                  itemSize: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
