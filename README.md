# **SevenApps - MVVM Architecture Example**

**Proje Açıklaması:**

Bu proje, iOS uygulama geliştirme sürecinde **MVVM (Model-View-ViewModel)** mimarisi kullanılarak geliştirilmiş bir örnek uygulamadır. Kullanıcı bilgilerini listelemek ve her bir kullanıcının detaylarına erişmek için JSONPlaceholder API'si kullanılmaktadır. Uygulama, kullanıcı listesine ait veriyi çekmek ve detay ekranlarında göstermek için çeşitli kullanıcı arayüzü tasarımları ve dinamik veri yönetimi içerir.

## **Projede Kullanılan Teknolojiler ve Araçlar:**
- **MVVM Mimarisi**: Proje, veri yönetimi ve görünüm ayrımını sağlamak için Model-View-ViewModel mimarisi kullanılarak yapılandırılmıştır.
- **UIKit**: Kullanıcı arayüzü tasarımı ve UI elemanları için UIKit framework'ü kullanılmıştır.
- **SnapKit**: Auto Layout yönetimi için SnapKit kütüphanesi kullanılmıştır.
- **URLSession (Networking)**: API'den veri çekmek için URLSession kullanılmıştır.
- **CocoaPods**: Bağımlılık yönetimi için CocoaPods kullanılmıştır (eğer kullanıyorsanız, proje içerisinde ilgili Podfile bulunmaktadır).

## **Özellikler:**
- **Kullanıcı Listesi**: API'den kullanıcı verisi çekilip bir **UITableView** üzerinde liste halinde gösterilmektedir.
- **Detay Ekranı**: Kullanıcı listesinde tıklanan öğe ile ilgili detaylı bilgiler bir başka ekranda gösterilmektedir.
- **Özelleştirilmiş TableViewCell**: Kullanıcı bilgilerini göstermek için özelleştirilmiş bir **UserTableViewCell** tasarlanmıştır.
- **Loading Indicator**: Veri çekilirken bir **UIActivityIndicatorView** ile kullanıcıya veri yükleme durumu görsel olarak gösterilmiştir.
- **Hata Yönetimi**: API'den gelen hata durumlarında kullanıcıya **UIAlertController** aracılığıyla bilgilendirme yapılmaktadır.

## **Proje Kurulum ve Çalıştırma Talimatları:**

1. **Depoyu Klonlayın:**

```bash
git clone https://github.com/YOUR_GITHUB_USERNAME/SevenApps.git

```
**CocoaPods Bağımlılıklarını Yükleyin:**

   Projede harici kütüphaneler kullanıldığı için, bağımlılıkları yüklemek için aşağıdaki komutu çalıştırın:

   ```bash
   cd SevenApps
   pod install
 ```
**Xcode ile Projeyi Açın:**

  Xcode'da projeyi açmak için, .xcworkspace dosyasını seçin.

 ```
open SevenApps.xcworkspace

 ```












