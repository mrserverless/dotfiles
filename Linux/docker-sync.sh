# docker-sync
sudo gem install docker-sync

# jmespath
sudo wget https://github.com/jmespath/jp/releases/download/0.1.2/jp-linux-amd64 -O /usr/local/bin/jp \
&& sudo chmod +x /usr/local/bin/jp

# protoc
curl -L https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip 
sudo unzip /usr/local/
sudo chmod a+x /usr/local/bin/protoc

# watchexec
sudo curl -L https://github.com/mattgreen/watchexec/releases/download/1.8.6/watchexec-1.8.6-x86_64-unknown-linux-gnu.tar.gz | sudo tar -xz -C /usr/local/bin --strip-components=1

# ocaml
wget http://caml.inria.fr/pub/distrib/ocaml-4.06/ocaml-4.06.0.tar.gz
tar xvf ocaml-4.06.0.tar.gz
cd ocaml-4.06.0
./configure
make world
make opt
umask 022
sudo make install
sudo make clean

# unison
wget https://github.com/bcpierce00/unison/archive/v2.51.2.tar.gz
tar xvf v2.51.2.tar.gz
cd unison-2.51.2
make UISTYLE=text
sudo cp src/unison /usr/local/bin/unison
sudo cp src/unison-fsmonitor /usr/local/bin/unison-fsmonitor
