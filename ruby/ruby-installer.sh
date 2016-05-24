#!/usr/bin/env bash


install_ruby () {
	sudo apt-get install wget curl build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev -y
	cd /tmp
	wget https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.0.tar.gz
	tar -xvzf ruby-2.3.0.tar.gz
	cd ruby-2.3.0
	./configure --prefix=/usr/local
	make
	sudo make install

	echo $(ruby --version)
}


if ! [ -x "$(command -v ruby)" ]; then
	echo -e 'Installing Ruby - 2.3.0'

	install_ruby
else
	echo -e 'Ruby is already installed:'
	echo -e "\t$(ruby --version)"
fi