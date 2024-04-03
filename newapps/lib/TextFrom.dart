// Create the state for the RadioListTile example
import 'package:flutter/material.dart';



class RadioListTileExample extends StatefulWidget {
  @override
  _RadioListTileExampleState createState() => _RadioListTileExampleState();
}

class _RadioListTileExampleState extends State<RadioListTileExample> {
// Create a variable to store the selected value

  final TextEditingController dateInput = TextEditingController(text: '');
  final TextEditingController dateInput2 = TextEditingController(text: '');
  final _formKey = GlobalKey<FormState>();

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
  bool ignorings = false;
  bool IgnoringDistruct = false;
  void setIgnoring(
    bool newValue1,
  ) {
    setState(() {
      ignorings = newValue1;
    });
  }

  void setIgnoringDistruct2(
    bool newValue2,
  ) {
    setState(() {
      IgnoringDistruct = newValue2;
    });
  }

  void clearTextField() {
    dateInput.clear();
  }

  void clearTextField2() {
    dateInput2.clear();
  }

  @override
  void initState() {
    super.initState();
    dateInput.text = "";
    dateInput2.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Mode'), // Set the title of the app bar
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(children: [
            Stack(alignment: Alignment.centerRight, children: [
              IgnorePointer(
                ignoring: ignorings,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  readOnly: true,
                  controller: dateInput,
                  decoration: InputDecoration(
                    //suffixIcon: Icon(Icons.access_alarm_rounded??Icons.account_balance),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    hintText: 'সিলেক্ট করুন',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1)),
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
                                  backgroundColor: Green_color,
                                  leading: Padding(
                                      padding: EdgeInsets.only(top: 30),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'বাতিল',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                  title: Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Text(
                                      'বিভাগ',
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
                                          itemCount: division_list.length,
                                          itemBuilder: (_, index) {
                                            return Column(
                                              children: [
                                                ListTile(
                                                  title: Text(
                                                    division_list[index],
                                                  ),
                                                  onTap: () {
                                                    dateInput.text =
                                                        division_list[index];
                                                    setState(() {
                                                      dateInput.text = dateInput
                                                              .text =
                                                          division_list[index];

                                                      setIgnoring(!ignorings);
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
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'জাতীয় পরিচয়পত্রের নাম লিখুন';
                    }
                    return null;
                  },
                ),
              ),
              dateInput.text == ''
                  ? Icon(Icons.arrow_back)
                  : IconButton(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.center,
                      onPressed: () {
                        setState(() {
                          clearTextField();
                          clearTextField2();
                          setIgnoring(!ignorings);
                         // setIgnoringDistruct2(!IgnoringDistruct);
                        });
                      },
                      icon: Icon(Icons.cancel))
            ]),
            Stack(alignment: Alignment.centerRight, children: [
              IgnorePointer(
                ignoring: IgnoringDistruct,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  readOnly: true,
                  controller: dateInput2,
                  decoration: InputDecoration(
                    //suffixIcon: Icon(Icons.access_alarm_rounded??Icons.account_balance),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    hintText: 'সিলেক্ট করুন',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1)),
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
                                  backgroundColor: Green_color,
                                  leading: Padding(
                                      padding: EdgeInsets.only(top: 30),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'বাতিল',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                  title: Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Text(
                                      'বিভাগ',
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
                                                    dateInput2.text =
                                                        district_list[index];
                                                    setState(() {
                                                      dateInput2
                                                          .text = dateInput2
                                                              .text =
                                                          district_list[index];
                                                      setIgnoring(
                                                          !IgnoringDistruct);
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
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'জাতীয় পরিচয়পত্রের নাম লিখুন';
                    }
                    return null;
                  },
                ),
              ),
              dateInput2.text == ''
                  ? Icon(Icons.arrow_back)
                  : IconButton(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.center,
                      onPressed: () {
                        setState(() {});
                        clearTextField2();
                         setIgnoringDistruct2(!IgnoringDistruct);
                      },
                      icon: Icon(Icons.cancel))
            ]),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    _formKey.currentState!.validate();
                  },
                  child: Text("Click")),
            )
          ]),
        ),
      ),
    );
  }
}
