<div>
  <h1 align="center">My dotfiles<p align="center" dir="auto"> </p></h1>
  
</div>

## ⚡ Screenshots

- **Zsh**

<div align="center">
  <img  align="center" src="https://github.com/RahulGotrekiya/dotfiles/assets/121397381/2af02d11-43c1-43a6-ac05-19374e1eb59f" width="600">
</div>

## 🚀 Requirements

Ensure you have the following installed on your system

### Git

```
sudo dnf install git
```

### Stow

```
sudo dnf install stow
```

## ⚙️ Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone https://github.com/RahulGotrekiya/dotfiles.git
```

Then go to dotfiles directory

```
$ cd dotfiles
```

then use GNU stow to create symlinks and stow the directory.

Ex.

```
$ stow zsh
```
