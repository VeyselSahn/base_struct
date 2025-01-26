# Project Documentation

Bu proje yapısı, **modüler bir Flutter projesi** olarak tasarlanmıştır ve farklı katmanlar halinde organize edilmiştir. Aşağıda proje yapısının detaylı bir açıklamasını bulabilirsiniz.

## Proje Yapısı

### core
**Core** klasörü, projedeki genel yapı taşlarını içerir. Bu klasör, projenin temel işlevselliklerini sağlayan sabitler, yardımcı sınıflar ve uzantılar gibi bileşenlerden oluşur.

- **constants**
  - `api_constants.dart`: API ile ilgili sabit değerler.
  - `constants.dart`: **Barrel file**. Projeye özel genel sabitleri yönetir.
  - `local_constants.dart`: Yerel sabitler ve ayarlar.
- **helper**
  - `enums`: Enum tiplerini içerir.
  - `extensions`: Dart uzantıları.
    - `date_time_extensions.dart`: Tarih ve saat ile ilgili uzantılar.
    - `extensions.dart`: **Barrel file**. Genel amaçlı uzantıları yönetir.
  - **functions**: Yardımcı fonksiyonlar.
  - **theme**: Tema yönetimi.
    - `theme_manager.dart`: Tema yönetimi ile ilgili işlemler.
    - `theme.dart`: Tema ayarları ve renk şemaları.
  - `helper.dart`: Genel yardımcı sınıflar ve metotlar.

### init
**Init** klasörü, uygulamanın başlangıç ve temel yönetim süreçlerini içerir.

- **cache**
  - `cache_manager.dart`: Önbellek yönetimi sınıfı.
  - `cache.dart`: **Barrel file**. Önbellek ile ilgili sınıfları toplar.
- **localization**
  - `localization_manager.dart`: Çoklu dil desteği yönetimi.
  - `localization.dart`: **Barrel file**. Dil dosyalarını ve çeviri işlemlerini içerir.
- **navigator**
  - `navigator_manager.dart`: Navigasyon yönetimi.
  - `navigator.dart`: **Barrel file**. Navigasyon yapılandırmasını toplar.
- **singleton**
  - `singleton_manager.dart`: Singleton yapılarının yönetimi.
  - `singleton.dart`: **Barrel file**. Singleton sınıflarını yönetir.
- `init.dart`: Başlangıç yapılandırmaları için **barrel file**.

### model
**Model** klasörü, uygulamanın veri modellerini ve parametre yapılarını içerir.

- **get-parameters**: API çağrıları için parametre sınıfları.
- `model.dart`: **Barrel file**. Veri modellerini yönetir.

### network
**Network** klasörü, ağ işlemleri ve API entegrasyonları ile ilgili sınıfları içerir.

- `network_service.dart`: Ağ çağrıları için temel servis sınıfı.
- `network.dart`: **Barrel file**. Ağ yapılandırmaları ve servislerini toplar.

### states
**States** klasörü, uygulamanın durum yönetimiyle ilgili yapılarını içerir.

- `app_states.dart`: Uygulama genelindeki durumlar.
- `app_user.dart`: Kullanıcı durumları.
- `states.dart`: **Barrel file**. Durum sınıflarını toplar.

### widgets
**Widgets** klasörü, uygulama genelinde kullanılan özel widget'ları içerir.

- **base**
  - `base_view.dart`: Taban görünüm sınıfı.
  - `base.dart`: **Barrel file**. Taban widget'ları toplar.
- **input**
  - `form_widget.dart`: Form elemanları için özel widget'lar.
  - `input.dart`: **Barrel file**. Girdi alanları widget'larını toplar.
- `widgets.dart`: **Barrel file**. Genel widget yapılandırmalarını yönetir.

## Barrel Dosyaları
Her klasörde bir **barrel file** bulunmaktadır. Bu dosyalar, ilgili klasördeki tüm dosyaları dışa aktarmak için kullanılır ve kodda düzeni sağlamak amacıyla tercih edilir.

### Barrel Dosyalarını Kullanma
Barrel dosyalarını kullanarak klasör içindeki tüm dosyalara tek bir import ifadesiyle erişebilirsiniz. Bu, kodda düzeni sağlar ve tekrar eden import ifadelerinin önüne geçer. 

### Barrel Dosyaları İçin Araç
Barrel dosyalarını daha hızlı oluşturmak için aşağıdaki eklentiyi kurabilirsiniz:

```bash
code --install-extension miquelddg.dart-barrel-file-generator-6.3.0
```

Bu eklenti, barrel dosyalarını otomatik olarak oluşturmanıza ve güncellemenize olanak tanır.

## Kullanım Talimatları
1. Proje yapısı, modülerlik ve ölçeklenebilirlik göz önünde bulundurularak tasarlanmıştır.
2. **Yeni özellik eklerken** ilgili modüle uygun bir klasör içinde geliştirme yapılmalıdır.
3. Ortak kullanılacak kodlar, **core** klasöründe ilgili kategoriye eklenmelidir.
4. Tema ve dil yönetimi için **theme** ve **localization** modüllerinden faydalanabilirsiniz.

## Katkıda Bulunma
Proje katkıları için:
1. Projeyi fork'layın.
2. Yeni bir dal (branch) oluşturun.
3. Değişikliklerinizi yapın ve test edin.
4. Pull Request oluşturun.


