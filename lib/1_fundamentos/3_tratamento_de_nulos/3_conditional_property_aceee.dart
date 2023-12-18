String? nomeCompleto;

void main(){
  // Null Awere operator
  var nomeConpletoLocal = nomeCompleto ?? 'Nome não emcontrado => Null Awere operator';

  // if convencional
  if (nomeCompleto != null) {
    print(nomeCompleto!.toUpperCase());
  } else {
    print('nome não encontrado => if convencional');
  } 

  // Conditional property access
  print(nomeCompleto?.toLowerCase() ?? 'nome não enontrado => Conditional access'); 
}