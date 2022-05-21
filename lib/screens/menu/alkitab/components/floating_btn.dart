import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';

class FloatingBtn extends StatelessWidget {
  const FloatingBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: 65,
              child: FloatingActionButton(
                heroTag: "btnBack",
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: darkColor,
                ),
                backgroundColor: whiteColor,
              ),
            ),
          ),
          SizedBox(
            width: 65,
            child: FloatingActionButton(
              heroTag: "btnFoward",
              shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                ),
              ),
              onPressed: () {},
              child: Icon(
                Icons.arrow_forward_ios,
                color: darkColor,
              ),
              backgroundColor: whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
