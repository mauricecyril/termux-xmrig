apt-get update -y
apt-get upgrade -y
termux-setup-storage
apt-get install -y cmake git wget proot build-essential cmake libmicrohttpd 

git clone https://github.com/xmrig/xmrig

sed -i 's/constexpr const int kDefaultDonateLevel = 1;/constexpr const int kDefaultDonateLevel = 0;/g' xmrig/src/donate.h
sed -i 's/constexpr const int kMinimumDonateLevel = 1;/constexpr const int kMinimumDonateLevel = 0;/g' xmrig/src/donate.h
mkdir xmrig/build
cd xmrig/build
cmake -DWITH_HWLOC=OFF ..
make -j10
