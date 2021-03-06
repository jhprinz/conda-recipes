mkdir build
cd build
CMAKE_FLAGS="-DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_BUILD_TYPE=Release -Wno-dev"
CMAKE_FLAGS+=" -DCMAKE_C_FLAGS=-fPIC"
if [[ "$OSTYPE" == "darwin"* ]]; then
    CMAKE_FLAGS+=" -DCMAKE_OSX_DEPLOYMENT_TARGET=''"
fi

cmake $CMAKE_FLAGS ..
make -j4 install
