####交叉编译平台，编译命令如下
./configure  --host=arm-linux-gnueabihf  --enable-static  --prefix=out  --disable-asm --cross-prefix=arm-linux-gnueabihf- 
如果要生成动态库，添加 --enable-shared
make 
make install

