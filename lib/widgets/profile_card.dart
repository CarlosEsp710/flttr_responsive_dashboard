import 'package:flutter/material.dart';

import '../constants.dart';
import '../responsive.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: <Widget>[
          Image.asset('assets/images/profile_pic.png', height: 38),
          if (!Responsive.isMobile(context))
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text(
                'John Doe',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}
