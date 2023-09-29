const express = require("express");
const router = express.Router();
const sequelize = require("../connection/connection");
const { QueryTypes } = require('sequelize');

router.get("/", async (req, res) => {
    const catalogo = await sequelize.query("SELECT * FROM `contenido_json`", { type: QueryTypes.SELECT });
    res.status(200).send(catalogo);
});

router.get("/:id", async (req, res) => {
    const id = Number(req.params.id);
    if(Number.isNaN(id)) return res.status(400).send({message: "El código enviado debe ser un número"});
    const contenido = await sequelize.query("SELECT * FROM `contenido_json` WHERE id = ?", { 
        replacements: [id],
        type: QueryTypes.SELECT 
    });
    if(contenido.length === 0) return res.status(400).send({message: "El código enviado no corresponde a un contenido"})
    res.status(200).send(contenido);
});

router.get("/nombre/:nombre", async (req, res) => {
    const nombre = req.params.nombre;
    const contenido = await sequelize.query("SELECT * FROM `contenido_json` WHERE título LIKE :buscar_nombre", { 
        replacements: { buscar_nombre: `%${nombre}%` },
        type: QueryTypes.SELECT 
    });
    if(contenido.length === 0) return res.status(400).send({message: "La busqueda realizada no arrojo resultados, por favor intente con otra"});
    res.status(200).send(contenido);
});

router.get("/genero/all", async (req, res) => {
    const generos = await sequelize.query("SELECT nombre FROM `genero`", { type: QueryTypes.SELECT });
    const respuesta = {
        message: "Generos Disponibles",
        generos: generos
    };
    res.status(200).send(respuesta);
});

router.get("/genero/:genero", async (req, res) => {
    const genero = req.params.genero;
    const contenido = await sequelize.query("SELECT * FROM `contenido_json` WHERE genero LIKE :buscar_genero", { 
        replacements: { buscar_genero: `%${genero}%` },
        type: QueryTypes.SELECT 
    });
    if(contenido.length === 0) return res.status(400).send({message: "La busqueda realizada no arrojo resultados, por favor intente con otra"});
    res.status(200).send(contenido);
});

router.get("/categoria/:categoria", async (req, res) => {
    const categoria = req.params.categoria;
    const contenido = await sequelize.query("SELECT * FROM `contenido_json` WHERE categoria LIKE :buscar_categoria", { 
        replacements: { buscar_categoria: `%${categoria}%` },
        type: QueryTypes.SELECT 
    });
    if(contenido.length === 0) return res.status(400).send({message: "La busqueda realizada no arrojo resultados, por favor intente con otra"});
    res.status(200).send(contenido);
})

module.exports = router;