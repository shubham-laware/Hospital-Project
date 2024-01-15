import pool from "../config/db.js";

async function getPatient(id){
    const [result]= await pool.query(`SELECT * FROM patients WHERE patient_id= ?`,[id])
    return result;
}

async function newPatient(name,address,email,phone_number,password,patient_photo,psychiatrists_id){
    const result=await pool.query(`
    INSERT INTO patients (name, address, email, phone_number, password, patient_photo,psychiatrists_id) VALUES(?,?,?,?,?,?,?)
    `,[name,address,email,phone_number,password,patient_photo,psychiatrists_id]);
    const id=await result[0].insertId;
    return getPatient(id)

}

export {getPatient,newPatient};