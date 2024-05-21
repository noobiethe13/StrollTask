import 'package:flutter/material.dart';

import '../../../core/constants/asset_paths.dart';
import '../../../theme/palette.dart';

class BackgroundComponent extends StatelessWidget {
  const BackgroundComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRect(
          child: Align(
            alignment: Alignment.topCenter,
            heightFactor: 0.78,
            child: Image.asset(
              AssetPaths.mainBackgroundPath,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Positioned(
          top: 60,
          left: 0,
          right: 0,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Stroll Bonfire",
                  style: TextStyle(
                    fontFamily: 'Proxima Nova',
                    fontSize: 38,
                    color: Palette.lightVioletColor,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(3.0, 3.0),
                        blurRadius: 70.0,
                        color: Palette.greyColor,
                      ),
                    ],
                  ),
                ),
                Icon(Icons.arrow_drop_down, color: Palette.lightVioletColor,),
              ],
            ),
          ),
        ),
        const Positioned(
          top: 120,
          left: 0,
          right: 0,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.timer,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
                Text(
                  "22h 00m",
                  style: TextStyle(
                    fontFamily: 'Proxima Nova',
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 16),
                Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
                Text(
                  "103",
                  style: TextStyle(
                    fontFamily: 'Proxima Nova',
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
