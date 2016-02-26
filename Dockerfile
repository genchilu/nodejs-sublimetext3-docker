FROM genchilu/sublimetext3

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install curl -y && \
    curl -sL https://deb.nodesource.com/setup_4.x | sudo bash - && \
    apt-get install nodejs -y

RUN npm install express-generator -g
ADD Preferences.sublime-settings /root/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
