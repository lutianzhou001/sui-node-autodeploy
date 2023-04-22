sudo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup update stable
apt-get update
apt install curl

apt-get install git-all
apt-get install cmake
apt-get install gcc
apt-get install libssl-dev
apt-get install pkg-config
apt-get install libclang-dev
apt-get install libpq-dev
apt-get install build-essential
cargo install --locked --git https://github.com/MystenLabs/sui.git --branch devnet sui sui-test-validator
sui-test-validator

git clone "https://github.com/MoveExchange/DeepBook-SDK"
git checkout vincent_frontend_intergration
cd DeepBook-SDK
ts-node ./scripts/faucet.ts
ts-node ./scripts/test-setup.ts