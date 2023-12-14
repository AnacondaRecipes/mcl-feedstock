mkdir build
cd build
if %ERRORLEVEL% neq 0 exit 1

cmake -GNinja ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX%  ^ 
    ..
if %ERRORLEVEL% neq 0 exit 1

cmake --build .
if %ERRORLEVEL% neq 0 exit 1

cmake --build . --target install
if %ERRORLEVEL% neq 0 exit 1
