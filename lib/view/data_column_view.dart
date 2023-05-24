import 'package:batch_30a/model/Student.dart';
import 'package:flutter/material.dart';

class DataTableView extends StatefulWidget {
  const DataTableView({Key? key}) : super(key: key);

  @override
  State<DataTableView> createState() => _DataTableViewState();
}

class _DataTableViewState extends State<DataTableView> {
  List<Student> lstStudent = [
    Student(name: "Prashant", rollNo: "20"),
    Student(name: "Roz", rollNo: "10")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Table"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: DataTable(
          border: TableBorder.all(),
          columns: const [
            DataColumn(
              label: Text(
                "Name",
                textAlign: TextAlign.center,
              ),
            ),
            DataColumn(
              label: Text(
                "Roll no",
                textAlign: TextAlign.center,
              ),
            ),
            DataColumn(
              label: Text(
                "Action",
                textAlign: TextAlign.center,
              ),
            ),
          ],
          rows: [
            for (Student student in lstStudent)
              DataRow(cells: [
                DataCell(Center(child: Text(student.name))),
                DataCell(Center(child: Text(student.rollNo))),
                DataCell(
                  Center(
                    child: Wrap(
                      children: [
                        IconButton(
                          onPressed: () {
                            // Handle edit button pressed
                          },
                          icon: const Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text("Delete?"),
                                  content: Text(
                                      "Are you sure you want to delete ${student.name}?"),
                                  actions: [
                                    TextButton(
                                      child: const Text("No"),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    TextButton(
                                      child: const Text("Yes"),
                                      onPressed: () {
                                        setState(() {
                                          lstStudent.remove(student);
                                        });
                                        // Handle delete button pressed
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
          ],
        ),
      ),
    );
  }
}
