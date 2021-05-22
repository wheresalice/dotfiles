# dotfiles

Bootstrap:

```bash
git clone https://github.com/TheLocehiliosan/yadm.git ~/.yadm-project \
&& mkdir -p ~/bin  \
&& ln -s ~/.yadm-project/yadm ~/bin/yadm \
&& export PATH=$PATH:~/bin \
&& yadm clone https://github.com/wheresalice/dotfiles.git
```
