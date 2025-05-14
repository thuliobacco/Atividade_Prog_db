const express = require('express');
const router = express.Router();
const controller = require('../controllers/cursoController');

router.post('/edit/:id', controller.update);

router.post('/', controller.create);

module.exports = router;