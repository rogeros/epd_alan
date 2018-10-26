#/bin/bash

# instalacja podstawowych pakietów w tym python
#apt-get install -y git python python-pip libzbar-dev libzbar0

# instalacja modułów wymagana do instalacji kolejnych modułów
#pip install setuptools
#pip install wheel

# instalacja modułów które wymagane są do pracy z ekranem
#pip install spidev
pip install Pillow

# wgrywamy czcionke
mkdir -p /usr/share/fonts/truetype/freefont/
cp FreeMonoBold.ttf /usr/share/fonts/truetype/freefont/
cp FreeMono.ttf /usr/share/fonts/truetype/freefont/

# instalujemy obslugę gpio dla nanopi kompatybilną z raspberrypi (jeśli pracujemy na raspberry należy ten krok pominąć)
cd ~
git clone https://github.com/auto3000/RPi.GPIO_NP
cd RPi.GPIO_NP
python setup.py install
cd -