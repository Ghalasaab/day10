import 'package:day10/model/student.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DataBase {
  final supabase = Supabase.instance.client;
  Future<List<Student>> getData() async {
    var response = await supabase.from("studen").select();

    List<Student> studentList =[];
    for(var element in response){
      studentList.add(Student.fromJson(element));
    }
    return studentList;
  }
}
