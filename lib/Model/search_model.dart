// To parse this JSON data, do
//
//     final dataSearch = dataSearchFromJson(jsonString);

import 'dart:convert';

class NewDataSearch {
  NewDataSearch({
    this.location,
    this.name,
    this.description,
    this.thumbnail,
    this.tags,
    this.price,
    this.isNego,
    this.estimatedDayWork,
    this.isRemove,
    this.idCategory,
    this.category,
    this.ownerServiceItem,
    this.idOwnerServiceItem,
    this.createdAt,
    this.updatedAt,
    this.idService,
    this.v,
    this.pin,
  });

  GpsClass? location;
  String? name;
  String? description;
  List<Thumbnail>? thumbnail;
  List<String>? tags;
  int? price;
  bool? isNego;
  int? estimatedDayWork;
  bool? isRemove;
  int? idCategory;
  String? category;
  OwnerServiceItem? ownerServiceItem;
  String? idOwnerServiceItem;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? idService;
  int? v;
  Pin? pin;

  NewDataSearch copyWith({
    GpsClass? location,
    String? name,
    String? description,
    List<Thumbnail>? thumbnail,
    List<String>? tags,
    int? price,
    bool? isNego,
    int? estimatedDayWork,
    bool? isRemove,
    int? idCategory,
    String? category,
    OwnerServiceItem? ownerServiceItem,
    String? idOwnerServiceItem,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? idService,
    int? v,
    Pin? pin,
  }) =>
      NewDataSearch(
        location: location ?? this.location,
        name: name ?? this.name,
        description: description ?? this.description,
        thumbnail: thumbnail ?? this.thumbnail,
        tags: tags ?? this.tags,
        price: price ?? this.price,
        isNego: isNego ?? this.isNego,
        estimatedDayWork: estimatedDayWork ?? this.estimatedDayWork,
        isRemove: isRemove ?? this.isRemove,
        idCategory: idCategory ?? this.idCategory,
        category: category ?? this.category,
        ownerServiceItem: ownerServiceItem ?? this.ownerServiceItem,
        idOwnerServiceItem: idOwnerServiceItem ?? this.idOwnerServiceItem,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        idService: idService ?? this.idService,
        v: v ?? this.v,
        pin: pin ?? this.pin,
      );

  factory NewDataSearch.fromRawJson(String str) => NewDataSearch.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NewDataSearch.fromJson(Map<String, dynamic> json) => NewDataSearch(
    location: json["location"] == null ? null : GpsClass.fromJson(json["location"]),
    name: json["name"] == null ? null : json["name"],
    description: json["description"] == null ? null : json["description"],
    thumbnail: json["thumbnail"] == null ? null : List<Thumbnail>.from(json["thumbnail"].map((x) => Thumbnail.fromJson(x))),
    tags: json["tags"] == null ? null : List<String>.from(json["tags"].map((x) => x)),
    price: json["price"] == null ? null : json["price"],
    isNego: json["isNego"] == null ? null : json["isNego"],
    estimatedDayWork: json["estimatedDayWork"] == null ? null : json["estimatedDayWork"],
    isRemove: json["isRemove"] == null ? null : json["isRemove"],
    idCategory: json["idCategory"] == null ? null : json["idCategory"],
    category: json["category"] == null ? null : json["category"],
    ownerServiceItem: json["ownerServiceItem"] == null ? null : OwnerServiceItem.fromJson(json["ownerServiceItem"]),
    idOwnerServiceItem: json["idOwnerServiceItem"] == null ? null : json["idOwnerServiceItem"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    idService: json["idService"] == null ? null : json["idService"],
    v: json["__v"] == null ? null : json["__v"],
    pin: json["pin"] == null ? null : Pin.fromJson(json["pin"]),
  );

  Map<String, dynamic> toJson() => {
    "location": location == null ? null : location?.toJson(),
    "name": name == null ? null : name,
    "description": description == null ? null : description,
    "thumbnail": thumbnail == null ? null : List<dynamic>.from(thumbnail!.map((x) => x.toJson())),
    "tags": tags == null ? null : List<dynamic>.from(tags!.map((x) => x)),
    "price": price == null ? null : price,
    "isNego": isNego == null ? null : isNego,
    "estimatedDayWork": estimatedDayWork == null ? null : estimatedDayWork,
    "isRemove": isRemove == null ? null : isRemove,
    "idCategory": idCategory == null ? null : idCategory,
    "category": category == null ? null : category,
    "ownerServiceItem": ownerServiceItem == null ? null : ownerServiceItem?.toJson(),
    "idOwnerServiceItem": idOwnerServiceItem == null ? null : idOwnerServiceItem,
    "createdAt": createdAt == null ? null : createdAt?.toIso8601String(),
    "updatedAt": updatedAt == null ? null : updatedAt?.toIso8601String(),
    "idService": idService == null ? null : idService,
    "__v": v == null ? null : v,
    "pin": pin == null ? null : pin?.toJson(),
  };
}

class GpsClass {
  GpsClass({
    this.type,
    this.coordinates,
  });

  String? type;
  List<double>? coordinates;

  GpsClass copyWith({
    String? type,
    List<double>? coordinates,
  }) =>
      GpsClass(
        type: type ?? this.type,
        coordinates: coordinates ?? this.coordinates,
      );

  factory GpsClass.fromRawJson(String str) => GpsClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GpsClass.fromJson(Map<String, dynamic> json) => GpsClass(
    type: json["type"] == null ? null : json["type"],
    coordinates: json["coordinates"] == null ? null : List<double>.from(json["coordinates"].map((x) => x.toDouble())),
  );

  Map<String, dynamic> toJson() => {
    "type": type == null ? null : type,
    "coordinates": coordinates == null ? null : List<dynamic>.from(coordinates!.map((x) => x)),
  };
}

class OwnerServiceItem {
  OwnerServiceItem({
    this.id,
    this.gps,
    this.nama,
    this.email,
    this.rating,
  });

  String? id;
  GpsClass? gps;
  String? nama;
  String? email;
  int? rating;

  OwnerServiceItem copyWith({
    String? id,
    GpsClass? gps,
    String? nama,
    String? email,
    int? rating,
  }) =>
      OwnerServiceItem(
        id: id ?? this.id,
        gps: gps ?? this.gps,
        nama: nama ?? this.nama,
        email: email ?? this.email,
        rating: rating ?? this.rating,
      );

  factory OwnerServiceItem.fromRawJson(String str) => OwnerServiceItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OwnerServiceItem.fromJson(Map<String, dynamic> json) => OwnerServiceItem(
    id: json["_id"] == null ? null : json["_id"],
    gps: json["gps"] == null ? null : GpsClass.fromJson(json["gps"]),
    nama: json["nama"] == null ? null : json["nama"],
    email: json["email"] == null ? null : json["email"],
    rating: json["rating"] == null ? null : json["rating"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id == null ? null : id,
    "gps": gps == null ? null : gps?.toJson(),
    "nama": nama == null ? null : nama,
    "email": email == null ? null : email,
    "rating": rating == null ? null : rating,
  };
}

class Pin {
  Pin({
    this.location,
  });

  PinLocation? location;

  Pin copyWith({
    PinLocation? location,
  }) =>
      Pin(
        location: location ?? this.location,
      );

  factory Pin.fromRawJson(String str) => Pin.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pin.fromJson(Map<String, dynamic> json) => Pin(
    location: json["location"] == null ? null : PinLocation.fromJson(json["location"]),
  );

  Map<String, dynamic> toJson() => {
    "location": location == null ? null : location?.toJson(),
  };
}

class PinLocation {
  PinLocation({
    this.lon,
    this.lat,
  });

  double? lon;
  double? lat;

  PinLocation copyWith({
    double? lon,
    double? lat,
  }) =>
      PinLocation(
        lon: lon ?? this.lon,
        lat: lat ?? this.lat,
      );

  factory PinLocation.fromRawJson(String str) => PinLocation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PinLocation.fromJson(Map<String, dynamic> json) => PinLocation(
    lon: json["lon"] == null ? null : json["lon"].toDouble(),
    lat: json["lat"] == null ? null : json["lat"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "lon": lon == null ? null : lon,
    "lat": lat == null ? null : lat,
  };
}

class Thumbnail {
  Thumbnail({
    this.fieldname,
    this.originalname,
    this.encoding,
    this.mimetype,
    this.destination,
    this.filename,
    this.path,
    this.size,
  });

  String? fieldname;
  String? originalname;
  String? encoding;
  String? mimetype;
  String? destination;
  String? filename;
  String? path;
  int? size;

  Thumbnail copyWith({
    String? fieldname,
    String? originalname,
    String? encoding,
    String? mimetype,
    String? destination,
    String? filename,
    String? path,
    int? size,
  }) =>
      Thumbnail(
        fieldname: fieldname ?? this.fieldname,
        originalname: originalname ?? this.originalname,
        encoding: encoding ?? this.encoding,
        mimetype: mimetype ?? this.mimetype,
        destination: destination ?? this.destination,
        filename: filename ?? this.filename,
        path: path ?? this.path,
        size: size ?? this.size,
      );

  factory Thumbnail.fromRawJson(String str) => Thumbnail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
    fieldname: json["fieldname"] == null ? null : json["fieldname"],
    originalname: json["originalname"] == null ? null : json["originalname"],
    encoding: json["encoding"] == null ? null : json["encoding"],
    mimetype: json["mimetype"] == null ? null : json["mimetype"],
    destination: json["destination"] == null ? null : json["destination"],
    filename: json["filename"] == null ? null : json["filename"],
    path: json["path"] == null ? null : json["path"],
    size: json["size"] == null ? null : json["size"],
  );

  Map<String, dynamic> toJson() => {
    "fieldname": fieldname == null ? null : fieldname,
    "originalname": originalname == null ? null : originalname,
    "encoding": encoding == null ? null : encoding,
    "mimetype": mimetype == null ? null : mimetype,
    "destination": destination == null ? null : destination,
    "filename": filename == null ? null : filename,
    "path": path == null ? null : path,
    "size": size == null ? null : size,
  };
}

