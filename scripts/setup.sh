#!/usr/bin/env bash

   
        
        
sudo locale-gen  en_US.UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

#so we dont have to type yes

ssh-keyscan -H github.com >> ~/.ssh/known_hosts

ssh-keyscan -H keys.gnupg.net >> ~/.ssh/known_hosts

ssh-keyscan -H raw.githubusercontent.com >> ~/.ssh/known_hosts

ssh-keyscan -H platform.sh >> ~/.ssh/known_hosts

ssh-keyscan -H git.us.platform.sh >> ~/.ssh/known_hosts


ssh-keyscan -H ssh.us.platform.sh >> ~/.ssh/known_hosts


chmod 777 ~/www -R



echo "drop database berkshireinnovationcenter;" | mysql -uroot
echo "create database berkshireinnovationcenter;" | mysql -uroot
#mysql -u root -p berkshireinnovationcenter --password="" < /home/vagrant/www/sites/local.berkshireinnovationcenter.com/dump.sql


curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer


#composer global config minimum-stability dev
composer require drush/drush
composer global require drupal/coder
export PATH="$PATH:$HOME/vendor/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

#ruby for compass
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
cd ~ && . ./.rvm/scripts/rvm


curl -sS https://platform.sh/cli/installer | php

echo 'export PATH="$PATH:$HOME/vendor/bin:$HOME/.config/composer/vendor/bin:$HOME/.rvm/scripts"' >> ~/.bashrc

cd ~ && chmod 777 .bashrc && . ./.bashrc
ln -s ~/.config/composer ~/.composer

#ruby part 2
rvm install 2.2.3-named
rvm use 2.2.3-named
gem install bundler -v 1.7.4
gem install compass

#code sniffer
phpcs --config-set installed_paths ~/.config/composer/vendor/drupal/coder/coder_sniffer
cd ~ && platform
cd ~ && platform get cld2r5664mncw www/platform
cd ~/www/platform && platform drush-aliases -g bic

cd ~/www/platform && git remote remove origin
cd ~/www/platform && git remote add upstream git@github.com:MasterDoublePrime/BIC-project.git
cd ~/www/platform && git remote add origin git@github.com:nicklz/BIC-project.git
cd ~/www/platform && git fetch --all
cd ~/www/platform && platform build


cat /home/vagrant/www/settings.local.php > /home/vagrant/www/platform/.platform/local/shared/settings.local.php

curl -sL https://deb.nodesource.com/setup | sudo bash - && yes | sudo apt-get install nodejs

sudo npm install -g grunt-cli   bower


cd ~/www/platform/themes/custom/bic && yes | npm install && bower install && bundle install --without production


#these need to be done differently
cd ~/www/platform/ && git config --global user.email "nicholas.kuhn@spi.com"
cd ~/www/platform/ && git config --global user.name "Nick Kuhn"
cd ~/www/platform/ && git config --global core.editor "vim"


#add phpmyadmin
sudo ln -s /home/vagrant/phpmyadmin /home/vagrant/www/platform/phpmyadmin

cd ~/www/platform/ && git config --global core.editor "vim"
cd ~ && wget http://archive.apache.org/dist/lucene/solr/4.7.2/solr-4.7.2.tgz && sudo tar -xvf solr-4.7.2.tgz && sudo cp -R solr-4.7.2/example /opt/solr && sudo cp /home/vagrant/www/solr/conf/* /opt/solr/solr/collection1/conf/ -rf && cd /opt/solr &&  sudo java -jar start.jar &



cd ~/www/platform/_www && drush sql-sync @bic.phase-3 @bic._local --create-db -y --source-dump=/tmp/tmp.sql.gz --target-dump=/tmp/tmp.sql.gz
#https://github.com/MasterDoublePrime/BIC-project/wiki/Development-With-Platform.sh


