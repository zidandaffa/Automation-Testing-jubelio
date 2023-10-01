## Otomatisasi Pengujian Jubelio menggunakan Sintaks Gherkin

### Prasyaratan
1.Ruby (Pastikan Anda sudah menginstal Ruby. Untuk memeriksa Ruby yang terinstal, Anda dapat menggunakan perintah ini `ruby -v`)
2.Cucumber (Pastikan Anda sudah menginstal Cucumber. Untuk memeriksa, Anda dapat menggunakan perintah ini `cucumber --version`)
3.Tambahkan ini ke Gemfile
```
sumber 'https://rubygems.org'

gem 'capybara'
gem 'cucumber'
gem 'pry'
gem 'rspec'
gem 'webdrivers'
``` 
4.Jalankan perintah ini untuk menginstal ```gem bundle install```
5.Tambahkan file env seperti ini ```features/support/env.rb```
6.Jalankan perintah ini untuk menginstal ```cucumber --init```
7.Instal ekstensi Cucumber di editor teks Anda (Visual Studio Code)

### Cara menjalankan skenario automation

1.Buka terminal di editor Anda
2.Untuk menjalankan semua skenario, gunakan perintah ini:
>bundle exec cucumber -t @regresion
3.Untuk menjalankan skenario tertentu/beberapa skenario, gunakan perintah berikut dengan tag seperti ini:
>bundle exec cucumber -t @login