# setup jonas' dev env


# move stuff from this repo to the required places
cp nvim ~/.config/nvim

search_dir=home
for entry in "$search_dir"/*
do
    cp entry ~/$entry
done

# update the system
sudo apt update
sudo apt upgrade -y

# install curl. cuz apparently thats not install by default on all linux systems
sudo apt install curl -y

# install npm
sudo apt install npm -y

# install rust and cargo
curl https://sh.rustup.rs -sSf | sh

# install nvim and all its dependencys
# install all the prerequisits for building nvim from source
sudo apt-get install ninja-build gettext libtool-bin cmake g++ pkg-config unzip

# install nvim its self
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd -
# remove the neovim dir
rm -rf neovim

# install packer-nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# print out info after installing everything
echo "run PackerSync in nvim to install all the things"
