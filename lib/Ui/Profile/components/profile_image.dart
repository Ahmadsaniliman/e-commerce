import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(),
        // shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(60.0),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assests/images/tshirt.png',
            fit: BoxFit.fill,
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.camera,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
