wget http://www.imagemagick.org/download/ImageMagick-6.9.0-10.tar.gz;
tar xzf ImageMagick-6.9.0-10.tar.gz;
cd ImageMagick-6.9.0-10;
./configure --prefix=/opt/imagemagick;
make -j;
sudo make install;
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/opt/imagemagick/lib/pkgconfig;
sudo ln -s /opt/imagemagick/include/ImageMagick-6 /opt/imagemagick/include/ImageMagick;
cd ..;
wget http://pecl.php.net/get/imagick-3.2.0RC1.tgz;
tar -xzf imagick-3.2.0RC1.tgz;
cd imagick-3.2.0RC1;
phpize;
./configure --with-imagick=/opt/imagemagick;
make -j;
sudo make install;
echo "extension=imagick.so" >> ~/.phpenv/versions/$(phpenv version-name)/etc/php.ini
php --ri imagick;
