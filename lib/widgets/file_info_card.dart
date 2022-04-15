import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../models/my_files.dart';

class FieldInfoCard extends StatelessWidget {
  final CloudStorageInfo cloudStorageInfo;

  const FieldInfoCard({
    Key? key,
    required this.cloudStorageInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(defaultPadding * 0.75),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: cloudStorageInfo.color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  cloudStorageInfo.svgSrc,
                  color: cloudStorageInfo.color,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(Icons.more_vert, color: Colors.white54),
              ),
            ],
          ),
          Text(
            cloudStorageInfo.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          _ProgressLine(cloudStorageInfo: cloudStorageInfo),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '${cloudStorageInfo.numOfFields} Files',
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white54),
              ),
              Text(
                cloudStorageInfo.totalStorage,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white54),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ProgressLine extends StatelessWidget {
  const _ProgressLine({
    Key? key,
    required this.cloudStorageInfo,
  }) : super(key: key);

  final CloudStorageInfo cloudStorageInfo;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: cloudStorageInfo.color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth * (cloudStorageInfo.percentage / 100),
              height: 5,
              decoration: BoxDecoration(
                color: cloudStorageInfo.color,
                borderRadius: BorderRadius.circular(10),
              ),
            );
          },
        ),
      ],
    );
  }
}
