import 'package:flutter/material.dart';

class VolunteerJoin extends StatefulWidget {
  const VolunteerJoin({super.key});

  @override
  State<VolunteerJoin> createState() => _VolunteerJoinState();
}

class _VolunteerJoinState extends State<VolunteerJoin> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Name
          const SizedBox(
            width: 500,
            height: 70,
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Full Name',
                  labelStyle: TextStyle(color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black54,
                    width: 2,
                  ))),
            ),
          ),

          //Email
          const SizedBox(
            width: 500,
            height: 70,
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Email : xyz@gmail.com',
                  labelStyle: TextStyle(color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black54,
                    width: 2,
                  ))),
            ),
          ),

          //Contact
          const SizedBox(
            width: 500,
            height: 70,
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Contact number',
                  labelStyle: TextStyle(color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black54,
                    width: 2,
                  ))),
            ),
          ),

          const SizedBox(
            width: 500,
            height: 100,
            child: TextField(
              //maxLength: 100,
              maxLines: 8,
              decoration: InputDecoration(
                  labelText: 'FeedBack...',
                  labelStyle: TextStyle(color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black54,
                    width: 2,
                  ))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Submit',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                )),
          ),
        ],
      ),
    );
  }
}
