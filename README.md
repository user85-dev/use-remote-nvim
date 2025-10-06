# Use NVIM on Remote(SSH)
---
```bash
curl -LO https://github.com/user85-dev/use-remote-nvim/raw/refs/heads/main/setup-nvim.sh; chmod a+x setup-nvim.sh; ./setup-nvim.sh
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

### Additional resources
[lazygit](https://github.com/jesseduffield/lazygit?tab=readme-ov-file#debian-and-ubuntu)
