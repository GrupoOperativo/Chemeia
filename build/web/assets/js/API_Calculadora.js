var llave = "";
    const clave = {
        'a': 'b', 'b': 'c', 'c': 'd', 'd': 'e', 'e': 'f',
        'f': 'g', 'g': 'h', 'h': 'i', 'i': 'j', 'j': 'k',
        'k': 'l', 'l': 'm', 'm': 'n', 'n': 'o', 'o': 'p',
        'p': 'q', 'q': 'r', 'r': 's', 's': 't', 't': 'u',
        'u': 'v', 'v': 'w', 'w': 'x', 'x': 'y', 'y': 'z',
        'z': 'a', 'A': 'B', 'B': 'C', 'C': 'D', 'D': 'E',
        'E': 'F', 'F': 'G', 'G': 'H', 'H': 'I', 'I': 'J',
        'J': 'K', 'K': 'L', 'L': 'M', 'M': 'N', 'N': 'O',
        'O': 'P', 'P': 'Q', 'Q': 'R', 'R': 'S', 'S': 'T',
        'T': 'U', 'U': 'V', 'V': 'W', 'W': 'X', 'X': 'Y',
        'Y': 'Z', 'Z': 'A',
        '0': '1', '1': '2', '2': '3', '3': '4', '4': '5',
        '5': '6', '6': '7', '7': '8', '8': '9', '9': '0',
        '-': '_'
    };
function cifrarMensaje(mensaje) {

    let resultado = '';
    for (let i = 0; i < mensaje.length; i++) {
        const char = mensaje[i];
        resultado += clave[char] || char;
    }

    return resultado;
}

function descifrarMensaje(mensajeCifrado) {
    
    const claveInversa = {};
    Object.keys(clave).forEach((key) => {
        claveInversa[clave[key]] = key;
    });

    let resultado = '';
    for (let i = 0; i < mensajeCifrado.length; i++) {
        const char = mensajeCifrado[i];
        resultado += claveInversa[char] || char;
    }

    return resultado;
}


async function getCompletion(prompt) {
    llave = descifrarMensaje("tl_9a00nz33IECyZLX8rSbVU4CmclGKkfpkMKRoPf9vlwLjGEAD");
    console.log("Mensaje descifrado:", llave);
    const response = await fetch(`https://api.openai.com/v1/chat/completions`, {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            Authorization: 'Bearer ' + llave
        },
        body: JSON.stringify({
            model: "gpt-3.5-turbo-0301",
            messages: [{"role": "user", "content": prompt}],
         
            
        })
    })


    const data = await response.json();
    return data;
}

var prompt_1 = "Proporcióneme información sobre un compuesto o elemento inorgánico. Por favor, indique el nombre IUPAC, la fórmula química y el nombre común (si está disponible) de ";
var prompt_2 = ". Si no se trata de un compuesto o elemento inorgánico, o si está mal escrito, la respuesta debe indicar que no es para eso, únicamente mostrando la respuesta a la solicitud.";
var prompt = document.querySelector("#prompt");
const boton = document.querySelector("#generate");
const output = document.querySelector("#output");
//"(Dame el nombre IUPAC o formula si te doy el nombre, en caso de que lo anterior no sea un compuesto bien escrito, comenta lo siguiente Ingresa un compuesto químico válido. todo estosin decir ni una palabra que no sea el compuesto, o nombre)."

boton.addEventListener("click", async () => {
    console.log(prompt.value + prompt_1);
    if (!prompt.value)
        window.alert("Introduce tu compuesto");
    const resultado = await getCompletion(prompt_1 + prompt.value + prompt_2);
    console.log(resultado);
    output.innerHTML = resultado.choices[0].message.content;
});