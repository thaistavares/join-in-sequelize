'use strict';

const initdb = require('./db');
initdb();

const sequelize = require('./db/database');
const User = require('./models/users');
const Invoice = require('./models/invoices');

*/
const names = ['Nathan', 'John'];

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

const userids = ['1', '2'];

userids.forEach((elem) => {
  Invoice.create({
    userId: elem
  });  
});
/*
const users = User.findAll({ include: Invoice });

console.log(JSON.stringify(users, null, 2));

*/
sequelize.sync();