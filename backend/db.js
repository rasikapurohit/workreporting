import mysql from 'mysql2';
import dotenv from 'dotenv';
dotenv.config();

// pool is the collection of connections to the database
const pool = mysql.createPool({
    host:  process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD,
    database: process.env.MYSQL_DATABASE
}).promise()

async function getNotes(){
    const [row] = await pool.query('SELECT * FROM NOTES');
    return row;
}

const notes = await getNotes();

console.log(notes);