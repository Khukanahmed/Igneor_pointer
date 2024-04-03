import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Serve_kotiyen extends StatefulWidget {
  Serve_kotiyen({
    super.key,
  });

  @override
  State<Serve_kotiyen> createState() => _Serve_kotiyenState();
}

class _Serve_kotiyenState extends State<Serve_kotiyen> {
  final TextEditingController kotiyen_type1 = TextEditingController(text: '');
  //final _formKey = GlobalKey<FormState>();

  // @override
  // void initState() {
  //   super.initState();
  //   kotiyen_type1.text = "";
  // }

  final division_list = [
    'ঢাকা',
    'খুলনা',
    'বরিশাল',
    'চট্রগ্রাম',
    'সিলেট',
    'ময়মনসিংহ'
  ];
  final district_list = [
    'ঢাকা',
    'কেরানীগঞ্জ',
    'দোহার',
    'মানিকগঞ্জ',
    'কিশোরগঞ্জ',
    'মুন্সিগঞ্জ',
    'শরীয়তপুর',
    'ফরিদপুর',
    'গাজীপুর'
  ];
  final upozila_list = [
    'কোতোয়ালি',
    'মধুখালী',
    'বোয়ালমারী',
    'আলফাডাঙ্গা',
    'নগরকান্দা',
    'ভাঙা',
    'সদরপুর',
    'চর ভদ্রাসন',
    'গাজীপুর'
  ];
  final kotiyen_list = [
    'বি আর এস',
    'বি এস',
    'সি এস',
    'আরএস ',
    'এস এ',
    'দিয়ারা',
    'পেটি'
  ];

  final moja_list = [
    '1-দরিকৃষ্ণপুর',
    '2-ভাষাণচর',
    '3-কৃষ্ণপুর',
    '4-ঠেঙ্গামারী ',
    '5-নয়াকান্দি',
    '6-লখারকান্দি',
    '7-রামচন্দ্রপুর',
    '8-মাঝকান্দি'
  ];

  final kotiyen_type_list = [
    '1448/1 - মালিক দং আক্তার প্রামানিকপিং আব্',
    '1482 - মালিক দং গোলাম মোস্তফা দুলাল খাঁ...',
    '1495 - মালিক দং রজব আলী সেকপিং ফয়েজ উদ্...',
    '1497 - মালিক দং রতন সেকমাজেদ সেক',
    '1550 - মালিক দং রহিমা খাতুনজং কাশেম ফকি...',
    '1550 - মালিক দং রহিমা খাতুনজং আবু তাহের...'
  ];

  String? divistion;
  String? district;
  String? Upozila;
  String? kotiyen;
  String? moja;
  String? kotiyen_type;

  bool ignorings = false;
  bool IgnoringDistruct = false;
  bool IgnoringUpzila = false;
  bool IgnoringMoja = false;
  bool IgnoringKotiyan = false;
  bool IgnoringKotiyan_type = false;
  bool IgnoringDistructT = true;
  bool IgnoringUpzilaT = true;
  bool IgnoringMojaT = true;
  bool IgnoringKotiyanT = true;
  bool IgnoringKotiyan_typeT = true;

  void setIgnoring(
    bool newValue,
  ) {
    setState(() {
      ignorings = newValue;
    });
  }

  void setIgnoringDistruct(
    bool newValue,
  ) {
    setState(() {
      IgnoringDistruct = newValue;
      //IgnoringDistructT = newValue;
    });
  }

  void setIgnoringUpzila(
    bool newValue,
  ) {
    setState(() {
      IgnoringUpzila = newValue;
    });
  }

  void setIgnoringMoja(
    bool newValue,
  ) {
    setState(() {
      IgnoringMoja = newValue;
    });
  }

  void setIgnoring_kotiyen(
    bool newValue,
  ) {
    setState(() {
      IgnoringKotiyan = newValue;
    });
  }

  void setIgnoring_kotiyen_type(
    bool newValue,
  ) {
    setState(() {
      IgnoringKotiyan_type = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.green,
          ),
          title: Text("সার্ভে খতিয়ান"),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "বিভাগ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Stack(alignment: Alignment.centerRight, children: [
                    Column(
                      children: [
                        IgnorePointer(
                          ignoring: ignorings,
                          child: InkWell(
                              child: Container(
                                width: double.infinity,
                                height: 55,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: divistion == null
                                        ? Border.all(color: Colors.black38)
                                        : Border.all(color: Colors.green),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Text(divistion ?? 'সিলেক্ট করুন ',
                                      style: divistion == null
                                          ? TextStyle(
                                              fontSize: 15,
                                              color: Colors.black38)
                                          : TextStyle(
                                              fontSize: 15,
                                              color: Colors.green)),
                                ),
                              ),
                              onTap: () {
                                setState(
                                  () {
                                    //  setIgnoring(
                                    //   !ignorings);
                                    showModalBottomSheet(
                                        isScrollControlled: true,
                                        context: context,
                                        builder: (context) {
                                          return Scaffold(
                                            appBar: AppBar(
                                              toolbarHeight: 100,
                                              leadingWidth: 100,
                                              backgroundColor: Colors.green,
                                              leading: Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 30),
                                                  child: TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                      'বাতিল',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )),
                                              title: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 30),
                                                child: Text(
                                                  'বিভাগ',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              centerTitle: true,
                                            ),
                                            body: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                  width: double.infinity,
                                                  child: ListView.builder(
                                                      itemCount:
                                                          division_list.length,
                                                      itemBuilder: (_, index) {
                                                        return Column(
                                                          children: [
                                                            ListTile(
                                                              title: Text(
                                                                division_list[
                                                                    index],
                                                              ),
                                                              onTap: () {
                                                                divistion =
                                                                    division_list[
                                                                        index];
                                                                setState(() {
                                                                  setIgnoring(
                                                                      !ignorings);
                                                                  divistion = divistion =
                                                                      division_list[
                                                                          index];
                                                                });
                                                                //   print(divistion);

                                                                Navigator.pop(
                                                                  context,
                                                                );
                                                              },
                                                            ),
                                                            Divider()
                                                          ],
                                                        );
                                                      })),
                                            ),
                                          );
                                        });
                                  },
                                );
                              }),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        child: divistion == null
                            ? Icon(Icons.arrow_forward_ios_rounded)
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    setIgnoring(!ignorings);

                                    divistion = null;
                                    //  setIgnoringDistruct(IgnoringDistruct);
                                    district = null;

                                    // setIgnoringUpzila(!IgnoringUpzila);
                                    // Upozila = null;
                                    // setIgnoringMoja(!IgnoringMoja);
                                    // moja = null;
                                    // setIgnoring_kotiyen_type(
                                    //     !IgnoringKotiyan_type);
                                    // kotiyen_type = null;
                                    // setIgnoring_kotiyen(!IgnoringKotiyan);
                                    // kotiyen = null;
                                  });
                                },
                                icon: Icon(
                                  Icons.cancel_outlined,
                                  color: Colors.green,
                                ),
                              ),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "জেলা",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Stack(alignment: Alignment.centerRight, children: [
                    Column(children: [
                      IgnorePointer(
                        ignoring: IgnoringDistructT =
                            divistion == null || IgnoringDistruct,
                        child: InkWell(
                          child: Container(
                            width: double.infinity,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: district == null
                                    ? Border.all(color: Colors.black38)
                                    : Border.all(color: Colors.green),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(district ?? 'সিলেক্ট করুন ',
                                      style: district == null
                                          ? TextStyle(
                                              fontSize: 15,
                                              color: Colors.black38)
                                          : TextStyle(
                                              fontSize: 15,
                                              color: Colors.green)),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            showModalBottomSheet(
                                isScrollControlled: true,
                                //useSafeArea: true,
                                context: context,
                                builder: (context) {
                                  return Scaffold(
                                    appBar: AppBar(
                                      toolbarHeight: 100,
                                      // flexibleSpace:,
                                      backgroundColor: Colors.green,
                                      leadingWidth: 100,
                                      leading: Padding(
                                          padding: EdgeInsets.only(top: 30),
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              'বাতিল',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )),
                                      title: Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: Text(
                                          'জেলা',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      centerTitle: true,
                                    ),
                                    body: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          width: double.infinity,
                                          child: ListView.builder(
                                              itemCount: district_list.length,
                                              itemBuilder: (_, index) {
                                                return Column(
                                                  children: [
                                                    ListTile(
                                                      title: Text(
                                                        district_list[index],
                                                      ),
                                                      onTap: () {
                                                        district =
                                                            district_list[
                                                                index];
                                                        setState(() {
                                                          setIgnoringDistruct(
                                                              !IgnoringDistruct);
                                                          district = district =
                                                              district_list[
                                                                  index];
                                                        });
                                                        // print(district);

                                                        Navigator.pop(
                                                          context,
                                                        );
                                                      },
                                                    ),
                                                    Divider()
                                                  ],
                                                );
                                              })),
                                    ),
                                  );
                                });
                          },
                        ),
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        child: district == null
                            ? Icon(Icons.arrow_forward_ios_rounded)
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    setIgnoringDistruct(!IgnoringDistruct);
                                    district = '';

                                    // Upozila == null;
                                    // setIgnoringUpzila(!IgnoringUpzila);
                                    // Upozila = null;
                                    // setIgnoringMoja(!IgnoringMoja);
                                    // moja = null;
                                    // setIgnoring_kotiyen_type(
                                    //     !IgnoringKotiyan_type);
                                    // kotiyen_type = null;
                                    // setIgnoring_kotiyen(!IgnoringKotiyan);
                                    // kotiyen = null;
                                  });
                                },
                                icon: Icon(
                                  Icons.cancel_outlined,
                                  color: Colors.green,
                                ),
                              ),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "উপজেলা",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Stack(alignment: Alignment.centerRight, children: [
                    Column(
                      children: [
                        IgnorePointer(
                          ignoring: IgnoringDistructT =
                              district == null || IgnoringUpzila,
                          child: InkWell(
                            child: Container(
                              width: double.infinity,
                              height: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Upozila == null
                                      ? Border.all(color: Colors.black38)
                                      : Border.all(color: Colors.green),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(Upozila ?? 'সিলেক্ট করুন ',
                                        style: Upozila == null
                                            ? TextStyle(
                                                fontSize: 15,
                                                color: Colors.black38)
                                            : TextStyle(
                                                fontSize: 15,
                                                color: Colors.green)),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return Scaffold(
                                      appBar: AppBar(
                                        backgroundColor: Colors.green,
                                        leadingWidth: 100,
                                        leading: SizedBox(
                                          width: 200,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 16, top: 30),
                                            child: TextButton(
                                                onPressed: () {
                                                  Navigator.pop(
                                                    context,
                                                  );
                                                },
                                                child: Text(
                                                  'বাতিল',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )),
                                          ),
                                        ),
                                        toolbarHeight: 100,
                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 30),
                                          child: Text(
                                            'উপজেলা',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        centerTitle: true,
                                      ),
                                      body: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            width: double.infinity,
                                            child: ListView.builder(
                                                itemCount: upozila_list.length,
                                                itemBuilder: (_, index) {
                                                  return Column(
                                                    children: [
                                                      ListTile(
                                                        title: Text(
                                                          upozila_list[index],
                                                        ),
                                                        onTap: () {
                                                          Upozila =
                                                              upozila_list[
                                                                  index];
                                                          setState(() {
                                                            Upozila =
                                                                upozila_list[
                                                                    index];
                                                            setIgnoringUpzila(
                                                                !IgnoringUpzila);
                                                          });
                                                          //   print(Upozila);

                                                          Navigator.pop(
                                                            context,
                                                          );
                                                        },
                                                      ),
                                                      Divider()
                                                    ],
                                                  );
                                                })),
                                      ),
                                    );
                                  });
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        child: Upozila == null
                            ? Icon(Icons.arrow_forward_ios_rounded)
                            : IconButton(
                                padding: EdgeInsets.zero,
                                //disabledColor: Colors.white,
                                onPressed: () {
                                  setState(() {
                                    setIgnoringUpzila(!IgnoringUpzila);
                                    Upozila = null;
                                    // setIgnoringMoja(!IgnoringMoja);
                                    // moja = null;
                                    // setIgnoring_kotiyen_type(
                                    //     !IgnoringKotiyan_type);
                                    // kotiyen_type = null;
                                    // setIgnoring_kotiyen(!IgnoringKotiyan);
                                    // kotiyen = null;
                                  });
                                },
                                icon: Icon(
                                  Icons.cancel_outlined,
                                  color: Colors.green,
                                )),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "খতিয়ানের ধরণ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Stack(alignment: Alignment.centerRight, children: [
                    Column(
                      children: [
                        IgnorePointer(
                          ignoring: IgnoringMojaT =
                              Upozila == null || IgnoringKotiyan,
                          child: InkWell(
                            child: Container(
                              width: double.infinity,
                              height: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: kotiyen == null
                                      ? Border.all(color: Colors.black38)
                                      : Border.all(color: Colors.green),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(kotiyen ?? 'সিলেক্ট করুন ',
                                        style: kotiyen == null
                                            ? TextStyle(
                                                fontSize: 15,
                                                color: Colors.black38)
                                            : TextStyle(
                                                fontSize: 15,
                                                color: Colors.green)),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return Scaffold(
                                      appBar: AppBar(
                                        toolbarHeight: 100,
                                        leadingWidth: 100,
                                        backgroundColor: Colors.green,
                                        leading: Padding(
                                            padding: EdgeInsets.only(top: 30),
                                            child: TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                'বাতিল',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            )),
                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 30),
                                          child: Text(
                                            'খতিয়ানের ধরণ',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        centerTitle: true,
                                      ),
                                      body: Container(
                                          width: double.infinity,
                                          child: ListView.builder(
                                              itemCount: kotiyen_list.length,
                                              itemBuilder: (_, index) {
                                                return ListTile(
                                                  title: Text(
                                                    kotiyen_list[index],
                                                  ),
                                                  onTap: () {
                                                    kotiyen =
                                                        kotiyen_list[index];
                                                    setState(() {
                                                      kotiyen =
                                                          kotiyen_list[index];
                                                      setIgnoring_kotiyen(
                                                          !IgnoringKotiyan);
                                                    });
                                                    //  print(Upozila);

                                                    Navigator.pop(
                                                      context,
                                                    );
                                                  },
                                                );
                                              })),
                                    );
                                  });
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        child: kotiyen == null
                            ? Icon(Icons.arrow_forward_ios_rounded)
                            : IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  setState(() {
                                    setIgnoring_kotiyen(!IgnoringKotiyan);
                                    kotiyen = null;
                                    // setIgnoringMoja(!IgnoringMoja);
                                    // moja = null;
                                    // setIgnoring_kotiyen_type(
                                    //     !IgnoringKotiyan_type);
                                    // kotiyen_type = null;
                                  });
                                },
                                icon: Icon(
                                  Icons.cancel_outlined,
                                  color: Colors.green,
                                )),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "মৌজা",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Stack(alignment: Alignment.centerRight, children: [
                    Column(
                      children: [
                        IgnorePointer(
                          ignoring: IgnoringKotiyan_typeT =
                              kotiyen == null || IgnoringMoja,
                          child: InkWell(
                            child: Container(
                              width: double.infinity,
                              height: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: moja == null
                                      ? Border.all(color: Colors.black38)
                                      : Border.all(color: Colors.green),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(moja ?? 'সিলেক্ট করুন ',
                                        style: moja == null
                                            ? TextStyle(
                                                fontSize: 15,
                                                color: Colors.black38)
                                            : TextStyle(
                                                fontSize: 15,
                                                color: Colors.green)),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return Scaffold(
                                      appBar: AppBar(
                                        toolbarHeight: 100,
                                        leadingWidth: 100,
                                        backgroundColor: Colors.green,
                                        leading: Padding(
                                            padding: EdgeInsets.only(top: 30),
                                            child: TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                'বাতিল',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            )),
                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 30),
                                          child: Text(
                                            'মৌজা',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        centerTitle: true,
                                      ),
                                      body: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            width: double.infinity,
                                            child: ListView.builder(
                                                itemCount: moja_list.length,
                                                itemBuilder: (_, index) {
                                                  return Column(
                                                    children: [
                                                      ListTile(
                                                        title: Text(
                                                          moja_list[index],
                                                        ),
                                                        onTap: () {
                                                          moja =
                                                              moja_list[index];
                                                          setState(() {
                                                            moja = moja_list[
                                                                index];
                                                            setIgnoringMoja(
                                                                !IgnoringMoja);
                                                          });
                                                          //  print(moja);

                                                          Navigator.pop(
                                                            context,
                                                          );
                                                        },
                                                      ),
                                                      Divider()
                                                    ],
                                                  );
                                                })),
                                      ),
                                    );
                                  });
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        child: moja == null
                            ? Icon(Icons.arrow_forward_ios_rounded)
                            : IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  setState(() {
                                    setIgnoringMoja(!IgnoringMoja);
                                    moja = null;

                                    // setIgnoring_kotiyen_type(
                                    //     !IgnoringKotiyan_type);
                                    // kotiyen_type = null;
                                  });
                                },
                                icon: Icon(
                                  Icons.cancel_outlined,
                                  color: Colors.green,
                                )),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "খতিয়ানের তালিকা",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Stack(alignment: Alignment.centerRight, children: [
                    Column(
                      children: [
                        IgnorePointer(
                          ignoring: IgnoringKotiyan_typeT =
                              moja == null || IgnoringKotiyan_type,
                          child: InkWell(
                            child: Container(
                              width: double.infinity,
                              height: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: kotiyen_type == null
                                      ? Border.all(color: Colors.black38)
                                      : Border.all(color: Colors.green),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(kotiyen_type ?? 'সিলেক্ট করুন ',
                                        style: kotiyen_type == null
                                            ? TextStyle(
                                                fontSize: 15,
                                                color: Colors.black38)
                                            : TextStyle(
                                                fontSize: 15,
                                                color: Colors.green)),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return Scaffold(
                                      appBar: AppBar(
                                        toolbarHeight: 100,
                                        leadingWidth: 100,
                                        backgroundColor: Colors.green,
                                        leading: Padding(
                                            padding: EdgeInsets.only(top: 30),
                                            child: TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                'বাতিল',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            )),
                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 30),
                                          child: Text(
                                            'খতিয়ানের তালিকা',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        centerTitle: true,
                                      ),
                                      body: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: double.infinity,
                                              child: ListView.builder(
                                                  itemCount:
                                                      kotiyen_type_list.length,
                                                  itemBuilder: (_, index) {
                                                    return Column(
                                                      children: [
                                                        ListTile(
                                                          title: Text(
                                                            kotiyen_type_list[
                                                                index],
                                                          ),
                                                          onTap: () {
                                                            kotiyen_type =
                                                                kotiyen_type_list[
                                                                    index];
                                                            setState(() {
                                                              kotiyen_type =
                                                                  kotiyen_type_list[
                                                                      index];
                                                              setIgnoring_kotiyen_type(
                                                                  !IgnoringKotiyan_type);
                                                            });
                                                            //  print(kotiyen_type);

                                                            Navigator.pop(
                                                              context,
                                                            );
                                                          },
                                                        ),
                                                        Divider(),
                                                      ],
                                                    );
                                                  })),
                                        ),
                                      ),
                                    );
                                  });
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        child: kotiyen_type == null
                            ? Icon(Icons.arrow_forward_ios_rounded)
                            : IconButton(
                                padding: EdgeInsets.zero,
                                disabledColor: Colors.white,
                                onPressed: () {
                                  setState(() {
                                    setIgnoring_kotiyen_type(
                                        !IgnoringKotiyan_type);
                                    kotiyen_type = null;
                                  });
                                },
                                icon: Icon(Icons.cancel_outlined),
                                color: Colors.green,
                              ),
                      ),
                    )
                  ]),
                  SizedBox(height: 150),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (context) => Padding(
                                          padding:
                                              MediaQuery.of(context).viewInsets,
                                          child: Container(
                                            height: 400,
                                            width: double.maxFinite,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "অধিকতর অনুসন্ধান",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text("মালিকের নাম",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500)),
                                                  TextFormField(
                                                    decoration: InputDecoration(
                                                        hintText:
                                                            'মালিকের নাম লিখুন ',
                                                        border: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(
                                                                        10)))),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Text(
                                                    "দাগ নং",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  TextFormField(
                                                    decoration: InputDecoration(
                                                        hintText:
                                                            'দাগ নং লিখুন ',
                                                        border: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(
                                                                        10)))),
                                                  ),
                                                  SizedBox(
                                                    height: 40,
                                                  ),
                                                  Container(
                                                    //height: 20,
                                                    // color: Colors.blue,
                                                    width: double.maxFinite,
                                                    child: TextButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        'অনুসন্ধান',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      style: ButtonStyle(
                                                          backgroundColor:
                                                              MaterialStateProperty
                                                                  .all<Color>(
                                                                      Colors
                                                                          .green),
                                                          shape: MaterialStateProperty.all<
                                                                  RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ))),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ));
                              },
                              child: SizedBox(
                                width: 140,
                                height: 35,
                                child: Center(
                                  child: Text(
                                    'অধিকতর অনুসন্ধান ',
                                    style: TextStyle(
                                        color: Color(0xff00A773),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                side: BorderSide(color: Colors.green),
                                borderRadius: BorderRadius.circular(8.0),
                              )))),
                          SizedBox(
                            width: 170,
                            child: Column(
                              children: [
                                IgnorePointer(
                                  ignoring: divistion?.isEmpty != false ||
                                      district?.isEmpty != false ||
                                      Upozila?.isEmpty != false ||
                                      kotiyen?.isEmpty != false ||
                                      moja?.isEmpty != false ||
                                      kotiyen_type?.isEmpty != false,
                                  child: TextButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             kotiyen_next_bottom()));
                                    },
                                    child: SizedBox(
                                      width: 200,
                                      height: 35,
                                      child: Center(
                                        child: Text(
                                          'পরবর্তী',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    style: district == null ||
                                            kotiyen == null ||
                                            Upozila == null ||
                                            divistion == null ||
                                            moja == null ||
                                            kotiyen_type == null
                                        ? ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.black26))
                                        : ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.green),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ))),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                  )
                ])
              ])),
        ));
  }
}
