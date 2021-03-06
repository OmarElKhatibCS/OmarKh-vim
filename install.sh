cat << EOF
 __
/  \ _  _  _|_/|_  __ \  /||\/|
\__/|||(_|| | \| )     \/ ||  |

EOF

echo "[+] INSTALLATION START [+]"
echo "check for BACKUP : "
if [ -f "$HOME/.vimrc" ]; then
	echo "vimrc will be backup to .vimrc.bak"
	mv -f $HOME/.vimrc $HOME/.vimrc.bak
fi

if [ -f "$HOME/.config/nvim/init.vim" ]; then
	echo "nvim will be backup to nvim_backup"
	mv -f $HOME/.config/nvim/ $HOME/.config/nvim_backup
	mkdir $HOME/.config/nvim
fi

cp vimrc $HOME/.vimrc
cp init.vim $HOME/.config/nvim/init.vim
echo "[+] INSTALLATION DONE [+]"
