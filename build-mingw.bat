@echo off

set LUA_LIB=X:/tools/luarocks/2.0
set LUA_INC=X:/tools/luarocks/2.0/include

gcc -L%LUA_LIB% -I%LUA_INC% -I. sha2.c sha2lib.c -DSHA2_USE_INTTYPES_H -DBYTE_ORDER -DLITTLE_ENDIAN -llua51 -shared -o sha2.dll

