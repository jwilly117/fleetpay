
const express = require('express');
const sql = require('mssql');
const cors = require('cors'); // Import cors middleware
const bodyParser = require('body-parser'); // Middleware to parse JSON bodies


// Initialize Express app
const app = express();
const port = 3000;

// Enable CORS for all routes
app.use(cors());


const config = {
    user: 'sa',
    password: 'Pringles117',
    server: 'sql.fleetpaid.com', // or your local IP address
    port: 1433,
    database: 'LowesPOsTest',
    options: {
        encrypt: true,               // Use encryption
        trustServerCertificate: true // Trust the self-signed certificate
    }
};

// Middleware
app.use(bodyParser.json());


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


// Endpoint to insert a new customer
app.post('/api/add-customer', async (req, res) => {
    const { firstName, lastName, email, phone } = req.body;

    if (!firstName || !lastName || !email || !phone) {
        return res.status(400).json({ message: 'All fields are required' });
    }

    try {
        const pool = await sql.connect(config);
        const query = `
            INSERT INTO Lowes.Lowes_customer (customer_first_name, customer_last_name, customer_email, customer_phone)
            VALUES (@firstName, @lastName, @email, @phone)
        `;
        const request = pool.request();
        request.input('firstName', sql.NVarChar, firstName);
        request.input('lastName', sql.NVarChar, lastName);
        request.input('email', sql.NVarChar, email);
        request.input('phone', sql.NVarChar, phone);

        await request.query(query);
        res.status(200).json({ message: 'Customer added successfully' });
    } catch (err) {
        console.error('Error inserting customer:', err);
        res.status(500).json({ message: 'Failed to insert customer' });
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
