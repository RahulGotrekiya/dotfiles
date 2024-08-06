# Kanata Configuration for Caps Lock to Esc + Ctrl

## Overview

This Kanata configuration remaps the Caps Lock key to function as a combination of Esc and Ctrl. This setup allows you to use Caps Lock as either an Esc key or a Ctrl key depending on how it is tapped or held.

## Configuration

### Key Remap

The configuration consists of:

- **Caps Lock**:
  - When tapped: Sends `Esc`
  - When held: Sends `Ctrl`

### How to config

1. **Install Kanata**:

   If you haven't installed Kanata yet, you can do so using `yay`. Open your terminal and run:
   
   ```bash
   yay -S kanata
   ```
2. **Stow**

   Then go to dotfiles directory
   ```bash
   cd dotfiles
   ```

   then use GNU stow to create symlinks and stow the directory.
   ```bash
   stow kanata    
   ```

3. **If the uinput group does not exist, create a new group**

    ```bash
    sudo groupadd uinput
    ```

4. **Add your user to the input and the uinput group**

    ```bash
    sudo usermod -aG input $USER
    sudo usermod -aG uinput $USER
    ```

    Make sure that it's effective by running `groups`. You might have to logout and login.

5. **create and enable a systemd daemon service**
    Run this command first:
    ```bash
    mkdir -p ~/.config/systemd/user
    ```
    Then add this to: `~/.config/systemd/user/kanata.service:`
   ```bash
   [Unit]
    Description=Kanata keyboard remapper
    Documentation=https://github.com/jtroo/kanata

    [Service]
    Environment=PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin
    Environment=DISPLAY=:0
    Type=simple
    ExecStart=/usr/bin/sh -c 'exec $$(which kanata) --cfg $${HOME}/.config/kanata/config.kbd'
    Restart=no

    [Install]
    WantedBy=default.target
   ```
   Then run:
   ```bash
    systemctl --user daemon-reload
    systemctl --user enable kanata.service
    systemctl --user start kanata.service
    systemctl --user status kanata.service   # check whether the service is running
   ```
