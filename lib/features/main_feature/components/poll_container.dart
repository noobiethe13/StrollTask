import 'package:flutter/material.dart';
import 'package:strolltask/core/constants/asset_paths.dart';
import 'package:strolltask/theme/palette.dart';

class PollContainer extends StatefulWidget {
  const PollContainer({super.key});

  @override
  State<PollContainer> createState() => _PollContainerState();
}

class _PollContainerState extends State<PollContainer> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      "The peace in the early mornings",
      "The magical golden hours",
      "Wind-down time after dinners",
      "The serenity past midnight"
    ];

    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(AssetPaths.profilePicPath),
                radius: 30,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),
                    Text(
                      'Angelina, 28',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Proxima Nova',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'What is your favourite time of the day?',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Proxima Nova',
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.visible, // This wraps the text
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Center(
            child: Text(
              "'Mine is definitely the peace in the morning.'",
              style: TextStyle(
                fontFamily: 'Proxima Nova',
                fontSize: 14,
                color: Colors.grey
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Flexible(
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 3,
              padding: EdgeInsets.zero,
              children: List.generate(items.length, (index) {
                bool isSelected = selectedIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Palette.greyColor,
                      borderRadius: BorderRadius.circular(16.0),
                      border: isSelected
                          ? Border.all(color: Palette.violetColor, width: 2.0)
                          : null,
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: isSelected ? Palette.violetColor : Palette.greyColor,
                            child: Text(
                              String.fromCharCode(65 + index),
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'Proxima Nova',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            items[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 20,),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pick your option',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Proxima Nova',
                      ),
                    ),
                    Text(
                      'See who has similar mind',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Proxima Nova',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(12),
                        backgroundColor: Colors.transparent,
                        side: const BorderSide(color: Palette.violetColor, width: 2),
                      ),
                      child: const Icon(Icons.mic_rounded, color: Palette.violetColor, size: 35,),
                    ),
                    SizedBox(width: 5,),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(12),
                        backgroundColor: Palette.violetColor,
                      ),
                      child: const Icon(Icons.arrow_forward, color: Colors.black, size: 35,),
                    ),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}