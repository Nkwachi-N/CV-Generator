import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CreateCv extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _CreateCvState();

}

class _CreateCvState extends State<CreateCv> {

  static const  popItem = <String>['Delete'];
  static List<PopupMenuItem<String>> _pop  = popItem.map((String val) =>
      PopupMenuItem<String>(
        value: val,
        child: Text(val),
      )).toList();
  String value;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body:
      ListView.builder(
          itemCount: 1,
          itemBuilder: (context,index){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(child: Padding(padding: EdgeInsets.all(20.0),
            child:  TextField(
              autofocus: false,
              decoration: InputDecoration(
                  hintText: "Title"
              ),
            ))
            ),
          SizedBox(height: 10.0,),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Personal Details",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),),
          ),
          Padding(
            padding: EdgeInsets.only(left:10.0,right: 10.0,bottom: 15.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              keyboardType: TextInputType.text,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:10.0,right: 10.0,bottom: 15.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Last Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              keyboardType: TextInputType.text,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:10.0,right: 10.0,bottom: 15.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:10.0,right: 10.0,bottom: 15.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Phone',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              keyboardType: TextInputType.phone,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:10.0,right: 10.0,bottom: 8.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              keyboardType: TextInputType.text,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("Professional Summary",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),),
          ),
          Padding(
            padding: EdgeInsets.only(left:12.0,right: 12.0,bottom: 5.0),
            child: TextField(
              maxLines: null,
              decoration: InputDecoration(
                 hintText: "I am very passionate ..... with skills in",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              keyboardType: TextInputType.multiline,
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left:15.0,bottom: 10.0),
            child: Text("Employment",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),),
          ),
          Padding(
              padding: EdgeInsets.only(left:15.0,bottom: 15.0,right: 15.0),
              child:
              Text("Include your relevant work experience. List your most recent work experience first",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300
                ),)
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 30.0,),
              Icon(Icons.add,
                color: Colors.blue[700],

              ),
              SizedBox(width:3.0),
              Text("Add Employment",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue[700]
                ),),
            ],
          ),
          SizedBox(height:30.0),
          /*Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Container(
                        child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child:GestureDetector(
                                child:Card(
                                    elevation: 5.0,
                                    child:Padding(padding: EdgeInsets.only(left:10.0,top:10.0,bottom: 10.0),
                                      child:Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Container(
                                            child:Image(
                                                image:AssetImage('assets/portfolio.png')),
                                            width: 40.0,
                                            height: 40.0,
                                          ),
                                          SizedBox(
                                            width: 15.0,
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text('My Cv',
                                                  style: TextStyle(
                                                      fontSize: 15.0,
                                                      fontWeight: FontWeight.w500
                                                  )),
                                              SizedBox(height: 5.0),
                                              Text('25 Jun 2020',
                                                  style: TextStyle(
                                                      fontSize: 15.0,
                                                      fontWeight: FontWeight.w300
                                                  )),
                                            ],
                                          ),
                                          Spacer(),
                                          PopupMenuButton(
                                              onSelected: (String val) async {
                                                value = val;
                                              },
                                              itemBuilder:(BuildContext context) =>_pop)
                                        ],
                                      ), )

                                )
                            )
                        )
                    );
                  })),*/
          Padding(
            padding: EdgeInsets.only(left:15.0,bottom: 10.0),
            child: Text("Education",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),),
          ),
          Padding(
              padding: EdgeInsets.only(left:15.0,bottom: 15.0,right: 15.0),
              child:
              Text("Include recent educational achievements.",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300
                ),)
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 30.0,),
              Icon(Icons.add,
                color: Colors.blue[700],

              ),
              SizedBox(width:3.0),
              Text("Add Education",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue[700]
                ),),
            ],
          ),
          SizedBox(height:25.0),
         /* Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Container(
                        child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child:GestureDetector(
                                child:Card(
                                    elevation: 5.0,
                                    child:Padding(padding: EdgeInsets.only(left:10.0,top:10.0,bottom: 10.0),
                                      child:Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Container(
                                            child:Image(
                                                image:AssetImage('assets/portfolio.png')),
                                            width: 40.0,
                                            height: 40.0,
                                          ),
                                          SizedBox(
                                            width: 15.0,
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text('My Cv',
                                                  style: TextStyle(
                                                      fontSize: 15.0,
                                                      fontWeight: FontWeight.w500
                                                  )),
                                              SizedBox(height: 5.0),
                                              Text('25 Jun 2020',
                                                  style: TextStyle(
                                                      fontSize: 15.0,
                                                      fontWeight: FontWeight.w300
                                                  )),
                                            ],
                                          ),
                                          Spacer(),
                                          PopupMenuButton(
                                              onSelected: (String val) async {
                                                value = val;
                                              },
                                              itemBuilder:(BuildContext context) =>_pop)
                                        ],
                                      ), )

                                )
                            )
                        )
                    );
                  })),*/
          Padding(
            padding: EdgeInsets.only(left:15.0,bottom: 15.0),
            child: Text("Websites and Social Links",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),),
          ),
          Padding(
              padding: EdgeInsets.only(left:15.0,bottom: 15.0,right: 15.0),
              child:
              Text("Add links to websites you want hiring managers to see(e.g Linkedln profile,personal website)",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300
                ),)
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 30.0,),
              Icon(Icons.add,
                color: Colors.blue[700],

              ),
              SizedBox(width:3.0),
              Text("Add Link",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue[700]
                ),),
            ],
          ),
         /* Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Container(
                        child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child:GestureDetector(
                                child:Card(
                                    elevation: 5.0,
                                    child:Padding(padding: EdgeInsets.only(left:10.0,top:10.0,bottom: 10.0),
                                      child:Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Container(
                                            child:Image(
                                                image:AssetImage('assets/portfolio.png')),
                                            width: 40.0,
                                            height: 40.0,
                                          ),
                                          SizedBox(
                                            width: 15.0,
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text('My Cv',
                                                  style: TextStyle(
                                                      fontSize: 15.0,
                                                      fontWeight: FontWeight.w500
                                                  )),
                                              SizedBox(height: 5.0),
                                              Text('25 Jun 2020',
                                                  style: TextStyle(
                                                      fontSize: 15.0,
                                                      fontWeight: FontWeight.w300
                                                  )),
                                            ],
                                          ),
                                          Spacer(),
                                          PopupMenuButton(
                                              onSelected: (String val) async {
                                                value = val;
                                              },
                                              itemBuilder:(BuildContext context) =>_pop)
                                        ],
                                      ), )

                                )
                            )
                        )
                    );
                  })),*/
         SizedBox(height: 30.0),
          Padding(
            padding: EdgeInsets.only(left:15.0,bottom: 15.0),
            child: Text("Skills",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 15.0,),
              Icon(Icons.add,
                color: Colors.blue[700],
              ),
              SizedBox(width:3.0),
              Text("Add Skill",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue[700]
                ),),
            ],
          ),
          /*Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Container(
                        child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child:GestureDetector(
                                child:Card(
                                    elevation: 5.0,
                                    child:Padding(padding: EdgeInsets.only(left:10.0,top:10.0,bottom: 10.0),
                                      child:Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Container(
                                            child:Image(
                                                image:AssetImage('assets/portfolio.png')),
                                            width: 40.0,
                                            height: 40.0,
                                          ),
                                          SizedBox(
                                            width: 15.0,
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text('My Cv',
                                                  style: TextStyle(
                                                      fontSize: 15.0,
                                                      fontWeight: FontWeight.w500
                                                  )),
                                            ],
                                          ),
                                          Spacer(),
                                          PopupMenuButton(
                                              onSelected: (String val) async {
                                                value = val;
                                              },
                                              itemBuilder:(BuildContext context) =>_pop)
                                        ],
                                      ), ))
                            )
                        )
                    );
                  })),*/
          SizedBox(height: 50,)
        ],
        );
      })
    );
  }
}