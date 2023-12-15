cmake . -B build -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" -DCMAKE_BUILD_TYPE=Release -G "NMake Makefiles"
if %ERRORLEVEL% neq 0 exit 1

cmake --build build
if %ERRORLEVEL% neq 0 exit 1

cmake --install build
if %ERRORLEVEL% neq 0 exit 1
