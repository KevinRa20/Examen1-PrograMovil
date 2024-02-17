import 'dart:convert';
List<Libros> equiposFromJson(String str) => List<Libros>.from(json.decode(str).map((x) => Libros.fromJson(x)));

class Libros {
    int id;
    int year;
    String titulo;
    String publisher;
    String villano;

    Libros({
        required this.id,
        required this.year,
       required this.titulo,
        required this.publisher,
        required this.villano,
    });

        factory Libros.fromJson(Map<String, dynamic> json) => Libros(
        id: json["id"],
        year: json["year"],
        titulo: json["titulo"],
        publisher: json["publisher"],
        villano: json["villano"],
    );

}



class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}