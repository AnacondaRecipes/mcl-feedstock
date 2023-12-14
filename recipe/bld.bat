mkdir build
cd build
if %ERRORLEVEL% neq 0 exit 1

cmake -GNinja ^
    -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
    -DMCL_STATIC_LIB=OFF ^
    ..

if %ERRORLEVEL% neq 0 exit 1

ninja -v -w dupbuild=warn
:: cmake --build . -- -w dupbuild=warn
if %ERRORLEVEL% neq 0 exit 1


ninja -v -w dupbuild=warn install
:: cmake --build . -- -w dupbuild=warn --target install
if %ERRORLEVEL% neq 0 exit 1
