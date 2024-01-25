// Soru cümleleri ve cevaplar için class
class Sorular{
  String soruCumlem;
  String soruCevap;

  Sorular ( {String s , String c} ) {
    soruCumlem = s;
    soruCevap = c;
  }
}

// Soru cümlelerinin olduğu class
class Anayapim {
  int _soruNumarasi = 0;
  List <Sorular> _quiz = [
    Sorular(s: 'Kendine özgü jeomorfolojik süreçlerin etkisiyle meydana gelmiş olan Peri Bacaları hangi şehirde bulunur?', c: 'Nevşehir'),
    Sorular(s: 'Osmanlı’daki ticari anlayışın günümüze yansıması olarak hala varlığını sürdüren Mısır Çarşısı hangi şehirdedir?', c: 'İstanbul'),
    Sorular(s: 'İşçiliği ile dünyaya adını duyuran Oltu Taşı hangi şehrimize aittir?', c: 'Erzurum'),
    Sorular(s: 'İç Anadolu’nun en yüksek dağı olan Erciyes Dağı hangi şehirdedir?', c: 'Kayseri'),
    Sorular(s: 'Muhteşem manzarası, etkileyici mimarisi ile yerli yabancı turistleri etkileyen Galata Kulesi hangi şehirdedir?', c: 'İstanbul'),
    Sorular(s: 'Türkiye Cumhuriyetinin kurucusu ulu önder Mustafa Kemal Atatürkün anıt mezarı hangi şehirdedir?', c: 'Ankara'),
    Sorular(s: 'Konum itibariyle Türkiye’nin tam ortasında özelliğine sahip olan hangi şehrimizdir?', c: 'Nevşehir'),
    Sorular(s: 'Denizin ortasında muhteşem bir manzaraya sahip olan Kız Kulesi hangi şehirdedir?', c: 'İstanbul'),
    Sorular(s: 'Kış turizimde büyük ilgi gören Palandöken Kayak Merkezi hangi ildedir?', c: 'Erzurum'),
    Sorular(s: 'Aylarca bozulmadan tadını koruyabilen Beypazarı Kurusunun adını aldığı Beypazarı ilçesi hangi şehirdedir?', c: 'Ankara'),
    Sorular(s: 'Türkiyenin meşhur yöresel yemeklerinden olan Mantı hangi şehrimize aittir?', c: 'Kayseri'),
    Sorular(s: 'Türkiye Cumhuriyeti Devleti’nin ikinci büyük şehri ve başkenti hangisidir?', c: 'Ankara'),
    Sorular(s: 'Hangi şehrimizde deniz bulunur?', c: 'İstanbul'),
  ];
// Soru cümlelerini almak için fonksiyon
  String soruCumleAl() {
    return _quiz[_soruNumarasi].soruCumlem;
  }
// Doğru cevabı almak için fonksiyon
  String dogruCevapAl() {
    return _quiz[_soruNumarasi].soruCevap;
  }
// Bir sonraki soruya geçmek için fonksiyon
  void siradakiSoru() {
    if (_soruNumarasi < _quiz.length -1)
      _soruNumarasi++;
  }
// Sorular bittiğinde uyarı için fonksiyon
  bool soruSon() {
    if (_soruNumarasi >= _quiz.length -1) {
      return true;
    } else {
      return false;
    }
  }
  // Soruları sıfırlamak için fonksiyon
  void reset(){
    _soruNumarasi = 0;
  }
}