
const API_KEY = "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";


async function getCompletion(prompt) {
    const response = await fetch(`https://api.openai.com/v1/chat/completions`, {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            Authorization: 'Bearer ' + API_KEY
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