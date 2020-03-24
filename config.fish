## alias -------------

set -x LANG ja_JP.UTF-8
alias reset="source ~/.config/fish/config.fish"
alias en2ja="trans -b en:ja"
alias ja2en="trans -b ja:en"
alias nkf_sjis2utf8="nkf -w --overwrite"
alias nkf_utf82sjis="nkf -sLw --overwrite"
alias topp="glances"
alias ggl="googler -N -n 5 -t m12 -x"
# https://eng-entrance.com/linux-mount#i-7
# uid,gid は id で調べる。
alias mount_vf="sudo mount -t vfat -o uid=1001,gid=1001 /dev/sdb1 /home/kayaker/usb_mem/"
alias mount_ex="sudo mount.exfat -o uid=1001,gid=1001 /dev/sdb1 /home/kayaker/usb_mem"
alias uumount="sudo umount /dev/sdb1"
alias lls="ls -alh"
alias cl="clear"
alias kumamoto="curl -4 wttr.in/Kumamoto"

## --------------------
## cd したら自動でls -al する
function cd
  builtin cd $argv[1]
  ls -alh
end

##pecoのインストール
#https://qiita.com/naname/items/00d4c81a98c017b0fb43
#sudo apt install peco 
##fisher install
#curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
#oh-my-fishのpluginとしてfisher経由でインストールする。
#fisher add oh-my-fish/plugin-peco
function fish_user_key_bindings
    bind \cr peco_select_history
end
# theme-bobthefishのインストール。
# fisher add oh-my-fish/theme-bobthefish
