
const express = require('express');
const sql = require('mssql');
const cors = require('cors'); // Import cors middleware


// Initialize Express app
const app = express();
const port = 3000;

// Enable CORS for all routes
app.use(cors());


const config = {
    user: 'sa',
    password: 'Pringles117',
    server: '96.87.240.237', // or your local IP address
    port: 1433,
    database: 'LowesPOsTest',
    options: {
        encrypt: true,               // Use encryption
        trustServerCertificate: true // Trust the self-signed certificate
    }
};



// Endpoint to get data from the 'Lowes' table
app.get('/api/lowes', async (req, res) => {
    try {
        let pool = await sql.connect(config);
        let result = await pool.request().query('SELECT * FROM Lowes.Lowes_customer');
        res.json(result.recordset); // Send the data as JSON
    } catch (err) {
        console.error("Error retrieving data:", err);
        res.status(500).send("Error retrieving data from database.");
    }
});

// Start the server
app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});







// Old Code


// async function getData() {
//     try {
//         let pool = await sql.connect(config);
//         let result = await pool.request().query('SELECT * FROM Lowes.Lowes_customer');
//         console.log(result);
//     } catch (err) {
//         console.error(err);
//     }
// }

// getData();
