import 'dart:convert';

import '../../dialogs/validation_dialog.dart';
import '../../widgets/context/table.dart';import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../widgets/buttons/add_button.dart';
import '../../widgets/search_bar.dart' as custom;

class EvacueesPage extends StatefulWidget {
  final Map<String, dynamic> data;

  const EvacueesPage({Key? key, required this.data}) : super(key: key);

  @override
  _EvacueesPageState createState() => _EvacueesPageState();
}

class _EvacueesPageState extends State<EvacueesPage> {
  List<Map<String, dynamic>> _allEvacuees = [];
  List<Map<String, dynamic>> _filteredEvacuees = [];
  String? _error;
  final int _itemsPerPage = 10;
  int _currentPage = 0;
  String _searchQuery = "";
  bool _isDirty = false;
  Map<String, dynamic>? _currentEvacuee;

  @override
  void initState() {
    super.initState();
    fetchEvacuees();
  }

  Future<void> fetchEvacuees() async {
    final url = 'http://localhost/BFEPS-BDRRMC-main/BFEPS-BDRRMC-main/api/evacuation/get_household_data.php';

    setState(() {
      _allEvacuees.clear();
      _filteredEvacuees.clear();
    });
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final List<dynamic> responseData = json.decode(response.body);

        responseData.removeWhere(
          (item) =>
              item["id"] == "Household ID" ||
              item["head_family"] == "Name of Family Head",
        );

        setState(() {
          _allEvacuees = responseData.cast<Map<String, dynamic>>();
          _filteredEvacuees = [];
          _error = null;
          _currentPage = 0;
        });
      } else {
        setState(() {
          _error = 'Failed to load data';
        });
      }
    } catch (e) {
      setState(() {
        _error = 'Error: $e';
      });
    }
  }

  void _updateSearchQuery(String query) {
    setState(() {
      _searchQuery = query;
      if (query.isEmpty) {
        _filteredEvacuees = List.from(_allEvacuees);
      } else {
        _filteredEvacuees =
            _allEvacuees.where((evacuee) {
              return evacuee['head_family'] != null &&
                  evacuee['head_family'].toString().toLowerCase().contains(
                    query.toLowerCase(),
                  );
            }).toList();
      }
      _currentPage = 0;
    });
  }

  void _goToPreviousPage() {
    setState(() {
      if (_currentPage > 0) _currentPage--;
    });
  }

  void _goToNextPage() {
    setState(() {
      if ((_currentPage + 1) * _itemsPerPage < _filteredEvacuees.length) {
        _currentPage++;
      }
    });
  }

  List<Map<String, dynamic>> _getPaginatedRecords() {
    final start = _currentPage * _itemsPerPage;
    return _filteredEvacuees.skip(start).take(_itemsPerPage).toList();
  }

  void _markDirty(String value) {
    setState(() {
      _isDirty = true;
    });
  }

  void _deleteHouseholdEvacuee(String id) async {
    ValidationDialog.showDeleteDialog(
      context: context,
      message: 'Are you sure you want to delete this household evacuee?',
      onConfirm: () async {
        Navigator.of(context).pop();
        try {
          final url = Uri.parse(
            'http://localhost/BFEPS-BDRRMC-main/BFEPS-BDRRMC-main/api/evacuation/delete_hhevacuee.php',
          );
          final response = await http.post(url, body: {'id': id});
          if (response.statusCode == 200) {
            var responseData = json.decode(response.body);
            if (responseData['success'] == true) {
              // Refresh evacuees
              fetchEvacuees();
              print('Evacuee deleted successfully');
            } else {
              print('Failed to delete evacuee: ${responseData['message']}');
            }
          } else {
            print('Failed to connect to the server');
          }
        } catch (e) {
          print('Error deleting household evacuee: $e');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Evacuees')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.data['evacuation_centername'] ??
                            'Evacuation Center',
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          color: Color(0xFF4B4B4B),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Zone ${widget.data['zone'] ?? 'N/A'}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        '${widget.data['evacuation_type'] ?? 'N/A'}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '${widget.data['contact_person'] ?? 'N/A'}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        '${widget.data['contact_number'] ?? 'N/A'}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 40),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(child: custom.SearchBar(onSearch: _updateSearchQuery)),
                const SizedBox(width: 16),
                AddButton(
                  label: 'Add Evacuees',
                  onPressed: () => _showEvacueeForm(null),
                ),
              ],
            ),
            const SizedBox(height: 10),
            if (_searchQuery.isNotEmpty)
              SizedBox(
                height: 120,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children:
                            _filteredEvacuees
                                .where((evacuee) {
                                  return evacuee['head_family'] != null &&
                                      evacuee['head_family']
                                          .toString()
                                          .toLowerCase()
                                          .contains(_searchQuery.toLowerCase());
                                })
                                .map((evacuee) {
                                  return ListTile(
                                    title: Text(evacuee['head_family'] ?? ''),
                                    onTap:
                                        () => _selectEvacuee(
                                          evacuee,
                                        ), // Select evacuee
                                  );
                                })
                                .toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'Showing results for: "$_searchQuery"',
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.italic,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 20),
            Expanded(child: _buildIndividualTable()),
            const SizedBox(height: 16),
            _buildEvacueePagination(),
          ],
        ),
      ),
    );
  }

void _selectEvacuee(Map<String, dynamic> evacuee) {
  setState(() {
    _searchQuery = ''; // Clear search bar

    // Add the new evacuee only if it's not already in the list
    if (!_filteredEvacuees.any((e) => e['id'] == evacuee['id'])) {
      _filteredEvacuees.add(evacuee);
    }

    _currentPage = 0; // Reset pagination
  });
}


  Widget _buildIndividualTable() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFCCCCCC)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          _buildTableHeader(),
          Expanded(
            child:
                _getPaginatedRecords().isEmpty
                    ? const Center(
                      child: Text(
                        'No Records available.',
                        style: TextStyle(
                          color: Color(0xFFCBCBCB),
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                    : _buildTableRows(),
          ),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFCCCCCC))),
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // align headers top
        children: [
          _headerCell('HH ID', flex: 2),
          _headerCell('Name of\nFamily Head', flex: 3),
          _headerCell('Infant', subLabel: '> 1 y/o', flex: 2),
          _headerCell('Toddlers', subLabel: '1-3 y/o', flex: 2),
          _headerCell('Preschool', subLabel: '4-5 y/o', flex: 2),
          _headerCell('School Age', subLabel: '6-12 y/o', flex: 2),
          _headerCell('Teen Age', subLabel: '13-19 y/o', flex: 2),
          _headerCell('Adult', subLabel: '20-59 y/o', flex: 2),
          _headerCell('Senior Citizens', subLabel: '<60 and above', flex: 2),
          _headerCell('Lactating\nMothers', flex: 2),
          _headerCell('# of Persons\nper Family', flex: 3),
          _headerCell('Pregnant', flex: 2),
          _headerCell('PWD', flex: 2),
          _headerCell('Solo Parent', flex: 2),
          _headerCell('Actions', flex: 2),
        ],
      ),
    );
  }

  Widget _headerCell(String label, {String? subLabel, required int flex}) {
    return Expanded(
      flex: flex,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Left align and top
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
          if (subLabel != null)
            Text(
              subLabel,
              style: const TextStyle(color: Color(0xFF4B4B4B), fontSize: 9),
            ),
        ],
      ),
    );
  }

  Widget _buildTableRows() {
    final currentPageItems = _getPaginatedRecords();

    if (currentPageItems.isEmpty) {
      return const Center(child: Text('No evacuees found.'));
    }

    return ListView.builder(
      itemCount: currentPageItems.length,
      itemBuilder: (context, index) {
        final evacuee = currentPageItems[index];
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xFFCCCCCC))),
          ),
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.start, // align data cells top
            children: [
              DataCellWidget(value: '${evacuee['id'] ?? ''}', flex: 2),
              DataCellWidget(value: '${evacuee['head_family'] ?? ''}', flex: 3),
              DataCellWidget(value: '${evacuee['infant'] ?? ''}', flex: 2),
              DataCellWidget(value: '${evacuee['toddlers'] ?? ''}', flex: 2),
              DataCellWidget(value: '${evacuee['preschool'] ?? ''}', flex: 2),
              DataCellWidget(value: '${evacuee['school_age'] ?? ''}', flex: 2),
              DataCellWidget(value: '${evacuee['teen_age'] ?? ''}', flex: 2),
              DataCellWidget(value: '${evacuee['adult'] ?? ''}', flex: 2),
              DataCellWidget(
                value: '${evacuee['senior_citizen'] ?? ''}',
                flex: 2,
              ),
              DataCellWidget(
                value: '${evacuee['lactating_mothers'] ?? ''}',
                flex: 2,
              ),
              DataCellWidget(
                value: '${evacuee['total_persons'] ?? ''}',
                flex: 3,
              ),
              DataCellWidget(value: '${evacuee['pregnant'] ?? ''}', flex: 2),
              DataCellWidget(value: '${evacuee['pwd'] ?? ''}', flex: 2),
              DataCellWidget(value: '${evacuee['solo_parent'] ?? ''}', flex: 2),
              // Actions Column
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PopupMenuButton<String>(
                      icon: const Icon(Icons.more_vert),
                      onSelected: (value) {
                        if (value == 'update') {
                          _showEvacueeForm(evacuee);
                        } else if (value == 'delete') {
                          _deleteHouseholdEvacuee(evacuee['id']);
                        }
                      },
                      itemBuilder:
                          (context) => const [
                            PopupMenuItem(
                              value: 'update',
                              child: Text('Update'),
                            ),
                            PopupMenuItem(
                              value: 'delete',
                              child: Text('Delete'),
                            ),
                          ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildEvacueePagination() {
    int totalFiltered = _filteredEvacuees.length;
    int start = totalFiltered == 0 ? 0 : _currentPage * _itemsPerPage + 1;
    int end = start + _itemsPerPage - 1;
    if (end > totalFiltered) end = totalFiltered;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text('$start-$end of $totalFiltered'),
        IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: _goToPreviousPage,
        ),
        IconButton(
          icon: const Icon(Icons.arrow_forward),
          onPressed: _goToNextPage,
        ),
      ],
    );
  }

  void _showEvacueeForm(Map<String, dynamic>? evacuee) {
    _currentEvacuee = evacuee;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String dialogSearchQuery = "";
        List<Map<String, dynamic>> dialogFilteredEvacuees =
            _allEvacuees.where((evacuee) {
              return evacuee['head_family'] != null &&
                  evacuee['head_family'].toString().toLowerCase().contains(
                    dialogSearchQuery.toLowerCase(),
                  );
            }).toList();

        return StatefulBuilder(
          builder: (context, setState) {
            void updateDialogSearchQuery(String query) {
              setState(() {
                dialogSearchQuery = query;
                dialogFilteredEvacuees =
                    _allEvacuees.where((evacuee) {
                      return evacuee['head_family'] != null &&
                          evacuee['head_family']
                              .toString()
                              .toLowerCase()
                              .contains(query.toLowerCase());
                    }).toList();
              });
            }

            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: Colors.white,
              child: SizedBox(
                width: 500,
                height: 250,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'ADD EVACUEES',
                                style: TextStyle(
                                  color: Color(0xFF5576F5),
                                  fontSize: 24,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Center(
                                child: custom.SearchBar(
                                  onSearch: updateDialogSearchQuery,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Expanded(
                          child: Center(
                            child:
                                dialogSearchQuery.isNotEmpty
                                    ? Container(
                                      constraints: BoxConstraints(
                                        maxHeight: 150,
                                      ),
                                      child: ListView.builder(
                                        itemCount:
                                            dialogFilteredEvacuees.length,
                                        itemBuilder: (context, index) {
                                          final evacuee =
                                              dialogFilteredEvacuees[index];
                                          return ListTile(
                                            title: Center(
                                              child: Text(
                                                evacuee['head_family'] ?? '',
                                              ),
                                            ),
                                            onTap: () {
                                              Navigator.of(context).pop();
                                              // Delay setState until after dialog closes
                                              WidgetsBinding.instance
                                                  .addPostFrameCallback((_) {
                                                    _selectEvacuee(evacuee);
                                                  });
                                            },
                                          );
                                        },
                                      ),
                                    )
                                    : Container(),
                          ),
                        ),
                      ],
                    ),
                    _buildCloseButton(),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildCloseButton() {
    return Positioned(
      top: 8,
      right: 8,
      child: IconButton(
        icon: const Icon(Icons.close, color: Color(0xFF9E9E9E)),
        onPressed: () {
          if (_isDirty) {
            // Show discard changes dialog if there are unsaved changes
            ValidationDialog.showDiscardChangesDialog(
              context: context,
              onDiscard: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
            );
          } else {
            Navigator.of(context).pop();
          }
        },
      ),
    );
  }
}