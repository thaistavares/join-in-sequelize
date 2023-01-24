const Sequelize = require('sequelize');
const sequelize = require('../db/database');

const user = require('./user');

const invoice = sequelize.define('invoice',{
  id: {
    type: Sequelize.INTEGER,
    autoIncrement: true,
    allowNull: false,
    primaryKey: true
  },
  amount: Sequelize.INTEGER,
  userId: Sequelize.INTEGER,
  timestamps: false
});

invoice.belongsTo(user, { foreignKey: 'userId' });

module.exports = invoice;