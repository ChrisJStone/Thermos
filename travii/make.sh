mkdir $HOME/release
rm -r $HOME/release/*

# 2185
cd MinecraftForge
git checkout 7065cb36bf8f1f7a5ad14c0abc2c72e5e5d731ed
cd ..
git pull origin 1.10.x
./gradlew --parallel -PofficialBuild clean setupCauldron --parallel jar packageBundle
cp build/distributions/Thermos*server* $HOME/release/Thermos-1.10.2-2185-server.jar

# 2511
cd MinecraftForge
git checkout e4caf46cb954ea86fe338cd256402cd84f824586
cd ..
git pull origin 1.10.x
./gradlew --parallel -PofficialBuild clean setupCauldron --parallel jar packageBundle
cp build/distributions/Thermos*server* $HOME/release/Thermos-1.10.2-2511-server.jar

cd build/distributions/
unzip Thermos*bundle*zip
rm -r bin/unknown
mv bin libraries
zip -r libraries.zip libraries
cp libraries.zip $HOME/release
