# MacOS Dev Environment

Latest: macOS HighSierra v.10.13.3

## Software & Tools

### [Homebrew](https://github.com/Homebrew/brew)

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### Brewfile

Download `Brewfile` and run the following command:

```
brew bundle
```

### [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh)

```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### [Vim-Bootstrap](https://vim-bootstrap.com/)

```
curl 'http://vim-bootstrap.com/generate.vim' --data 'langs=html&langs=javascript&langs=python&langs=ruby&langs=php&editor=vim' > ~/.vimrc
vim +PlugInstall +qall
```

#### [OneDark Theme](https://github.com/joshdick/onedark.vim)

```
git clone https://github.com/joshdick/onedark.vim.git
mkdir ~/.vim/colors
mv ~/Downloads/onedark.vim-master/colors/onedark.vim ~/.vim/colors/onedark.vim
mv ~/Downloads/onedark.vim-master/autoload/onedark.vim ~/.vim/autoload/onedark.vim
```

```
touch ~/.vimrc.local 
echo "colorscheme onedark" >> ~/.vimrc.local
echo "let g:airline_theme='onedark'" >> ~/.vimrc.local
```

### [Git](https://git-scm.com/)

```
git config --global user.name "Sharynne Azhar"
git config --global user.email "EMAIL"
git config --global credential.helper osxkeychain
```

#### [GitAlias](https://github.com/GitAlias/gitalias) 

```
curl -O https://raw.githubusercontent.com/GitAlias/gitalias/master/gitalias.txt
```

Edit `.gitconfig` to include:

```
[include]
    path = gitalias.txt
```

#### [GitIgnore]()

Download `.gitignore` file and run the following:

```
git config --global core.excludesfile '~/.gitignore'
```

### [NVM](https://github.com/creationix/nvm)

```
mkdir ~/.nvm
```

Add the following `PATH` to `.zshrc`:

```
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
```

Install `node`:

```
nvm install node
nvm use node
nvm alias default node
```

### [RVM & Rails](https://rvm.io/)

```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable --rails
```

#### Bundler

```
gem install bundler
```

