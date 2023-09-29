const express = require("express");
const router = express.Router();
const sequelize = require("../connection/connection");
const { QueryTypes } = require('sequelize');

router.get("/", async (req, res) => {
    try{
        const categorias = await sequelize.query("SELECT categoria FROM `categoria`", { type: QueryTypes.SELECT });
        res.status(200).send(categorias);
    }catch(error){
        res.status(500).send({messagge: "Ocurrió un problema en el servidor", error: error});
    }
});

module.exports = router;