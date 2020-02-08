#!/bin/bash

#Setup Variables
GREEN='\033[0;32m'
YELLOW='\033[0;93m'
RED='\033[0;31m'
NC='\033[0m'

#Checking OS
if [[ $(lsb_release -d) != *16.04* ]]; then
  echo -e ${RED}"The operating system is not Ubuntu 16.04. You must be running on ubuntu 16.04."${NC}
  exit 1
fi

echo -e ${YELLOW}"Welcome to the GuapCoin Automated Install, Durring this Process Please Hit Enter or Input What is Asked."${NC}
echo
echo -e ${YELLOW}"You Will See alot of code flashing across your screen, don't be alarmed it's supposed to do that. This process can take up to an hour and may appear to be stuck, but I can promise you it's not."${NC}
echo
echo -e ${GREEN}"Are you sure you want to install a GuapCoin Masternode? type y/n followed by [ENTER]:"${NC}
read AGREE

if [[ $AGREE =~ "y" ]] ; then
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for the first node:"${NC}
read privkey
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for second node:"${NC}
read privkey2
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for the third node:"${NC}
read privkey3
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 4th node:"${NC}
read privkey4
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 5th node:"${NC}
read privkey5
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 6th node:"${NC}
read privkey6
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 7th node:"${NC}
read privkey7
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 8th node:"${NC}
read privkey8
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 9th node:"${NC}
read privkey9
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 10th node:"${NC}
read privkey10
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 11th node:"${NC}
read privkey11
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 12 node:"${NC}
read privkey12
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 13 node:"${NC}
read privkey13
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 14 node:"${NC}
read privkey14
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 15 node:"${NC}
read privkey15
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 16 node:"${NC}
read privkey16
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 17 node:"${NC}
read privkey17
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 18 node:"${NC}
read privkey18
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 19 node:"${NC}
read privkey19
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 20 node:"${NC}
read privkey20
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 21 node:"${NC}
read privkey21
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 22 node:"${NC}
read privkey22
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 23 node:"${NC}
read privkey23
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 24 node:"${NC}
read privkey24
echo -e ${GREEN}"Please Enter Your Masternodes Private Key for 25 node:"${NC}
read privkey25


echo "Creating 25 GuapCoin system users with no-login access:"
sudo adduser --system --home /home/guapcoin guapcoin
sudo adduser --system --home /home/guapcoin2 guapcoin2
sudo adduser --system --home /home/guapcoin3 guapcoin3
sudo adduser --system --home /home/guapcoin4 guapcoin4
sudo adduser --system --home /home/guapcoin5 guapcoin5
sudo adduser --system --home /home/guapcoin6 guapcoin6
sudo adduser --system --home /home/guapcoin7 guapcoin7
sudo adduser --system --home /home/guapcoin8 guapcoin8
sudo adduser --system --home /home/guapcoin9 guapcoin9
sudo adduser --system --home /home/guapcoin10 guapcoin10
sudo adduser --system --home /home/guapcoin11 guapcoin11
sudo adduser --system --home /home/guapcoin12 guapcoin12
sudo adduser --system --home /home/guapcoin13 guapcoin13
sudo adduser --system --home /home/guapcoin14 guapcoin14
sudo adduser --system --home /home/guapcoin15 guapcoin15
sudo adduser --system --home /home/guapcoin16 guapcoin16
sudo adduser --system --home /home/guapcoin17 guapcoin17
sudo adduser --system --home /home/guapcoin18 guapcoin18
sudo adduser --system --home /home/guapcoin19 guapcoin19
sudo adduser --system --home /home/guapcoin20 guapcoin20
sudo adduser --system --home /home/guapcoin21 guapcoin21
sudo adduser --system --home /home/guapcoin22 guapcoin22
sudo adduser --system --home /home/guapcoin23 guapcoin23
sudo adduser --system --home /home/guapcoin24 guapcoin24
sudo adduser --system --home /home/guapcoin25 guapcoin25

sudo apt-get -y update 
sudo apt-get -y upgrade
sudo apt-get -y install software-properties-common 
sudo apt-get -y install build-essential  
sudo apt-get -y install libtool autotools-dev autoconf automake  
sudo apt-get -y install libssl-dev 
sudo apt-get -y install libevent-dev 
sudo apt-get -y install libboost-all-dev 
sudo apt-get -y install pkg-config  
sudo add-apt-repository ppa:bitcoin/bitcoin 
sudo apt-get update 
sudo apt-get -y install libdb4.8-dev 
sudo apt-get -y install libdb4.8++-dev 
sudo apt-get -y install libminiupnpc-dev libzmq3-dev libevent-pthreads-2.0-5 
sudo apt-get -y install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev
sudo apt-get -y install libqrencode-dev bsdmainutils unzip
#sudo apt install git 
cd /var 
sudo touch swap.img 
sudo chmod 600 swap.img 
sudo dd if=/dev/zero of=/var/swap.img bs=2048k count=2000 
sudo mkswap /var/swap.img 
sudo swapon /var/swap.img 
sudo echo ' /var/swap.img none swap sw 0 0 ' >> /etc/fstab
cd ~ 
sudo mkdir /root/guap
cd /root/guap
wget https://github.com/guapcrypto/Guapcoin/releases/download/1.0.0/guapcoin-1.0.0-x86_64-linux-gnu.tar.gz

tar -xzvf guapcoin-1.0.0-x86_64-linux-gnu.tar.gz
sudo mv /root/guap/guapcoind /root/guap/guapcoin-cli /root/guap/guapcoin-tx /usr/local/bin
sudo chmod 755 -R  /usr/local/bin/guapcoin*
sudo mkdir /home/guapcoin/.guapcoin
sudo touch /home/guapcoin/.guapcoin/guapcoin.conf
echo -e "${GREEN}Configuring Wallet for first node${NC}"
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin/.guapcoin/guapcoin.conf
echo "rpcport=6943" >> /home/guapcoin/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey" >> /home/guapcoin/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin/.guapcoin/guapcoin.conf
echo "staking=1" >> /home/guapcoin/.guapcoin/guapcoin.conf
sudo touch /home/guapcoin/.guapcoin/masternode.conf
echo "MN1 140.82.9.149:9633 2ZxxsVkQwPfteXSsTei9THggaronT54BKtQL7ccCU1t9dpamL3q 0051a97d19c2109eeb5ea20926df84856ba789a2c59de294072a4a95746ec49c 1" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN2 140.82.9.149:9633 2aJXhMueThSGbJZtDfugZyhZUPk6e1c4fNqvFNj5YgFjsFbicmf 0e599dd7042d051205569ee0cf62d8cca284cb0350fe9bbd2593c568057a462c 0" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN3 140.82.9.149:9633 2Zir8o4KTAaCBJu5wSsPrD3oR3iGAfJQ1nCToua7y26ED4c86iB 0fd64a43dd1a93f147a98f9bd8bf8aa3d6912ba328691def28ce3179ed2eb79f 0" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN4 140.82.9.149:9633 2YgdP7WTm43hXRsM8GdbDEQhoCmNaQbUvbUWy6DwfZ7qd9uQWir 3fb95d6569ce9a4bfbd18675aa5e28430a0862158732410d4203804ae68721ca 0" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN5 140.82.9.149:9633 2YXmxxMpwtiLzPzi1wiJaQfUET6rAFVeyzgbGtq43YKqsSxuAuH 47d062940fd07ff29a5c9c03ecead919504811157270cafb2d1156a2a7be2f45 1" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN6 140.82.9.149:9633 2ZK5SnF64qwwvAty2A9KtKo21UztK42BMi24xiSY2auixhpG1He 4dbcfa8488681986564fac673934cd49732f75fb49b8900c210dcb30de4cfd6d 0" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN7 140.82.9.149:9633 2YqyQrRFEeffJCniuV2dq6R751aPvLce4QxfoNVBs95JPmivqoU 535242208b9896af11cca488acc986cb30f6bab3a814e7f3c372fa1ea49c5352 0" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN8 140.82.9.149:9633 2Zq7Urn6D8N3tbjFZ2YpaRJmprpRVaBJY426iVhY8QDcScDVz1e 5d5e28ae8da1ab0f1059d8f81505876b5d37995137c61579c058a940610550ad 1" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN9 140.82.9.149:9633 2YnSos8QuJVYbQwwC1aXcnTbnNanpyuuDTLHqdcyDPVWrxWYJjd 712af8177a77d4f9b148da0964d4c41e30cdb1fa467fc2a1998a42b901964c71 0" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN10 140.82.9.149:9633 2Z8c5R24j2qb5Nu7ZbnExwDHTo7vXWXbQMFphMjT5fnK674Vpsp 7826c4a7954f46bd53564a610a6ec34db50294f1534675c1ac447744cf1a860e 1" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN11 140.82.9.149:9633 2Ym28Vk46hnPx43T71wbuFtC9tCVaThTHmZzuZ9VVBFd16YZ2kt 811633e290c1accb91a26eb35ea4b9c42b53c076f3c7e017bb947f3d5893d5c3 1" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN12 140.82.9.149:9633 2aASkpoGwz87tYhuS8rHvGM7J3e5XBHCF7co6Xo88awz1jSXwoR 9859359c09232ca4a2dfb9e9b8264564584d34b92ca6547330bc379614e58e9d 0" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN13 140.82.9.149:9633 2a689uDugnzAP4PDX1pa76FnNeJcbnEXM89z3aTPRve5dXdGmjJ a00f559413cc3244b92b98f5f3c87a5fed02f57433da3b57657c0be53221e0a5 1" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN14 140.82.9.149:9633 2ZMfrCJ5o9ciKejxjPpUZK8S7nQyQ9jyALbTADjSm8JrG3o1wjw b4fea62aa3149d242dd318bfcefc93dcbe274c1f22d4ab00a9237af988bed50f 0" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN15 140.82.9.149:9633 2YeAc2dMGZDGT2fswAoTZU1HUPNwM5JVxvTrpcKtqQPPGMvkGoG ba37342d4766fba75a0132a53ad1a97c7d467e6c771ec694d817e9ac39f72c22 0" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN16 140.82.9.149:9633 2a4UiVAuFREh8wRs38nbfU61vtFe3rMaNh8V2D51qwr2Nf9S4iv c0a043b23a4f33f33cd4a47219f9efbd6ce18c960b4a48d5b1b4390538978b4e 0" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN17 140.82.9.149:9633 2YjRyi4EUKkfGWjK3SvPYdow6xp9sji4NC4JQiP9WCWmdFYNLkz c57310f4575b3cf8cb9a70c7ae64bed629e17a2ee0ecc5623b6f7c6ecf89531c 1" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN18 140.82.9.149:9633 2Yyhz5Th9tNr2fDFXWFNQt9GpgBCZyNc9hXC6tKKTM8cB8ZGoQT d2ef7b4f3a7739a62741bd345b8453fe56713ec8153a38a853d0da742dcf6561 1" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN19 140.82.9.149:9633 2aBr5rfuyTkwRcDkzUGJAWyY3iPZTYNAhMHGnW5BUE44Jjm1phu ddb7114f5963c91c21e58e2987d9cadef20328bb64c8e85bedd0e61330790255 1" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN20 140.82.9.149:9633 2ZKZHCrdBFWCWcZCP8apDpqcGaDkTJ388tuqXBpnKpHuHWwXbte e0ec15315b1840db323886cd23f9e1d022382c658f09846f4ea31e41cc3c1595 0" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN21 140.82.9.149:9633 2ZMbjMLdqZoVQ6Nj44S7vX4GJxLjfmnh6QHrAkrWDiA8mRWgToR eb6a9e322fb5e9d5eb33568285fe204a4a450c7821e623dc3c3b3f8ab906c60b 0" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN22 140.82.9.149:9633 2ZxgLQAK52qydiEvsmeug6wb2pK882JT98ut6vs62opzVM2192G edd138fe5479695aaf28924ad0bb44a11c6447185aa762a311daef2ab6187d02 1" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN23 140.82.9.149:9633 2ZwHZm4qyCtYZMJjZqwqnFLDSqSkN5hH7RvYQKrGxKgGpbRjRPg ef8a8c01e055db5bfea0fa0c483ee5c0db53a9d7c9280e67111099abac56b53c 0" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN24 140.82.9.149:9633 2Yt2K5AxzhqASM4reKb95jkDiFfC62aZHX2cv8tWYJoZQZKXj2c f771dcc750d3c8d98cd336cd26b25c7cc514ab065d5280b56e1a8dc890d7f98f 0" >> /home/guapcoin/.guapcoin/masternode.conf
echo "MN25 140.82.9.149:9633 2Yqo3GbTUjB2VHDHjSm8koGmFgp6cE83vh399fZ1vRMiepDtxjD f8e272cd2d6bfd0f91ccb01d04fcdb3ad14adf7d549f7a25a67814e62a33f929 1" >> /home/guapcoin/.guapcoin/masternode.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for second node${NC}"
sudo mkdir /home/guapcoin2/.guapcoin
sudo touch /home/guapcoin2/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin2/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin2/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin2/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin2/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin2/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin2/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin2/.guapcoin/guapcoin.conf
echo "rpcport=6944" >> /home/guapcoin2/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin2/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin2/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey2" >> /home/guapcoin2/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin2/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin2/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin2/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin2/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin2/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin2/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin2/.guapcoin/guapcoin.conf


sleep 5 
echo -e "${GREEN}Configuring Wallet for third node${NC}"
sudo mkdir /home/guapcoin3/.guapcoin
sudo touch /home/guapcoin3/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin3/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin3/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin3/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin3/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin3/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin3/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin3/.guapcoin/guapcoin.conf
echo "rpcport=6945" >> /home/guapcoin3/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin3/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin3/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey3" >> /home/guapcoin3/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin3/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin3/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin3/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin3/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin3/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin3/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin3/.guapcoin/guapcoin.conf
sleep 5 

echo -e "${GREEN}Configuring Wallet for 4th node${NC}"
sudo mkdir /home/guapcoin4/.guapcoin
sudo touch /home/guapcoin4/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin4/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin4/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin4/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin4/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin4/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin4/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin4/.guapcoin/guapcoin.conf
echo "rpcport=6946" >> /home/guapcoin4/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin4/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin4/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey4" >> /home/guapcoin4/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin4/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin4/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin4/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin4/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin4/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin4/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin4/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 5th node${NC}"
sudo mkdir /home/guapcoin5/.guapcoin
sudo touch /home/guapcoin5/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin5/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin5/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin5/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin5/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin5/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin5/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin5/.guapcoin/guapcoin.conf
echo "rpcport=6947" >> /home/guapcoin5/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin5/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin5/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey5" >> /home/guapcoin5/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin5/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin5/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin5/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin5/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin5/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin5/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin5/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 6th node${NC}"
sudo mkdir /home/guapcoin6/.guapcoin
sudo touch /home/guapcoin6/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin6/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin6/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin6/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin6/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin6/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin6/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin6/.guapcoin/guapcoin.conf
echo "rpcport=6948" >> /home/guapcoin6/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin6/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin6/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey6" >> /home/guapcoin6/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin6/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin6/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin6/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin6/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin6/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin6/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin6/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 7th node${NC}"
sudo mkdir /home/guapcoin7/.guapcoin
sudo touch /home/guapcoin7/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin7/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin7/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin7/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin7/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin7/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin7/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin7/.guapcoin/guapcoin.conf
echo "rpcport=6949" >> /home/guapcoin7/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin7/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin7/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey7" >> /home/guapcoin7/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin7/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin7/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin7/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin7/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin7/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin7/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin7/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 8th node${NC}"
sudo mkdir /home/guapcoin8/.guapcoin
sudo touch /home/guapcoin8/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin8/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin8/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin8/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin8/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin8/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin8/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin8/.guapcoin/guapcoin.conf
echo "rpcport=6950" >> /home/guapcoin8/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin8/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin8/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey8" >> /home/guapcoin8/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin8/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin8/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin8/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin8/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin8/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin8/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin8/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 9th node${NC}"
sudo mkdir /home/guapcoin9/.guapcoin
sudo touch /home/guapcoin9/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin9/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin9/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin9/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin9/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin9/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin9/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin9/.guapcoin/guapcoin.conf
echo "rpcport=6951" >> /home/guapcoin9/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin9/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin9/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey9" >> /home/guapcoin9/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin9/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin9/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin9/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin9/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin9/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin9/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin9/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 10th node${NC}"
sudo mkdir /home/guapcoin10/.guapcoin
sudo touch /home/guapcoin10/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin10/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin10/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin10/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin10/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin10/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin10/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin10/.guapcoin/guapcoin.conf
echo "rpcport=6952" >> /home/guapcoin10/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin10/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin10/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey10" >> /home/guapcoin10/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin10/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin10/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin10/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin10/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin10/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin10/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin10/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 11th node${NC}"
sudo mkdir /home/guapcoin11/.guapcoin
sudo touch /home/guapcoin11/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin11/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin11/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin11/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin11/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin11/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin11/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin11/.guapcoin/guapcoin.conf
echo "rpcport=6953" >> /home/guapcoin11/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin11/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin11/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey11" >> /home/guapcoin11/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin11/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin11/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin11/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin11/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin11/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin11/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin11/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 12th node${NC}"
sudo mkdir /home/guapcoin12/.guapcoin
sudo touch /home/guapcoin12/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin12/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin12/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin12/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin12/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin12/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin12/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin12/.guapcoin/guapcoin.conf
echo "rpcport=6954" >> /home/guapcoin12/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin12/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin12/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey12" >> /home/guapcoin12/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin12/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin12/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin12/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin12/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin12/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin12/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin12/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 13th node${NC}"
sudo mkdir /home/guapcoin13/.guapcoin
sudo touch /home/guapcoin13/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin13/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin13/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin13/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin13/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin13/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin13/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin13/.guapcoin/guapcoin.conf
echo "rpcport=6955" >> /home/guapcoin13/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin13/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin13/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey13" >> /home/guapcoin13/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin13/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin13/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin13/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin13/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin13/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin13/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin13/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 14th node${NC}"
sudo mkdir /home/guapcoin14/.guapcoin
sudo touch /home/guapcoin14/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin14/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin14/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin14/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin14/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin14/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin14/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin14/.guapcoin/guapcoin.conf
echo "rpcport=6956" >> /home/guapcoin14/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin14/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin14/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey14" >> /home/guapcoin14/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin14/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin14/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin14/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin14/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin14/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin14/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin14/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 15th node${NC}"
sudo mkdir /home/guapcoin15/.guapcoin
sudo touch /home/guapcoin15/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin15/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin15/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin15/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin15/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin15/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin15/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin15/.guapcoin/guapcoin.conf
echo "rpcport=6957" >> /home/guapcoin15/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin15/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin15/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey15" >> /home/guapcoin15/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin15/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin15/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin15/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin15/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin15/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin15/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin15/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 16th node${NC}"
sudo mkdir /home/guapcoin16/.guapcoin
sudo touch /home/guapcoin16/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin16/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin16/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin16/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin16/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin16/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin16/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin16/.guapcoin/guapcoin.conf
echo "rpcport=6958" >> /home/guapcoin16/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin16/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin16/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey16" >> /home/guapcoin16/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin16/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin16/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin16/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin16/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin16/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin16/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin16/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 17th node${NC}"
sudo mkdir /home/guapcoin17/.guapcoin
sudo touch /home/guapcoin17/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin17/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin17/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin17/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin17/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin17/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin17/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin17/.guapcoin/guapcoin.conf
echo "rpcport=6959" >> /home/guapcoin17/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin17/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin17/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey17" >> /home/guapcoin17/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin17/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin17/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin17/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin17/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin17/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin17/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin17/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 18th node${NC}"
sudo mkdir /home/guapcoin18/.guapcoin
sudo touch /home/guapcoin18/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin18/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin18/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin18/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin18/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin18/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin18/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin18/.guapcoin/guapcoin.conf
echo "rpcport=6960" >> /home/guapcoin18/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin18/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin18/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey18" >> /home/guapcoin18/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin18/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin18/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin18/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin18/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin18/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin18/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin18/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 19th node${NC}"
sudo mkdir /home/guapcoin19/.guapcoin
sudo touch /home/guapcoin19/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin19/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin19/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin19/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin19/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin19/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin19/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin19/.guapcoin/guapcoin.conf
echo "rpcport=6961" >> /home/guapcoin19/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin19/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin19/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey19" >> /home/guapcoin19/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin19/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin19/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin19/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin19/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin19/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin19/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin19/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 20th node${NC}"
sudo mkdir /home/guapcoin20/.guapcoin
sudo touch /home/guapcoin20/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin20/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin20/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin20/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin20/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin20/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin20/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin20/.guapcoin/guapcoin.conf
echo "rpcport=6962" >> /home/guapcoin20/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin20/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin20/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey20" >> /home/guapcoin20/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin20/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin20/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin20/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin20/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin20/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin20/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin20/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 21 node${NC}"
sudo mkdir /home/guapcoin21/.guapcoin
sudo touch /home/guapcoin21/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin21/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin21/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin21/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin21/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin21/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin21/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin21/.guapcoin/guapcoin.conf
echo "rpcport=6963" >> /home/guapcoin21/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin21/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin21/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey21" >> /home/guapcoin21/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin21/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin21/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin21/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin21/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin21/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin21/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin21/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 22 node${NC}"
sudo mkdir /home/guapcoin22/.guapcoin
sudo touch /home/guapcoin22/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin22/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin22/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin22/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin22/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin22/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin22/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin22/.guapcoin/guapcoin.conf
echo "rpcport=6964" >> /home/guapcoin22/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin22/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin22/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey22" >> /home/guapcoin22/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin22/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin22/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin22/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin22/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin22/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin22/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin22/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 23 node${NC}"
sudo mkdir /home/guapcoin23/.guapcoin
sudo touch /home/guapcoin23/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin23/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin23/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin23/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin23/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin23/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin23/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin23/.guapcoin/guapcoin.conf
echo "rpcport=6965" >> /home/guapcoin23/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin23/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin23/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey23" >> /home/guapcoin23/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin23/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin23/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin23/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin23/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin23/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin23/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin23/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 24 node${NC}"
sudo mkdir /home/guapcoin24/.guapcoin
sudo touch /home/guapcoin24/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin24/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin24/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin24/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin24/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin24/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin24/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin24/.guapcoin/guapcoin.conf
echo "rpcport=6966" >> /home/guapcoin24/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin24/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin24/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey24" >> /home/guapcoin24/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin24/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin24/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin24/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin24/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin24/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin24/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin24/.guapcoin/guapcoin.conf
sleep 5

echo -e "${GREEN}Configuring Wallet for 25 node${NC}"
sudo mkdir /home/guapcoin25/.guapcoin
sudo touch /home/guapcoin25/.guapcoin/guapcoin.conf
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin25/.guapcoin/guapcoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /home/guapcoin25/.guapcoin/guapcoin.conf
echo "rpcallowip=127.0.0.1" >> /home/guapcoin25/.guapcoin/guapcoin.conf
echo "server=1" >> /home/guapcoin25/.guapcoin/guapcoin.conf
echo "daemon=1" >> /home/guapcoin25/.guapcoin/guapcoin.conf
echo "maxconnections=250" >> /home/guapcoin25/.guapcoin/guapcoin.conf
echo "masternode=1" >> /home/guapcoin25/.guapcoin/guapcoin.conf
echo "rpcport=6967" >> /home/guapcoin25/.guapcoin/guapcoin.conf
echo "listen=0" >> /home/guapcoin25/.guapcoin/guapcoin.conf
echo "externalip=$(hostname  -I | cut -f1 -d' '):9633" >> /home/guapcoin25/.guapcoin/guapcoin.conf
echo "masternodeprivkey=$privkey25" >> /home/guapcoin25/.guapcoin/guapcoin.conf
echo "addnode=155.138.164.206" >> /home/guapcoin25/.guapcoin/guapcoin.conf
echo "addnode=144.202.23.61" >> /home/guapcoin25/.guapcoin/guapcoin.conf
echo "addnode=159.65.221.180" >> /home/guapcoin25/.guapcoin/guapcoin.conf
echo "addnode=165.227.192.223" >> /home/guapcoin25/.guapcoin/guapcoin.conf
echo "addnode=159.65.217.114" >> /home/guapcoin25/.guapcoin/guapcoin.conf
echo "addnode=165.227.83.244" >> /home/guapcoin25/.guapcoin/guapcoin.conf
echo "staking=0" >> /home/guapcoin25/.guapcoin/guapcoin.conf
sleep 5

fi
echo "Syncing first node, please wait...";
guapcoind -datadir=/home/guapcoin/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10
echo "Syncing second node, please wait...";
guapcoind -datadir=/home/guapcoin2/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin2/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"Second node is fully synced. You second masternode is running!"${NC}
sleep 10
echo "Syncing third node, please wait...";
guapcoind -datadir=/home/guapcoin3/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin3/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"Third node is fully synced. You third masternode is running!"${NC}
sleep 10
echo "Syncing fourth node, please wait...";
guapcoind -datadir=/home/guapcoin4/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin4/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"Last node is fully synced. You fourth masternode is running!"${NC}
sleep 10

echo "Syncing 5 node, please wait...";
guapcoind -datadir=/home/guapcoin5/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin5/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 6 node, please wait...";
guapcoind -datadir=/home/guapcoin6/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin6/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 7 node, please wait...";
guapcoind -datadir=/home/guapcoin7/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin7/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 8 node, please wait...";
guapcoind -datadir=/home/guapcoin8/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin8/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 9 node, please wait...";
guapcoind -datadir=/home/guapcoin9/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin9/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 10 node, please wait...";
guapcoind -datadir=/home/guapcoin10/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin10/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 11 node, please wait...";
guapcoind -datadir=/home/guapcoin11/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin11/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 12 node, please wait...";
guapcoind -datadir=/home/guapcoin12/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin12/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 13 node, please wait...";
guapcoind -datadir=/home/guapcoin13/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin13/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 14 node, please wait...";
guapcoind -datadir=/home/guapcoin14/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin14/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 15 node, please wait...";
guapcoind -datadir=/home/guapcoin15/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin15/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 16 node, please wait...";
guapcoind -datadir=/home/guapcoin16/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin16/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 17 node, please wait...";
guapcoind -datadir=/home/guapcoin17/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin17/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 18 node, please wait...";
guapcoind -datadir=/home/guapcoin18/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin18/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 19 node, please wait...";
guapcoind -datadir=/home/guapcoin19/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin19/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 20 node, please wait...";
guapcoind -datadir=/home/guapcoin20/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin20/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 22 node, please wait...";
guapcoind -datadir=/home/guapcoin22/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin22/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 23 node, please wait...";
guapcoind -datadir=/home/guapcoin23/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin23/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 24 node, please wait...";
guapcoind -datadir=/home/guapcoin24/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin24/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo "Syncing 25 node, please wait...";
guapcoind -datadir=/home/guapcoin25/.guapcoin -daemon
sleep 10 
until guapcoin-cli -datadir=/home/guapcoin25/.guapcoin mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. You 1st masternode is running!"${NC}
sleep 10

echo -e ${GREEN}"DONE!"${NC}