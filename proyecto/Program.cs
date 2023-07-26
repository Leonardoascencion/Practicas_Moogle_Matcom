using System.Text.RegularExpressions;
using System.IO;
using System;
using System.Collections.Generic;

Console.WriteLine("esto funciona mas menos");
static void hacer_la_matriz()
{
int i = 0;    
List<string> documentos =new List<string> ( Directory.GetFiles(@"D:\Documents\cibernetica real\Visual base code y C#\biblioteca del proyecto")); 
//crea una lista donde cada posicion es la direccion de un txt, incluyendo el nombre como parte de la direccion
Dictionary<string,List<string>> matriz = new Dictionary<string,List<string>>();
List<string> contenido = new List<string>();
foreach (string item in contenido)
{
contenido[i].ToLower();
contenido[i] = Regex.Replace(contenido[i],@"[^\w\s]","");
i++;
}
i = 0;
foreach (string item in documentos)
{
matriz.Add (Path.GetFileName(documentos[i]),contenido);
i++;
}

}

static void query()
{
int i = 0;
string entrada = Console.ReadLine();    
string[] query = entrada.Split("");
foreach (string item in query)
{
query[i].ToLower();
query[i] = Regex.Replace(query[i],@"[^\w\s]",string.Empty);
i++;
}

}



