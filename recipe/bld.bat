mkdir build
cd build
if %ERRORLEVEL% neq 0 exit 1


cmake -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
    .. -A x64
msbuild mcl.sln /p:Configuration=Release /m

if %ERRORLEVEL% neq 0 exit 1
