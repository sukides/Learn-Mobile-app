final Map<String, int> kgBarang =
    {
        'Plastik': 3000,
        'Kertas' : 1500,
        'Besi' : 4000
    };
double saldo = 0;

void first()
    {
        print('='*30);
        print("selamat datang");
        print("="*30);
    }

void setorSampah( String kategori, double berat)
    {
        if(!kgBarang.containsKey(kategori))
        {
            print("barang tidak ditemukan");
            return;
        }
        if (berat <= 0)
        {
            print("barang tidak valid");
            return;
        }

        final harga = kgBarang[kategori]!;
        final total=berat*harga;

        saldo += total;

        print("kategori : $kategori");
        print("berat : $berat");
        print("harga/kg : $harga");
        print("total : $total");
        print("saldo : $saldo");
    }

void cekSaldo(){
    print("saldo anda : RP.$saldo" );
    
    if (saldo < 10000)
        {
            print("saldo anda tidak mencukupi");
        }
    else
        {
            print("saldo anda cukup");
        }
    }

void tarikSaldo(double nominal)
    {
        if (saldo < 10000)
            {
                print("gagal melakukan penarikan");
                print("Saldo minimal untuk dapat melakukan penarikan 10.000");
                return;
            }
        if(nominal <= 0)
            {
                print("Nominal penarikan invalid");
                return;
            }
        saldo -= nominal;
        print("penarikan berhasil");
        print("saldo $saldo");
        print("jumlah $nominal");
    }

void main()
    {
        // panggil function di atas uyy
        first();
        setorSampah("Plastik", 10);
        print("");

        cekSaldo();
        print("");

        tarikSaldo(12000);
        print("");
        
        cekSaldo();
    }