const Sequelize = require('sequelize');
const sequelize = require('../db/database');

const User = require('./models/users');

const Invoice = sequelize.define('Invoice',{
  id: {
    type: Sequelize.INTEGER,
    autoIncrement: true,
    allowNull: false,
    primaryKey: true
  },
  amount: Sequelize.INTEGER,
  userId: Sequelize.INTEGER
});

Invoice.belongsTo(User, { foreignKey: 'userId' });

module.exports = Invoice;
