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

const names = ['Nathan, John'];

names.forEach((elem) => {
  User.create({
    firstName: elem
  });  
});
/*
const amounts = ['300, 100'];

amounts.forEach((elem) => {
  Invoice.create({
    amount: elem
  });  
});

const userids = ['1, 2'];

userids.forEach((elem) => {
  Invoice.create({
    userId: elem
  });  
});

const users = User.findAll({ include: Invoice });

console.log(JSON.stringify(users, null, 2));

*/