'use strict';

const initdb = require('./db');
initdb();

const sequelize = require('./db/database');
const tables = require('./models/tables');

sequelize.sync();