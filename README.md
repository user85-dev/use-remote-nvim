# Use NVIM on Remote(SSH)
---
```bash
curl -sSL https://github.com/user85-dev/use-remote-nvim/raw/refs/heads/main/setup-nvim.sh | bash
```

### Older GLIBC
```bash
sudo su;

apt-get install usrmerge
echo "deb http://ftp.debian.org/debian sid main" >> /etc/apt/sources.list
apt-get update
apt-get -t sid install libc6 libc6-dev libc6-dbg
echo "Please remember to hash out sid main from your sources list. /etc/apt/sources.list"
```

#### Additional resources
1. [lazygit](https://github.com/jesseduffield/lazygit?tab=readme-ov-file#debian-and-ubuntu)

  ```bash
  LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
  curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
  tar xf lazygit.tar.gz lazygit
  sudo install lazygit -D -t /usr/local/bin/
  ```

2. [ripgrep](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation)

   ```bash
   curl -LO https://github.com/BurntSushi/ripgrep/releases/download/14.1.1/ripgrep_14.1.1-1_amd64.deb
   sudo dpkg -i ripgrep_14.1.1-1_amd64.deb
   ```
   
4. [yazi](https://yazi-rs.github.io/docs/installation#debian)

  ```bash
  sudo apt update;
  sudo apt install file -y;
  curl -LO https://github.com/sxyazi/yazi/releases/download/v25.5.31/yazi-x86_64-unknown-linux-gnu.zip; unzip yazi-x86_64-unknown-linux-gnu.zip;
  mv yazi-x86_64-unknown-linux-gnu/yazi ~/.local/bin/ 
  ```
 
