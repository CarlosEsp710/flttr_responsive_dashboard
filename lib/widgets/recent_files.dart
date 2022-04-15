import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../models/recent_file.dart';

class RecentFiles extends StatefulWidget {
  const RecentFiles({Key? key}) : super(key: key);

  @override
  State<RecentFiles> createState() => _RecentFilesState();
}

class _RecentFilesState extends State<RecentFiles> {
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
        children: <Widget>[
          Text(
            'Recent Files',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              columns: const [
                DataColumn(label: Text('File Name')),
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Size')),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => _recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  DataRow _recentFileDataRow(RecentFile file) {
    return DataRow(
      onLongPress: () {},
      cells: [
        DataCell(
          Row(
            children: [
              SvgPicture.asset(
                file.icon,
                height: 30,
                width: 30,
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                ),
                child: Text(file.title),
              )
            ],
          ),
        ),
        DataCell(Text(file.date)),
        DataCell(Text(file.size)),
      ],
    );
  }
}
