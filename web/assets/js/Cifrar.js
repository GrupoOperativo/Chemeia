class Cifrar {
    constructor() {
        this.conv = ["", "", "Q", "W", "E", "R", "T", "Y", "U", "I", "", "O", "P",
            "A", "S", "D", "F", "G", "H", "J", "K", "L", "Ñ",
            "Z", "X", "C", "V", "B", "N", "M", "m", "n", "b",
            "v", "c", "x", "z", "ñ", "l", "k", "j", "h", "g",
            "f", "d", "s", "a", "p", "o", "i", "u", "y", "t",
            "r", "e", "w", "q", "0", "1", "3", "2", "5", "4",
            "7", "6", "8", ":", "9", "!", "#", "$", "%", "&",
            "'", "{", "}", "*", "¡", "?", "=", ")", "(", "/",
            ",", ".", "-", "_", "[", "]", "+", "|", "°", "@",
            " ", ">", "<", "`", "¿"];
    }

    cifrado(entrada) {
        let cadena1 = entrada;
        let cadena2;
        let cadeena2 = "";
        const alt = [51, 17, 948, 83, 919];

        for (let i = 0; i < cadena1.length; i++) {
            for (let j = 0; j < this.conv.length; j++) {
                if (cadena1.charAt(i) === this.conv[j]) {
                    if (j < 11)
                        cadeena2 += "0" + j;
                    else
                        cadeena2 += j;
                }
            }
        }

        cadena2 = BigInt(cadeena2);
        const randomm = Math.floor(Math.random() * 5);
        const alterno = alt[randomm];

        if (alterno === 51)
            cadena2 *= BigInt(89);
        else if (alterno === 17)
            cadena2 *= BigInt(19);
        else if (alterno === 948)
            cadena2 *= BigInt(37);
        else if (alterno === 83)
            cadena2 *= BigInt(97);
        else if (alterno === 919)
            cadena2 *= BigInt(23);

        let cadenafin = alterno.toString();
        cadenafin = cadenafin.substring(0, cadenafin.length - 2);
        cadeena2 = cadena2.toString();
        cadeena2 += "|" + cadenafin;

        return cadeena2;
    }

    descifrado(salida) {
        let codigo = salida;
        let cadenaO = "";
        let criterio;
        let descifrado = "";
        let par;
        let parN;
        let criterioN = 0;
        const partes = codigo.split("|");
        let correcto = partes.length === 2;

        if (correcto) {
            cadenaO += partes[0];
            criterio = partes[1];
            criterioN = parseInt(criterio);

            let codigoN = BigInt(cadenaO);
            if (criterioN === 51)
                codigoN /= BigInt(89);
            else if (criterioN === 17)
                codigoN /= BigInt(19);
            else if (criterioN === 948)
                codigoN /= BigInt(37);
            else if (criterioN === 83)
                codigoN /= BigInt(97);
            else if (criterioN === 919)
                codigoN /= BigInt(23);

            codigo = codigoN.toString();
            let contador2 = codigo.length;

            if (contador2 % 2 !== 0)
                codigo = "0" + codigo;

            let contador3 = codigo.length;

            for (let i = 0; i < contador3; i += 2) {
                par = codigo.substring(i, i + 2);
                parN = parseInt(par);
                for (let j = 0; j < this.conv.length; j++) {
                    if (parN === j) {
                        descifrado += this.conv[j];
                    }
                }
            }
        } else {
            descifrado = "El código no es válido";
        }
        return descifrado;
    }
}
