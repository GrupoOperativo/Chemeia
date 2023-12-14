const WebSocket = require('ws');
const express = require('express');
const http = require('http');
const path = require('path');

const app = express();
const server = http.createServer(app);
const wss = new WebSocket.Server({ server });

app.use(express.static(path.join(__dirname, 'public')));

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'web', 'soporteUs.jsp'));
});

wss.on('connection', (ws) => {
    console.log('Cliente conectado');

    ws.on('message', (message) => {
        try {
            const messageData = JSON.parse(message);
            console.log('Mensaje recibido:', messageData);

            // Envía el mensaje a todos los clientes, incluido el remitente
            wss.clients.forEach((client) => {
                if (client.readyState === WebSocket.OPEN) {
                    client.send(JSON.stringify(messageData));
                }
            });
        } catch (error) {
            console.error('Error al parsear el mensaje JSON:', error);
        }
    });

    ws.on('close', () => {
        console.log('Cliente desconectado');
    });
});

const PORT = process.env.PORT || 3007;
server.listen(PORT, () => {
    console.log(`Servidor escuchando en server_de_gerdoc:${PORT}`);
});
