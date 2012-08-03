  CONFIG += debug_and_release thread precompile_header
  QT += network sql webkit
  DEFINES += QT_THREAD_SUPPORT AVALON_USE_ASPELL AVALON_USE_ZLIB
  unix:LIBS += -laspell -lz
  win32:LIBS += "$$_PRO_FILE_PWD_/thirdparty/lib/win32/aspell-15.lib" "$$_PRO_FILE_PWD_/thirdparty/lib/win32/zlib.lib"
  TEMPLATE = app
  TARGET = avalon
  DEPENDPATH += . model storage
  INCLUDEPATH += . model storage ./thirdparty/include
  
include (avalon.pri)
