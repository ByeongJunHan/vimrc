# vimrc
* Install in Ubuntu 20.04 Lts:
  ``` 
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  mkdir -p ~/.vim/colors
  cd ~/.vim/colors
  curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
  curl -O https://raw.githubusercontent.com/ByeongJunHan/vimrc/master/colors/onedark.vim
  mkdir -p ~/.vim/autoload
  cd ~/.vim/autoload
  curl -O https://raw.githubusercontent.com/ByeongJunHan/vimrc/master/autoload/onedark.vim
  cd ~
  curl -O https://raw.githubusercontent.com/ByeongJunHan/vimrc/master/.vimrc
  ```
  
