#! /bin/bash
# 
# script name: setup.bash
# script author: munair simpson
# script created: 20190412
# script purpose: spin up node/express with HTML5UP's Paradigm Shift template

# step 1: enable the Yarn repository. import the repository’s GPG key using the following curl command.
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

# step 2: add the Yarn APT repository to your system’s software repository list.
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# step 3: update the package list and install Yarn. this also installs Node. install NPM last.
sudo apt -y update
sudo apt -y install yarn
sudo apt -y install npm

# step 4: verify the installation of the Yarn APT, the Node APT, and the NPM APT.
yarn --version
nodejs --version
npm --version

# step 5: install Express Generator.
sudo apt -y install node-express-generator

# step 6: create application skeleton.
express --view=pug paradigm-shift
cd paradigm-shift
yarn init
DEBUG=myapp:* yarn start
