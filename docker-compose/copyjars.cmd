@Echo OFF

set source=micro1-eureka-server\target
Xcopy /Y  ..\%source%\*.jar  .\%source%\

set source=micro2-config-server\target
Xcopy /Y  ..\%source%\*.jar  .\%source%\

set source=micro3-word-server\target
Xcopy /Y  ..\%source%\*.jar  .\%source%\

set target=micro4-word-server\target
Xcopy /Y  ..\%source%\*.jar  .\%target%\

set target=micro5-word-server\target
Xcopy /Y  ..\%source%\*.jar  .\%target%\

set target=micro6-word-server\target
Xcopy /Y  ..\%source%\*.jar  .\%target%\

set target=micro7-word-server\target
Xcopy /Y  ..\%source%\*.jar  .\%target%\

set source=micro4-sentence-server\target
set target=micro9-sentence-server\target
Xcopy /Y  ..\%source%\*.jar  .\%target%\

set source=micro5-zuul-server\target
set target=micro10-zuul-server\target
Xcopy /Y  ..\%source%\*.jar  .\%target%\

set source=micro6-turbine-server\target
set target=micro11-turbine-server\target
Xcopy /Y  ..\%source%\*.jar  .\%target%\