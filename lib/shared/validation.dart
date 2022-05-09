String? validateNotEmpty({ required String? value, required String? msg}){
  if(value!.isEmpty){
    return msg;
  }
}