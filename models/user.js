const Sequelize = require('sequelize');
const sequelize = require('../db/database');

const user = sequelize.define('user',{
  id: {
    type: Sequelize.INTEGER,
    autoIncrement: true,
    allowNull: false,
    primaryKey: true
  },
  firstName: Sequelize.STRING,
  timestamps: false
});

module.exports = user;