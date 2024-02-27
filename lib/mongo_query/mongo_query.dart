import 'package:mongo_dart/mongo_dart.dart';

var products = [];
Future<void> connectToMongoDB() async {
  var db = await Db.create(
      "mongodb+srv://prem-prakash:mtcauk5yTK7WMKN1@indimoda.sybritb.mongodb.net/Indi-Moda-development");
  try {
    await db.open();
    // print('Connected to MongoDB Atlas');

    var coll = db.collection('product_details');
    products = await coll.find(where.eq("company", "Dharohar")).toList();
    // products = await coll.find().toList();
  } finally {
    db.close();
    // print('Connection closed');
  }
  // print(products);
}

// void main() async {
//   await connectToMongoDB();
// }
