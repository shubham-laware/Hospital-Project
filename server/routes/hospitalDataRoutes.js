import { Router } from "express";
import { getHospitalData } from "../controller/gethospitalData.controller.js";

const router=Router();

router.route('/info').get(async (req,res)=>{
    try {
        const {hospitalId}=  req.query;
        const info=await getHospitalData(hospitalId);
        res.status(201).json({info}); 
    } catch (error) {
        res.status(500).json({error:'Internal Server Error'})
    }
    
}
)

export default router;