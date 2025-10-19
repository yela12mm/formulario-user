import 'package:app/feature/model/modelUser.dart';
import 'package:dio/dio.dart';


class ServiceHome {
  final dio = Dio();

  Future<Info> infoFormulario({
    required String nombre,
    required String correo,
    required String contrasena,
  }) async {
    final response = await dio.post(
      "https://jsonplaceholder.typicode.com/posts",
      data: {
        "nombre": nombre,
        "correo": correo,
        "contrasena": contrasena,
      },
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );

    if (response.statusCode == 201) {

      print(response.data);
      return Info(
        nombre: response.data['nombre'], 
        correo: response.data['correo'], 
        contrasena: response.data['contrasena']
      );
    } else {
      throw Exception("Error: ${response.statusCode}");
    }
  }

  Future<List<User>> obtenerPlaceholder() async { 
    final response = await dio.get("https://jsonplaceholder.typicode.com/users");

    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      return  data.map((item) => User.fromJson(item)).toList();
    } else {
      throw Exception("Error: ${response.statusCode}");
    }
  }
}

