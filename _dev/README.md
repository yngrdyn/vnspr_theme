# Errores Windows

Para el error:

error MSB4019: No se encuentra el proyecto importado "D:\Microsof t.Cpp.Default.props". Asegúrese de que la ruta de acceso de la declaración <Import> es correcta y de que el archivo se encuentra en el disco.

Ejecutar en consola con derechos de administración y en la ruta del _dev del theme

1. npm install --global --production windows-build-tools

2. npm i

3. npm run watch

Esto va a crear un directorio .vs en el proyecto, que se excluye mediante .gitignore