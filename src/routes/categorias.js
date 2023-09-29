const express = require("express");
const router = express.Router();
const sequelize = require("../connection/connection");
const { QueryTypes } = require('sequelize');

router.get("/", async (req, res) => {
    const categorias = await sequelize.query("SELECT categoria FROM `categoria`", { type: QueryTypes.SELECT });
    res.status(200).send(categorias);
});

module.exports = router;