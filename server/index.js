import express from 'express';
import multer from 'multer';
import bodyParser from 'body-parser';
import dotenv from 'dotenv'
import cors from 'cors'
import patientRoutes from './routes/patientRoutes.js';
import hostpiatlDataRoutes from './routes/hospitalDataRoutes.js';


dotenv.config();

const app=express();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.json());
app.use(cors());

const storage = multer.memoryStorage(); // You can customize storage as needed
const upload = multer({ storage: storage });

// Middleware to handle file uploads
app.use(upload.any());

const port=process.env.PORT

app.get('/',(req,res)=>{
    res.send("welcome")
})

app.use('/patient',patientRoutes);
app.use('/hospital',hostpiatlDataRoutes)



app.listen(port,()=>{
    console.log('server started on',port)
})