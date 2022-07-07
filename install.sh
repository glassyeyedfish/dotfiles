
if [[ -d "$HOME/.config" ]]
then
    mkdir $HOME/.config
fi

cp ./bashrc $HOME/.bashrc
cp -r ./config/nvim $HOME/.config/nvim
cp ./tmux.conf $HOME/.tmux.conf
