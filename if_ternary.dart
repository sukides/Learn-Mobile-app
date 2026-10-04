
final Map<String, int> kgBarang = {
  'Plastik': 3000,
  'Kertas': 1500,
  'Besi': 4000
};

double saldo = 0;

void first() {
  print('=' * 30);
  print("Selamat datang");
  print('=' * 30);
}

void setorSampah(String kategori, double berat) {
  !kgBarang.containsKey(kategori)
      ? print("Barang tidak ditemukan")
      : berat <= 0
          ? print("Barang tidak valid")
          : prosesSetor(kategori, berat);
}

void prosesSetor(String kategori, double berat) {
  final harga = kgBarang[kategori]!;
  final total = berat * harga;

  saldo += total;

  print("Kategori : $kategori");
  print("Berat : $berat");
  print("Harga/kg : $harga");
  print("Total : $total");
  print("Saldo : $saldo");
}

void cekSaldo() {
  print("Saldo anda : Rp.$saldo");

  saldo < 10000
      ? print("Saldo anda tidak mencukupi")
      : print("Saldo anda cukup");
}

void tarikSaldo(double nominal) {
 
  saldo < 10000
      ? print("Gagal melakukan penarikan\n"
          "Saldo minimal untuk dapat melakukan penarikan 10.000")
      : nominal <= 0
          ? print("Nominal penarikan invalid")
          : prosesPenarikan(nominal);
}

void prosesPenarikan(double nominal) {
  saldo -= nominal;

  print("Penarikan berhasil");
  print("Saldo $saldo");
  print("Jumlah $nominal");
}

void main() {
  first();

  setorSampah("Plastik", 10);
  print("");

  cekSaldo();
  print("");

  tarikSaldo(12000);
  print("");

  cekSaldo();
}
