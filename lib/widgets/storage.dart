import 'package:flutter/material.dart';

import 'storage_card.dart';

class Storage extends StatelessWidget {
  const Storage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      StorageCard(
        svgSrc: "assets/icons/Documents.svg",
        title: "Documents Files",
        amountOfFiles: "1.3GB",
        numOfFiles: 1328,
      ),
      StorageCard(
        svgSrc: "assets/icons/media.svg",
        title: "Media Files",
        amountOfFiles: "15.3GB",
        numOfFiles: 1328,
      ),
      StorageCard(
        svgSrc: "assets/icons/folder.svg",
        title: "Other Files",
        amountOfFiles: "1.3GB",
        numOfFiles: 1328,
      ),
      StorageCard(
        svgSrc: "assets/icons/unknown.svg",
        title: "Unknown",
        amountOfFiles: "1.3GB",
        numOfFiles: 140,
      ),
    ]);
  }
}
