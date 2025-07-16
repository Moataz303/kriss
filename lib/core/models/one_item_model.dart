class ItemModel {
  int? itemCode;
  String? itemName;
  String? itemLatinName;
  int? qty;
  int? price;
  int? total;
  String? image;

  ItemModel({
    this.itemCode,
    this.itemName,
    this.itemLatinName,
    this.qty,
    this.price,
    this.total,
    this.image,
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      itemCode: json['itemCode'],
      itemName: json['itemName'],
      itemLatinName: json['itemLatinName'],
      qty: json['qty'],
      price: json['price'],
      total: json['total'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'itemCode': itemCode,
      'itemName': itemName,
      'itemLatinName': itemLatinName,
      'qty': qty,
      'price': price,
      'total': total,
      'image': image,
    };
  }
}
