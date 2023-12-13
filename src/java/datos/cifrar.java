

package datos;

import java.math.BigInteger;
import java.util.Random;


public class cifrar {
    private String [] conv = new String[] {"", "", "Q", "W", "E", "R", "T", "Y", "U", "I", "", "O", "P", 
        "A", "S", "D", "F", "G", "H", "J", "K", "L", "Ñ",
        "Z", "X", "C", "V", "B", "N", "M", "m", "n", "b",
        "v", "c", "x", "z", "ñ", "l", "k", "j", "h", "g",
        "f", "d", "s", "a", "p", "o", "i", "u", "y", "t",
        "r", "e", "w", "q", "0", "1", "3", "2", "5", "4",
        "7", "6", "8", ":", "9", "!", "#", "$", "%", "&",
        "'", "{", "}", "*", "¡", "?", "=", ")", "(", "/",
        ",", ".", "-", "_", "[", "]", "+", "|", "°", "@",
        " ", ">", "<", "`", "¿"};
    
    
    public String cifrado(String entrada){
        
        String cadena1 = entrada;
        BigInteger cadena2;
        String cadeena2 = "";
        int [] alt = new int [] {51, 17, 948, 83, 919};
        for (int i = 0; i < cadena1.length(); i++) {
            for (int j = 0; j < conv.length; j++) {
                if(String.valueOf(cadena1.charAt(i)).equals(conv[j])){
                    if(j < 11)
                        cadeena2 += "0"+ j;
                    else 
                        cadeena2 += j;
                }
            }
        }
        cadena2 = new BigInteger(cadeena2);
        Random random = new Random();
        int randomm = random.nextInt(5);
        double alterno = alt[randomm];
         
        if(alterno == 51)
            cadena2 = cadena2.multiply(new BigInteger("89"));
        else if(alterno == 17)
            cadena2 = cadena2.multiply(new BigInteger("19"));
        else if(alterno == 948)
            cadena2 = cadena2.multiply(new BigInteger("37"));
        else if(alterno == 83)
            cadena2 = cadena2.multiply(new BigInteger("97"));
        else if(alterno == 919)
            cadena2 = cadena2.multiply(new BigInteger("23"));
        String cadenafin = Double.toString(alterno);
        cadenafin = cadenafin.substring(0, cadenafin.length() - 2);
        cadeena2 = cadena2.toString();
        cadeena2 += "|" + cadenafin;
        return cadeena2;
    }
    
    
    public String descifrado(String salida){
        
        String codigo = salida;
        String cadenaO = "";
        String criterio;
        String descifrado = "";
        String par;
        int parN;
        int criterioN = 0;
        int contador = codigo.length();
        int contador2;
        int contador3;
        BigInteger codigoN;
        boolean correcto = false;
        
        for (int i = contador - 1; i > 0; i--) {
            if(codigo.charAt(i) == '|'){
                correcto = true;
                String[] partes = codigo.split("\\|");
                cadenaO += partes[0];
                criterio = partes[1];
                criterioN = Integer.parseInt(criterio);
                
            }
        }
        if(correcto == true){
            codigoN = new BigInteger(cadenaO);
            if(criterioN == 51)
                codigoN = codigoN.divide(new BigInteger("89"));
            else if(criterioN == 17)
                codigoN = codigoN.divide(new BigInteger("19"));
            else if(criterioN == 948)
                codigoN = codigoN.divide(new BigInteger("37"));
            else if(criterioN == 83)
                codigoN = codigoN.divide(new BigInteger("97"));
            else if(criterioN == 919)
                codigoN = codigoN.divide(new BigInteger("23"));
            codigo = codigoN.toString();
            contador2 = codigo.length();
            
            if(contador2 % 2 != 0)
                codigo = "0" + codigo;
            
            contador3 = codigo.length();
            
            for (int i = 0; i < contador3; i+=2) {
                par = codigo.substring(i, i + 2);
                parN = Integer.parseInt(par);
                for (int j = 0; j < conv.length; j++) {
                    if(parN == j){
                        descifrado += conv[j];
                    }
                }
            }
        }
        else
            descifrado = "El codigo no es valido ";
        return descifrado;
    }
}
