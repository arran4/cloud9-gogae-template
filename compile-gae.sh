function install_python27 {
    wget http://www.python.org/ftp/python/2.7.3/Python-2.7.3.tgz
    tar xvfz Python-2.7.3.tgz
    cd Python-2.7.3 
    ./configure --prefix=$HOME
    make
    make install
    cd ..
    rm -rf Python-2.7.3*
}

function install_appengine {
    wget https://storage.googleapis.com/appengine-sdks/featured/go_appengine_sdk_linux_amd64-1.9.30.zip
    unzip go_appengine_sdk_linux_amd64-1.9.30.zip
    rm go_appengine_sdk_linux_amd64-1.9.30.zip
    mv go_appengine ../lib/
    cd ../bin/
    cp -fs ../lib/go_appengine/*.py ../lib/go_appengine/go{app,doc,fmt} .
}

function install_pil {
    wget http://effbot.org/downloads/Imaging-1.1.7.tar.gz
    tar xvfz Imaging-1.1.7.tar.gz
    cd Imaging-1.1.7
    python setup.py install
    cd ..
    rm -rf rm Imaging-1.1.7*
}

install_python27
install_appengine
install_pil
