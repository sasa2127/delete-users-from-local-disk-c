@echo off
setlocal enabledelayedexpansion

:: Lista de usuarios a eliminar
set "usuarios=P9AC00037 a accedo sccedotechnologuies Accedo Accedotech Accedotechnologies Accedo TYechnologies AccedoTechnology accedotechnologuies Accedotechnology lenovo_tmp_htnqUCIS aaa Accedo Technologies"

:: Ruta base de la carpeta de usuarios
set "rutaBase=C:\Users"

:: Iterar a través de la lista de usuarios
for %%u in (%usuarios%) do (
    set "usuario=%%u"
    set "rutaUsuario=!rutaBase!\!usuario!"
    
    :: Verificar si el usuario existe
    if exist "!rutaUsuario!" (
        echo Eliminando usuario: !usuario!
        rmdir /s /q "!rutaUsuario!"
    ) else (
        echo Usuario no encontrado: !usuario!
    )
)

endlocal
pause