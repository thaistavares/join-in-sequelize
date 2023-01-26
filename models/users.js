const Sequelize = require('sequelize');
const sequelize = require('../db/database');

const User = sequelize.define('User',{
  id: {
    type: Sequelize.INTEGER,
    autoIncrement: true,
    allowNull: false,
    primaryKey: true
  },
  firstName: Sequelize.STRING
});

module.exports = User;