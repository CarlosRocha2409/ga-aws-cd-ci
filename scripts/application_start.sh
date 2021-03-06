#!/bin/bash

#give permission for everything in the ga-aws-cd-ci directory
sudo chmod -R 777 /home/ubuntu/ga-aws-cd-ci

#navigate into our working directory where we have all our github files
cd /home/ubuntu/ga-aws-cd-ci

#add npm and node to path
export NVM_DIR="$HOME/.nvm"	
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm	
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)


#install pm2
 npm install pm2@latest -g

#install node modules
npm install

pm2 kill

#start our node app in the background
pm2 start index.js > app.out.log 2> app.err.log < /dev/null & 


