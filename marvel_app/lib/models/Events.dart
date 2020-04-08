class ResponseDefaultEvent {
  Data data;
  String etag;

  ResponseDefaultEvent({this.data, this.etag});

  ResponseDefaultEvent.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    etag = json['etag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['etag'] = this.etag;
    return data;
  }
}

class Data {
  List<Events> results;

  Data({this.results});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = new List<Events>();
      json['results'].forEach((v) {
        results.add(new Events.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Events {
  String title;
  String description;
  Thumbnail thumbnail;

  Events({
    this.title,
    this.description,
    this.thumbnail,
  });

  Events.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    thumbnail = json['thumbnail'] != null
        ? new Thumbnail.fromJson(json['thumbnail'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    if (this.thumbnail != null) {
      data['thumbnail'] = this.thumbnail.toJson();
    }

    return data;
  }
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
