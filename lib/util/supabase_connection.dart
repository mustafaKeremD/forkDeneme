Future<List<TableModel>> watchList() async {
  
  final supabase = Supabase.instance.client;
  
  final response = await supabase.from('TableName').select();

  // List<Accountmodel> accountmodel =
  //     response.map((row) => Accountmodel.fromMap(row.toColumnMap())).toList();

  final List<Tablemodel> tableModel =
      response.map((item) => TableModel.fromMap(item)).toList();

  return tableModel;
}


