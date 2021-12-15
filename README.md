# MacOS Dev Environment

Follow step by step and read everything!

## Software & Tools

### Xcode

First thing is download Xcode from the App Store. This will take a while so let it run in the background and continue onto the next steps.

### iTerm2

Download [iTerm2](https://iterm2.com/downloads.html) for a better terminal experience. Then, update keymapping for easier navigation:

* Go to iTerm2 Preferences -> Profiles -> Keys -> Key Mappings
* At the bottom of the window, click "Presets..." dropdown
* Choose "Natural Text Editing"

This allows you to use Alt/Cmd + Left/Right to edit text on the terminal.

### Dotfiles

Download the dotfiles required for the rest of the setup:

```
cd ~
curl -O https://raw.githubusercontent.com/sharynneazhar/dotfiles/main/.gitignore \
  -O https://raw.githubusercontent.com/sharynneazhar/dotfiles/main/.zshrc \
  -O https://raw.githubusercontent.com/sharynneazhar/dotfiles/main/Brewfile
```

### Homebrew

First, check if Xcode is done installing. If so, open Xcode to accept all the license agreements. Otherwise, keep an eye on it and do so when Xcode is done installing.

An important dependency before [Homebrew](https://github.com/Homebrew/brew) can work is the **Command Line Developer Tools** for Xcode. These include compilers that will allow you to build things from source. You can install them directly from the terminal with:

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

Looks for `~/Brewfile` and installs its contents.

### Oh-My-Zsh

[Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh) is a zsh configuration manager. Download it using the command:

```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Then, install the following plugins:

* [zsh-autosuggestion](https://github.com/zsh-users/zsh-autosuggestions)
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)


### Git

```
git config --global user.name "Sharynne Azhar"
git config --global user.email "sharynneazhar@gmail.com"
git config --global credential.helper osxkeychain
```

Set up the global `.gitignore` file by running the following:

```
git config --global core.excludesfile '~/.gitignore'
```

#### GitAlias

[GitAlias](https://github.com/GitAlias/gitalias) has the best git aliases out there:

```
curl -O https://raw.githubusercontent.com/GitAlias/gitalias/master/gitalias.txt
git config --global include.path '~/gitalias.txt'
```

### NVM

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

### RVM

```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
```

Export `GEM_HOME`:

```
export GEM_HOME="$HOME/.gem"
```

### VSCode

Download [VSCode](https://code.visualstudio.com/Download). Once downloaded, turn on "Settings Sync".

Install the `code` command:
* Hit **Cmd+Shift+P** to open the Command Palette
* Search for `Shell Command: Install 'code' command in PATH`
