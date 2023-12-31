class Arts {
  Arts({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnail,
    required this.options,
    required this.images,
    required this.variants,
  });
  String id;
  String title;
  String description;
  String thumbnail;
  List<Option> options;
  List<Image> images;
  List<Variant> variants;
  factory Arts.fromJson(Map<String, dynamic> json) => Arts(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    thumbnail: json["thumbnail"],
    options: List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    variants: List<Variant>.from(json["variants"].map((x) => Variant.fromJson(x))),
  );
}

class Image {
  Image({
    required this.url,
  });
  String url;
  factory Image.fromJson(Map<String, dynamic> json) => Image(
    url: json["url"],
  );
}

class Option {
  Option({
    required this.title,
    required this.values,
  });
  String title;
  List<Value> values;
  factory Option.fromJson(Map<String, dynamic> json) => Option(
    title: json["title"],
    values: List<Value>.from(json["values"].map((x) => Value.fromJson(x))),
  );
}

class Value {
  Value({
    required this.id,
    required this.value,
  });
  String id;
  String value;
  factory Value.fromJson(Map<String, dynamic> json) => Value(
    id: json["id"],
    value: json["value"]!,
  );
}

class Variant {
  Variant({
    required this.id,
    required this.title,
    required this.prices,
    required this.options,
  });
  String id;
  String title;
  List<Price> prices;
  List<Value> options;
  factory Variant.fromJson(Map<String, dynamic> json) => Variant(
    id: json["id"],
    title: json["title"]!,
    prices: List<Price>.from(json["prices"].map((x) => Price.fromJson(x))),
    options:
    List<Value>.from(json["options"].map((x) => Value.fromJson(x))),
  );
}

class Price {
  Price({
    required this.id,
    required this.currencyCode,
    required this.amount,
  });
  String id;
  String currencyCode;
  int amount;
  factory Price.fromJson(Map<String, dynamic> json) => Price(
    id: json["id"],
    currencyCode: json["currency_code"]!,
    amount: json["amount"],
  );
}

