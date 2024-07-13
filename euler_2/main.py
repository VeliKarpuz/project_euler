# Fibonacci serisini tutmak için bir liste oluşturuyoruz
fib_list=[1]

# Fibonacci serisini hesaplayan fonksiyon
def calculate_fib(sayi):
    # İlk iki Fibonacci sayısını tanımlıyoruz
    birinci=1
    ikinci=1    
    dummy=0
    
    # Verilen sayı kadar döngü oluşturuyoruz
    for i in range(sayi):
        # Fibonacci serisinin 4000000'den küçük elemanlarını hesaplıyoruz
        while birinci+ikinci<4000000:
            dummy=birinci
            birinci=birinci+ikinci
            ikinci=dummy
            fib_list.append(birinci)
    
    # Çift Fibonacci sayıları ve toplamını tutmak için değişkenler oluşturuyoruz
    ciftler=[]
    toplam=0
    
    # Fibonacci listesindeki elemanları kontrol ediyoruz
    for i in range(len(fib_list)):
        # Eğer eleman çift ise, toplamı artırıyoruz ve çiftler listesine ekliyoruz
        if fib_list[i]%2==0:
            toplam+=fib_list[i]
            ciftler.append(fib_list[i])
    
    # Çift Fibonacci sayılarını döndürüyoruz
    return toplam

# Fonksiyonu çağırıp sonucu yazdırıyoruz
print(calculate_fib(10))