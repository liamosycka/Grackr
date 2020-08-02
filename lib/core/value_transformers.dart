class Value_Transformer {
  static String transform_String(String str) {
    // Transformar un String a una forma Aaaaaa. Por ejemplo, PEDRO -> Pedro
    return "${str.substring(0, 1).toUpperCase()}${str.substring(1).toLowerCase()}";
  }
}
