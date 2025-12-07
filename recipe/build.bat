@echo on

set IGRAPH_EXTRA_INCLUDE_PATH=%LIBRARY_INC%\igraph
set IGRAPH_EXTRA_LIBRARY_PATH=%LIBRARY_LIB%

%PYTHON% -m pip install . --no-deps --ignore-installed -vv
if errorlevel 1 exit 1
