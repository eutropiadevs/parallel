make all

rm -rf ~/.parallel

mkdir ~/.parallel

parallel init --chain-id test test
parallel keys add cooluser --keyring-backend test
parallel add-genesis-account cooluser 100000000000000stake,10000000000000000uparallel --keyring-backend test
parallel gentx cooluser 1000000000stake --chain-id test --keyring-backend test
parallel collect-gentxs
parallel start