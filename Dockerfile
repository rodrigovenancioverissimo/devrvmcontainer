FROM ruby:2.4
RUN apt-get -q update && apt-get -qy upgrade

########### Install ZSH
RUN apt-get -q install wget fonts-powerline -y
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)" --  \
  -t https://github.com/denysdovhan/spaceship-prompt \
  -p https://github.com/zsh-users/zsh-autosuggestions \
  -p https://github.com/zsh-users/zsh-completions \
  -p https://github.com/zsh-users/zsh-syntax-highlighting \
  -p aws \
  -a 'ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#262626,bg=#1c1c1c"' 

########## Install Dev Tools
RUN apt-get -qy install nano net-tools psmisc
