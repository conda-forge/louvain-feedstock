@echo on

set IGRAPH_EXTRA_INCLUDE_PATH=%LIBRARY_INC%\igraph
set IGRAPH_EXTRA_LIBRARY_PATH=%LIBRARY_LIB%

sed -i "s/self.use_pkgconfig = False/self.use_pkgconfig = True/" setup.py
sed -i "s/self.external = False/self.external = True/" setup.py

%PYTHON% -m pip install . --no-deps --ignore-installed -vv
if errorlevel 1 exit 1
