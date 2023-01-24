'use strict';

const mysql = require('mysql2');
const dotenv = require('dotenv');

dotenv.config();

const init = () => {
  const pool = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
  });

  pool.query(`CREATE DATABASE IF NOT EXISTS ${process.env.DB_NAME};`,
    (err,results,fields) => {
      console.log(`Banco de dados ${process.env.DB_NAME} criado com sucesso.`);
      pool.end();
    }
  );
};

module.exports = init;