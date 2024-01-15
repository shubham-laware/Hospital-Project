import { Router } from "express";
import multer from "multer";
import { getPatient, newPatient } from "../controller/patient.controller.js";
import path from "path";
import cloudinary from "../config/cloudinary.js";
import { Readable } from "stream";
import fs from "fs/promises";
import { tmpdir } from "os";
import { join } from "path";

const router = Router();

const storage = multer.memoryStorage(); 
const upload = multer({ storage: storage });

router.route("/register").post(async (req, res) => {
  const { name, address, email, phone_number, password } = req.body;

  try {
    if (!name || typeof name !== "string") {
      return res.status(400).json({ error: "Invalid name" });
    }

    if (!address || typeof address !== "string" || address.length < 10) {
      return res
        .status(400)
        .json({ error: "Address length must be at least 10" });
    }

    const emailRegex = /^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    if (!email || !emailRegex.test(email)) {
      return res.status(400).json({ error: "Invalid email" });
    }

    const phoneRegex = /^\+91\s*\d{10}$/;
    if (!phone_number || !phoneRegex.test(phone_number)) {
      return res.status(400).json({
        error:
          "Phone number should start with country code +91 and should be 10 digits",
      });
    }

    const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,15}$/;
    if (!password || !passwordRegex.test(password)) {
      return res.status(400).json({
        error:
          " Password must contain at least one uppercase letter, one lowercase letter, and one number. The length should be between 8 and 15 characters.",
      });
    }

    let image_url;
    let tempFilePath;
    if (!req.files) {
      return res.status(201).json({ error: "No image uploaded" });
    }

    const allowedExtension = [".jpeg", ".jpg", ".png"];
    const fileExtension = path.extname(req.files[0].originalname).toLowerCase();

    if (!allowedExtension.includes(fileExtension)) {
      return res.status(201).json({
        error: "Invalid image format, .jpeg, .jpg, .png only accepted",
      });
    } else {
      const bufferStream = new Readable();
      bufferStream.push(req.files[0].buffer);
      bufferStream.push(null);

      let buffer = Buffer.concat([]);

      bufferStream.on("data", (chunk) => {
        buffer = Buffer.concat([buffer, chunk]);
      });

      bufferStream.on("end", async () => {
        try {
        tempFilePath = join(tmpdir(), "temp_image");
          await fs.writeFile(tempFilePath, buffer);

          const cloudinaryResponse = await cloudinary.uploader.upload(
            tempFilePath,
            {
              folder: "patientImg",
            }
          );


          image_url = cloudinaryResponse.secure_url;

          const assignPsychiatrist = Math.floor(Math.random() * 10) + 1;
          const patient = await newPatient(
            name,
            address,
            email,
            phone_number,
            password,
            image_url,
            assignPsychiatrist
          );
          res.status(201).json({ patient })

        } catch (error) {
          console.log(error);
        } finally {
          if (tempFilePath) {
            await fs.unlink(tempFilePath);
          }
        }
      });
    }

   ;
  } catch (error) {
    console.log(error);
  }
});

export default router;
