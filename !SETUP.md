# MacOS Dev Environment

Follow step by step and read everything!

## Software & Tools

### Xcode

First thing is download Xcode from the App Store. This will take a while so let it run in the background and continue onto the next steps.

### [iTerm2](https://iterm2.com/downloads.html)

Download iTerm2 for a better terminal experience. Then, update keymapping for easier navigation:

* Go to iTerm2 Preferences -> Profiles -> Keys -> Key Mappings
* At the bottom of the window, click "Presets..." dropdown
* Choose "Natural Text Editing"

This allows you to use Alt/Cmd + Left/Right to edit text on the terminal.

### Dotfiles

Navigate to your root directory (stay in root unless otherwise noted):

```
cd ~
```

Download the dotfiles required for the rest of the setup:


```
curl -O https://gist.githubusercontent.com/sharynneazhar/af72b6a5f6dc4ad4e48cf1bb7369a94e/raw/d5557a28733f0325f61b745fa4bcbbb64ebf8b9a/.gitignore \
  -O https://gist.githubusercontent.com/sharynneazhar/af72b6a5f6dc4ad4e48cf1bb7369a94e/raw/d5557a28733f0325f61b745fa4bcbbb64ebf8b9a/.zshrc \
  -O https://gist.githubusercontent.com/sharynneazhar/af72b6a5f6dc4ad4e48cf1bb7369a94e/raw/d5557a28733f0325f61b745fa4bcbbb64ebf8b9a/Brewfile
```

### [Homebrew](https://github.com/Homebrew/brew)

An important dependency before Homebrew can work is the **Command Line Developer Tools** for Xcode. These include compilers that will allow you to build things from source. You can install them directly from the terminal with:

```
xcode-select --install
```

Once that is done, we can install Homebrew by copy-pasting the installation command:

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### Brewfile

A key feature of Brew is its ability to set up your Mac to a known configuration using a Brewfile.

Run the following command:

```
brew bundle
```

Looks for ~/Brewfile and installs its contents.

### [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh)

```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Then, install the following plugins:

* [zsh-autosuggestion](https://github.com/zsh-users/zsh-autosuggestions)
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)


### [Git](https://git-scm.com/)

```
git config --global user.name "Sharynne Azhar"
git config --global user.email "sharynneazhar@gmail.com"
git config --global credential.helper osxkeychain
```

Set up the global `.gitignore` file by running the following:

```
git config --global core.excludesfile '~/.gitignore'
```

#### [GitAlias](https://github.com/GitAlias/gitalias) 

```
curl -O https://raw.githubusercontent.com/GitAlias/gitalias/master/gitalias.txt
git config --global include.path '~/gitalias.txt'
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
curl -sSL https://get.rvm.io | bash -s stable --rails
```

#### Bundler

```
gem install bundler
```

