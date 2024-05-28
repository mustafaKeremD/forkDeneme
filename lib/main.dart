import "./util/dbconnection.dart";

void main() async {
 
  try {
    // Connect to the database
    await PostgresDbConnection.executeQueryWithParams('SELECT 1', []);

    // Connection successful
    print('Connected to the database!');
  } catch (e) {
    // Connection failed
    print('Failed to connect to the database: $e');
  }
}