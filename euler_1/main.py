def hesapla(sayi):
    sonuc = 0
    for i in range(1, sayi):
        if i % 3 == 0 or i % 5 == 0:
            sonuc += i
    return sonuc

print(hesapla(1000))
