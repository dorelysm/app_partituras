class Categorias {
  List<ModelCategorias> items = [];

  Categorias();

  Categorias.fromJsonList(List<dynamic> jsonList){
    if(jsonList == null) return;
    for (var item in jsonList){
      final categoria = new ModelCategorias.fromJsonMap(item);
      items.add(categoria);
    }
  }
}

class ModelCategorias {
  late String id;
  late String nombre;
  late String imagen;

  ModelCategorias(
    this.id,
    this.nombre,
    this.imagen,
  );

  ModelCategorias.fromJsonMap(Map<String, dynamic> json){
    id = json['id'];
    nombre = json['nombre'];
    imagen = json['imagen'];
  }
}