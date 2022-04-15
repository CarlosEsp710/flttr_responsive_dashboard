import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/my_files.dart';
import '../responsive.dart';
import '../widgets/file_info_card.dart';

class MyFields extends StatelessWidget {
  const MyFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'My Files',
              style: Theme.of(context).textTheme.headline6,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical:
                      defaultPadding / (Responsive.isMobile(context) ? 2 : 1.5),
                ),
              ),
              icon: const Icon(Icons.add),
              label: const Text('Add New'),
            ),
          ],
        ),
        const SizedBox(height: defaultPadding),
        Responsive(
          desktop: FileInfoGridView(
            childAspectRatio: _size.width <= 1400 ? 1.1 : 1.4,
          ),
          tablet: const FileInfoGridView(
            crossAxisCount: 2,
            childAspectRatio: 1.9,
          ),
          mobile: FileInfoGridView(
            crossAxisCount: _size.width <= 650 ? 1 : 2,
            childAspectRatio: _size.width <= 650 ? 1.5 : 1.7,
          ),
        ),
      ],
    );
  }
}

class FileInfoGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;

  const FileInfoGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: demoMyFields.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => FieldInfoCard(
        cloudStorageInfo: demoMyFields[index],
      ),
    );
  }
}
