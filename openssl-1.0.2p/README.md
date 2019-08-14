### openssl库，交叉编译 静态库
./Configure linux-elf-arm -DB_ENDIAN linux:'arm-linux-gnueabihf-gcc' shared --prefix=/usr/local/openssl  
make
make install

### 交叉编译，动态库
CC=arm-linux-gnueabihf-gcc ./config no-asm shared
删除生成的Makefile文件中的所有-m64 的地方，一共有两处。
platform=ARM
make CROSS_COMPILE=arm-linux-gnueabihf-


