import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:new_project/Provider/Firebase/AppFirebase.dart';
import 'package:new_project/Screen/ServiceLog.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ServiceFormScreen extends StatefulWidget {
  final int categoryId;

  ServiceFormScreen({
    Key key,
    this.categoryId,
  }) : super(key: key);

  @override
  _ServiceFormScreenState createState() => _ServiceFormScreenState();
}

class _ServiceFormScreenState extends State<ServiceFormScreen> {
  String location, fullname, emailId, mobileNumber, date, comment;

  final _form = GlobalKey<FormState>();

  void _saveForm(BuildContext context) {
    final isValid = _form.currentState.validate();
    if (!isValid) {
      return;
    }
    _form.currentState.save();
    // print("printing the widget.id ${widget.id}");
    Provider.of<Appfirebase>(context, listen: false).pushRequest(
      categpryId: widget.categoryId,
      location: this.location,
      fullName: this.fullname,
      emailId: this.emailId,
      mobileNumber: this.mobileNumber,
      date: this.date,
      comment: this.comment,
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 220, 1),
      body: Card(
        color: Color.fromRGBO(57, 62, 70, 1),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: SingleChildScrollView(
            child: Form(
              key: _form,
              child: Center(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Your Location / Address",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan),
                        ),
                      ),
                      maxLines: 2,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter Your Location";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        this.location = value.toString();
                      },
                      textCapitalization: TextCapitalization.words,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Ful Name",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan),
                        ),
                      ),
                      textCapitalization: TextCapitalization.words,
                      // style: TextStyle(fontSize: 20),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter Full Name";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        this.fullname = value.toString();
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email ID",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan),
                        ),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter Your Email ID";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        this.emailId = value.toString();
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Mobile Number",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan),
                        ),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter Your Mobile Number";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        this.mobileNumber = value.toString();
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Select Date",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan),
                        ),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Select Date";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        this.date = value.toString();
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Comment",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan),
                        ),
                      ),
                      maxLines: 3,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter Comment";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        this.comment = value.toString();
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      child: RaisedButton(
                        elevation: 5,
                        color: Color.fromRGBO(0, 173, 181, 1),
                        onPressed: () {
                          _saveForm(context);
                          // Scaffold.of(context).showSnackBar(
                          //   SnackBar(duration: Duration(seconds: 3),
                          //     content: Text("Sending Message"),
                          //   ),
                          // );
                          Fluttertoast.showToast(
                              msg: 'The Service has been Requested',
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.black,
                              textColor: Colors.white);
                          Navigator.pop(context);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) {
                                return ServiceLog();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "Submit",
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
