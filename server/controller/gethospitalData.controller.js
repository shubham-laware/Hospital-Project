    import pool from "../config/db.js";

    async function getHospitalData(hospitalId) {
        const [result] = await pool.query({
            sql: `SELECT
                h.hospital_name AS Hospital_Name,
                p.Total_Psychiatrist_Count,
                p.Total_Patients_Count,
                JSON_ARRAYAGG(
                    JSON_OBJECT(
                        'Id', ps.psychiatrists_id,
                        'Name', ps.psychiatrists_name,
                        'Patients_Count', ps.Patients_Count
                    )
                ) AS Psychiatrist_Details
            FROM
                hospitals h
            LEFT JOIN (
                SELECT
                    hospital_id,
                    COUNT(DISTINCT psychiatrists.psychiatrists_id) AS Total_Psychiatrist_Count,
                    COUNT(DISTINCT patients.patient_id) AS Total_Patients_Count
                FROM
                    psychiatrists
                LEFT JOIN patients ON psychiatrists.psychiatrists_id = patients.psychiatrists_id
                GROUP BY
                    hospital_id
            ) p ON h.hospital_id = p.hospital_id
            LEFT JOIN (
                SELECT
                    p.psychiatrists_id,
                    p.psychiatrists_name,
                    COUNT(DISTINCT pat.patient_id) AS Patients_Count,
                    h.hospital_id  -- Add this line to include hospital_id in the subquery
                FROM
                    psychiatrists p
                LEFT JOIN patients pat ON p.psychiatrists_id = pat.psychiatrists_id
                LEFT JOIN hospitals h ON p.hospital_id = h.hospital_id  -- Add this line to join with hospitals
                GROUP BY
                    p.psychiatrists_id, p.psychiatrists_name, h.hospital_id
            ) ps ON h.hospital_id = ps.hospital_id
            WHERE
                h.hospital_id = ? 
            GROUP BY
                h.hospital_id;`,
            values: [hospitalId],
            rowsAsArray: false, 
            rowFormat: 'array', 
        });

        return result;
    }

    export { getHospitalData };
