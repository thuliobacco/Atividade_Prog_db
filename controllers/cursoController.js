const Curso = require('../models/curso');

exports.create = async (req, res) => {
  const { nome } = req.body;
  await Curso.create(nome);
  res.redirect('/alunos');
};

exports.update = async (req, res) => {
  const { id } = req.params;
  const { nome } = req.body;
  await Curso.update(id, nome);
  res.redirect('/alunos');
};