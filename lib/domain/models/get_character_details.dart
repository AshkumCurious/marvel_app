class GetCharacterDetails {
  int code;
  String status;
  String copyright;
  String attributionText;
  String attributionHtml;
  String etag;
  Data data;

  GetCharacterDetails({
    required this.code,
    required this.status,
    required this.copyright,
    required this.attributionText,
    required this.attributionHtml,
    required this.etag,
    required this.data,
  });

  factory GetCharacterDetails.fromJson(Map<String, dynamic> json) =>
      GetCharacterDetails(
        code: json.containsKey("code") ? json["code"] : 0,
        status: json.containsKey("status") ? json["status"] : "",
        copyright: json.containsKey("copyright") ? json["copyright"] : "",
        attributionText:
            json.containsKey("attributionText") ? json["attributionText"] : "",
        attributionHtml:
            json.containsKey("attributionHTML") ? json["attributionHTML"] : "",
        etag: json.containsKey("etag") ? json["etag"] : "",
        data: Data.fromJson(json["data"] ?? {}),
      );
}

class Data {
  int offset;
  int limit;
  int total;
  int count;
  List<Result> results;

  Data({
    required this.offset,
    required this.limit,
    required this.total,
    required this.count,
    required this.results,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        offset: json.containsKey("offset") ? json["offset"] : 0,
        limit: json.containsKey("limit") ? json["limit"] : 0,
        total: json.containsKey("total") ? json["total"] : 0,
        count: json.containsKey("count") ? json["count"] : 0,
        results: List<Result>.from(
            (json["results"] ?? []).map((x) => Result.fromJson(x))),
      );
}

class Result {
  int id;
  String name;
  String description;
  String modified;
  Thumbnail thumbnail;
  String resourceUri;
  Comics comics;
  Comics series;
  Stories stories;
  Comics events;
  List<Url> urls;

  Result({
    required this.id,
    required this.name,
    required this.description,
    required this.modified,
    required this.thumbnail,
    required this.resourceUri,
    required this.comics,
    required this.series,
    required this.stories,
    required this.events,
    required this.urls,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json.containsKey("id") ? json["id"] : 0,
        name: json.containsKey("name") ? json["name"] : "",
        description: json.containsKey("description") ? json["description"] : "",
        modified: json.containsKey("modified") ? json["modified"] : "",
        thumbnail: Thumbnail.fromJson(json["thumbnail"] ?? {}),
        resourceUri: json.containsKey("resourceURI") ? json["resourceURI"] : "",
        comics: Comics.fromJson(json["comics"] ?? {}),
        series: Comics.fromJson(json["series"] ?? {}),
        stories: Stories.fromJson(json["stories"] ?? {}),
        events: Comics.fromJson(json["events"] ?? {}),
        urls: List<Url>.from(
            (json["urls"] ?? []).map((x) => Url.fromJson(x))),
      );
}

class Comics {
  int available;
  String collectionUri;
  List<ComicsItem> items;
  int returned;

  Comics({
    required this.available,
    required this.collectionUri,
    required this.items,
    required this.returned,
  });

  factory Comics.fromJson(Map<String, dynamic> json) => Comics(
        available: json.containsKey("available") ? json["available"] : 0,
        collectionUri: json.containsKey("collectionURI") ? json["collectionURI"] : "",
        items: List<ComicsItem>.from(
            (json["items"] ?? []).map((x) => ComicsItem.fromJson(x))),
        returned: json.containsKey("returned") ? json["returned"] : 0,
      );
}

class ComicsItem {
  String resourceUri;
  String name;

  ComicsItem({
    required this.resourceUri,
    required this.name,
  });

  factory ComicsItem.fromJson(Map<String, dynamic> json) => ComicsItem(
        resourceUri: json.containsKey("resourceURI") ? json["resourceURI"] : "",
        name: json.containsKey("name") ? json["name"] : "",
      );
}

class Stories {
  int available;
  String collectionUri;
  List<StoriesItem> items;
  int returned;

  Stories({
    required this.available,
    required this.collectionUri,
    required this.items,
    required this.returned,
  });

  factory Stories.fromJson(Map<String, dynamic> json) => Stories(
        available: json.containsKey("available") ? json["available"] : 0,
        collectionUri: json.containsKey("collectionURI") ? json["collectionURI"] : "",
        items: List<StoriesItem>.from(
            (json["items"] ?? []).map((x) => StoriesItem.fromJson(x))),
        returned: json.containsKey("returned") ? json["returned"] : 0,
      );
}

class StoriesItem {
  String resourceUri;
  String name;
  String type;

  StoriesItem({
    required this.resourceUri,
    required this.name,
    required this.type,
  });

  factory StoriesItem.fromJson(Map<String, dynamic> json) => StoriesItem(
        resourceUri: json.containsKey("resourceURI") ? json["resourceURI"] : "",
        name: json.containsKey("name") ? json["name"] : "",
        type: json.containsKey("type") ? json["type"] : "",
      );
}

class Thumbnail {
  String path;
  String extension;

  Thumbnail({
    required this.path,
    required this.extension,
  });

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        path: json.containsKey("path") ? json["path"] : "",
        extension: json.containsKey("extension") ? json["extension"] : "",
      );
}

class Url {
  String type;
  String url;

  Url({
    required this.type,
    required this.url,
  });

  factory Url.fromJson(Map<String, dynamic> json) => Url(
        type: json.containsKey("type") ? json["type"] : "",
        url: json.containsKey("url") ? json["url"] : "",
      );
}
