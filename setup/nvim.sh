sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim

git clone https://github.com/nickchahley/nivm ~/.config/nvim

# hardcoded backundoswap, could ideally read this from somewhere like
# vim.env.BACKUNDOSWAP
mkdir ~/.vim-backundoswap
