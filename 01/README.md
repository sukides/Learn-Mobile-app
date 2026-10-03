void main() {
  
  //   perkenalan
    String waiters=("Hallo kami dari resto apalah");
    print(waiters);
    String line=("-"*40);
    print(line);

  //   menu
  
  String Menu=("""Menu makan kami:""");
  List<String> menu=[
   "Ayam bakar",
    "Ikan bakar",
    "Nasi uduk",
    "ciki jeki"
  ];
  
//   menyimpan data informasi
  
  int stok_ayam=12;
  String stok_beras="Stok beras 12 Liter";
  String ayam=("Stok ayam");
  String info=("""jumlah Stok anda saat ini ada: """);
  
//  eksekusi ikan bakar & Var diatas
 
  print("$Menu\n ${menu[1]}");
  print(info);
  print("$ayam $stok_ayam");
  print(stok_beras);
  
  
//   try sound safety
  String? name="sayyid";
  name=null;
    //note jika null di hilangkan yang di eksekusi yg sayyid...else bawah     
  print("udah kan katanya dari mau pulang");
  String adaga=name?? "keren";
  print(adaga);
  
}
