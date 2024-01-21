curl -sL https://deb.nodesource.com/setup_17.x -o ./nodesource_setup.sh
sudo bash ./nodesource_setup.sh
rm ./nodesource_setup.sh

# this installed both nodejs and npm, installing npm alone installed npm v
# 3.x
sudo apt install nodejs

npm -v
