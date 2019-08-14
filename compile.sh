##############  编译整个RTMP所需的库文件，##############
CC=mips-linux-gnu-

## 1's zlib
echo "Start generating libz.so......."
cd ./zlib-* 
./configure --prefix=out
make
if[ $? -eq 0 ]; then
	cp out/libz.*  ../lib/
fi

## 2's openssl
echo "Start generating libssl.so......."
cd ../openssl-* 

