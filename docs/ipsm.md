/* package whatever; // don't place package name! */

import java.util.*;
import java.lang.*;
import java.io.*;

/* Name of the class has to be "Main" only if the class is public. */
class GeraSenhaIntegracao
{

public static String encriptarCesar(int chave, String texto){
       
        StringBuilder textoCifrado = new StringBuilder();
        int tamanhoTexto = texto.length();
        for(int c=0; c < tamanhoTexto; c++){
           int letraCifradaASCII = ((int) texto.charAt(c)) + chave;
           while(letraCifradaASCII > 126)
              letraCifradaASCII -= 94;
           textoCifrado.append( (char)letraCifradaASCII );
        }
       
        return textoCifrado.toString();
     }

    public static String encodeHex(String base)
    {
// Step-1 - Convert ASCII string to char array
      char[] ch = base.toCharArray();

      StringBuilder builder = new StringBuilder();
      for (char c : ch) {
         // Step-2 Use %H to format character to Hex
         String hexCode=String.format("%H", c);
         builder.append(hexCode);
      }
      return builder.toString();  
}

public static void main (String[] args) throws java.lang.Exception
{
System.out.println(encodeHex(encriptarCesar(7907, "oculos123")));
}
}