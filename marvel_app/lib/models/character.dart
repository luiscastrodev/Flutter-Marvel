class ResponseDefault {
  int offset;
  int limit;
  int total;
  int count;
  List<Character> results;

  ResponseDefault({
    this.offset,
    this.limit,
    this.total,
    this.count,
    this.results,
  });

  factory ResponseDefault.fromJson(Map<String, dynamic> json) => ResponseDefault(
    offset: json["offset"],
    limit: json["limit"],
    total: json["total"],
    count: json["count"],
    results: List<Character>.from(json["results"].map((x) => Character.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "offset": offset,
    "limit": limit,
    "total": total,
    "count": count,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Character {

    int id;
    String name;
    Thumbnail thumbnail;


    Character({this.id, this.name, this.thumbnail});

    factory Character.fromJson(Map<String, dynamic> json) => Character(
      id: json["id"],
      name: json["name"],
      thumbnail: Thumbnail.fromJson(json["thumbnail"]),

    );

    Map<String, dynamic> toJson() => {
      "id": id,
      "name": name,
      "thumbnail": thumbnail.toJson(),
    };
 }

class Thumbnail {
  String path;
  String extension;

 Thumbnail({this.path, this.extension});

  Thumbnail.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    extension = json['extension'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['path'] = this.path;
    data['extension'] = this.extension;
    return data;
  }
}