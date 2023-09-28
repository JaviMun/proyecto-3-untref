const dotenv = require('dotenv');
dotenv.config();
const express = require('express');

const sequelize = require("./connection/connection")
const catalogo = require("./routes/catalogo")
const categorias = require("./routes/categorias")

const server = express();

// Middlewares
server.use(express.json());

//Rutas a catalogo
server.use("/catalogo", catalogo)

//Rutas a categorias
server.use("/categorias", categorias)

// Control de rutas inexistentes
server.use('*', (req, res) => {
    res.status(404).send({ message: `La URL indicada no existe en este servidor` });
});

// Método oyente de solicitudes
sequelize.authenticate().then(() => {
    sequelize.sync({ force: false }).then(()=>{
        server.listen(process.env.PORT, process.env.HOST, () => {
            console.log(`El servidor está escuchando en: http://${process.env.HOST}:${process.env.PORT}`);
        });
    }).catch(()=>{
        console.log("Hubo un problema con la sincronización con la base de datos.")
    })
}).catch(() => {
    console.log("Hubo un problema con la conección a la base de datos.")
});
