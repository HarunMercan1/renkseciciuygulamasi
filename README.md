# 🎨 Renk Seçici Uygulaması

Flutter ile geliştirilmiş, kullanıcı etkileşimine dayalı bir renk seçme uygulamasıdır.  
Dropdown menü, rastgele renk oluşturma, renk adını gösterme/gizleme ve kare/daire şekilli renk gösterimi gibi özellikler içerir.

---

## 🧩 Özellikler

-  Dropdown menü ile 5 farklı renk seçimi: Kırmızı, Mavi, Yeşil, Sarı, Mor
-  Rastgele renk üretme butonu
-  Renk adını gösterme/gizleme (popup menü ile)
-  Rengi daire ya da kare şeklinde gösterme (toggle switch)
-  Dinamik arayüz güncellemesi (seçilen renge göre)

---

##  Ekran Görüntüleri

| Ana Ekran | Renk Menüsü | Renk Adı Gizleme | Daire Şekli |
|----------|-------------|------------------|-------------|
| ![ss1](./screenshots/ss1.png) | ![ss2](./screenshots/ss2.png) | ![ss3](./screenshots/ss3.png) | ![ss4](./screenshots/ss4.png) |

---

##  Kullanılan Teknolojiler

- [Flutter](https://flutter.dev/)
- Dart
- Material Design
- StatefulWidget
- Custom Widget Mantığı

---

## ⚙️ Kurulum Adımları

```bash
git clone https://github.com/HarunMercan1/renseciciuygulamasi.git
cd renseciciuygulamasi
flutter pub get
flutter run

📁 Proje Yapısı

bash
Kodu kopyala
lib/
├── constants/
│   └── colors.dart              # Renk sabitlerini tutan dosya
├── pages/
│   └── color_picker_page.dart   # Ana ekranı oluşturan sayfa
├── theme/
│   └── app_theme.dart           # Uygulama teması (renk, yazı tipi vs.)
├── widgets/
│   └── color_display.dart       # Seçilen rengi kutu/daire olarak gösteren widget
└── main.dart                    # Uygulamanın giriş noktası


👤 Geliştirici

Harun Mercan
🎓 Gazi Üniversitesi – Bilgisayar Mühendisliği
🧠 Flutter & Dart öğrenme sürecimin bir parçası olarak geliştirilmiştir.
📬 GitHub profilim: HarunMercan1

📌 Notlar

Kodlar sade, okunabilir ve modülerdir.
Öğrenme amaçlı yazılmıştır ama genişletmeye uygundur.
Geri bildirim ve katkılara her zaman açığım!

