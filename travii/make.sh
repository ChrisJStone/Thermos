mkdir $HOME/release
rm -r $HOME/release/*

# 2768
cd MinecraftForge
git checkout 76c138c40043431a6cdecf674570d757d89b26c7
cd ..
git pull origin 1.12.x
./gradlew --parallel -PofficialBuild clean setupCauldron --parallel jar
cp build/distributions/Thermos*server* $HOME/release/Thermos-1.12.1-2768-server.jar

# 2770
cd MinecraftForge
git checkout 1ba084f131975e1e38181c21f8b9f1e9cab6f9ba
cd ..
git pull origin 1.12.x
./gradlew --parallel -PofficialBuild clean setupCauldron --parallel jar packageBundle
cp build/distributions/Thermos*server* $HOME/release/Thermos-1.12.1-2770-server.jar

cd build/distributions/
unzip Thermos*bundle*zip
rm -r bin/unknown
mv bin libraries
zip -r libraries.zip libraries
cp libraries.zip $HOME/release
