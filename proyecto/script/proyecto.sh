#!/bin/bash
#Este es un comentario

echo "Introduzca el comando a usar"
echo "Escriba start para ejecutar el proyecto"
echo "Escriba Presentación para ejecutar el latex de la presentación"
echo "Escriba Informe para ejecutar el latex del informe"
echo "Escriba Presentación_PDF para ejecutar y abrir el PDF de la Presentación"
echo "Escriba Informe_PDF para ejecutar y abrir el PDF del Informe"
echo "Escriba Eliminar para eliminar los archivos innecesarios generados por los latex"
echo "Escriba exit para terminar la ejecución del programa"
read comando

start ()
{
cd ..
bash program.cs
}

Presentación ()
{
cd ..
cd Presentación
pdflatex Presentación_tex
}

Informe()
{
cd ..
cd Informe
pdflatex Informe_tex
}

Informe_PDF()
{
cd ..
cd Informe
pdflatex Informe_tex
nombre_pdf = "${Informe_tex.*}"
xdg-open "nombre_pdf"
}

Presentación_PDF ()
{
cd ..
cd Presentación
pdflatex Presentación_tex
nombre_pdf = "${Presentación_tex.*}"
xdg-open "nombre_pdf"
}

Eliminar()
{
cd ..
cd Informe
shopt -s extglob rm -rf !("Informe.tex") shopt -un extglob
cd ..
cd Presentación
shopt -s extglob rm -rf !("Presentación.tex") shopt -un extglob
}

wile ["$comando" != exit] do
if [ "$comando" == "start" ]; then
start
if [ "$comando" == "Presentación" ]; then 
Presentación
if [ "$comando" == "Informe" ]; then 
Informe
if [ "$comando" == "Informe_PDF" ]; then 
Informe_PDF
if [ "$comando" == "Presentación_PDF" ]; then 
Presentación_PDF
else 
echo "Entrada invalida"
fi
[read comando]