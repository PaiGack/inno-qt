mkdir out 2> nul
xcopy build-InnoDemo-Desktop_Qt_5_15_2_MSVC2019_32bit-Release\release\InnoDemo.exe out /s /y

D:\Qt\5.15.2\msvc2019\bin\windeployqt.exe --quick --no-translations --no-opengl-sw out\InnoDemo.exe

xcopy D:\Qt\vcredist\vcredist_x86.exe out /s /y
xcopy D:\Qt\vcredist\vcredist_msvc2019_x86.exe out /s /y

call "C:\Program Files (x86)\Inno Setup 6.\ISCC.exe" .\inno.iss
