import mysql from 'mysql2'
import dotenv from 'dotenv';
dotenv.config()


const pool=mysql.createPool({
    host:process.env.MySQL_HOST,
    user:process.env.MySQL_USER,
    password:process.env.MySQL_PASSWORD,
    database:process.env.MySQL_DB
}).promise();





export default pool;