
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
    database: 'Fleetpay',
    options: {
        encrypt: true,               // Use encryption
        trustServerCertificate: true // Trust the self-signed certificate
    }
};

// Middleware
app.use(bodyParser.json());
app.use(express.json());



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




// GET endpoint to fetch all records from dbo.PaymentRequests
app.get('/payment-requests', async (req, res) => {
    try {
      // Connect to the database
      let pool = await sql.connect(config);
  
      // SQL query to select all records
      const query = `
        SELECT userGuid, userName, userEmail, requestDate, totalLabor, payoutLabor, payoutFee
        FROM dbo.PaymentRequests
      `;
  
      // Execute the query
      const result = await pool.request().query(query);
  
      res.status(200).send(result.recordset);
    } catch (error) {
      console.error(error);
      res.status(500).send({ error: 'An error occurred while fetching the records.' });
    } finally {
      // Close the database connection
      sql.close();
    }
  });
  

// DELETE endpoint to delete a record from dbo.PaymentRequests
app.delete('/payment-requests/:userGuid', async (req, res) => {
    const { userGuid } = req.params;
  
    try {
      // Connect to the database
      let pool = await sql.connect(config);
  
      // SQL query to delete the record
      const query = `
        DELETE FROM dbo.PaymentRequests
        WHERE userGuid = @userGuid
      `;
  
      // Execute the query
      const result = await pool.request()
        .input('userGuid', sql.VarChar(50), userGuid)
        .query(query);
  
      if (result.rowsAffected[0] > 0) {
        res.status(200).send({ message: 'Record deleted successfully!' });
      } else {
        res.status(404).send({ error: 'Record not found.' });
      }
    } catch (error) {
      console.error(error);
      res.status(500).send({ error: 'An error occurred while deleting the record.' });
    } finally {
      // Close the database connection
      sql.close();
    }
  });


// Endpoint to delete current user
app.delete('/api/delete-customer/:id', async (req, res) => {
    const { id } = req.params;

    try {
        const pool = await sql.connect(config);
        const query = 'DELETE FROM Lowes.Lowes_customer WHERE customer_id = @id';
        const request = pool.request();
        request.input('id', sql.Int, id);

        await request.query(query);
        res.status(200).json({ message: 'Customer deleted successfully' });
    } catch (err) {
        console.error('Error deleting customer:', err);
        res.status(500).json({ message: 'Failed to delete customer' });
    }
});


// POST endpoint to insert data into dbo.PaymentRequests
app.post('/payment-requests', async (req, res) => {
  const {
    userGuid,
    userName,
    userEmail,
    requestDate,
    totalLabor,
    payoutLabor,
    payoutFee,
  } = req.body;

  try {
    // Connect to the database
    let pool = await sql.connect(config);

    // SQL query
    const query = `
      INSERT INTO dbo.PaymentRequests 
      (userGuid, userName, userEmail, requestDate, totalLabor, payoutLabor, payoutFee)
      VALUES (@userGuid, @userName, @userEmail, @requestDate, @totalLabor, @payoutLabor, @payoutFee)
    `;

    // Execute the query
    await pool.request()
      .input('userGuid', sql.VarChar(50), userGuid)
      .input('userName', sql.VarChar(50), userName)
      .input('userEmail', sql.VarChar(50), userEmail)
      .input('requestDate', sql.VarChar(50), requestDate)
      .input('totalLabor', sql.VarChar(50), totalLabor)
      .input('payoutLabor', sql.VarChar(50), payoutLabor)
      .input('payoutFee', sql.VarChar(50), payoutFee)
      .query(query);

    res.status(201).send({ message: 'Payment request added successfully!' });
  } catch (error) {
    console.error(error);
    res.status(500).send({ error: 'An error occurred while adding the payment request.' });
  } finally {
  }
});


app.post('/insert-row', async (req, res) => {
    try {
        const pool = await sql.connect(config);
        const { requestId, projectNumber, customerName, installDate, totalLabor, status, jobLink } = req.body;

        const result = await pool.request()
            .input('requestId', sql.NVarChar(50), requestId)
            .input('projectNumber', sql.NVarChar(50), projectNumber)
            .input('customerName', sql.NVarChar(50), customerName)
            .input('installDate', sql.NVarChar(50), installDate)
            .input('totalLabor', sql.NVarChar(50), totalLabor)
            .input('status', sql.NVarChar(50), status)
            .input('jobLink', sql.NVarChar(50), jobLink)
            .query(`
                INSERT INTO dbo.PayrollExclude (requestId, projectNumber, customerName, installDate, totalLabor, status, jobLink)
                VALUES (@requestId, @projectNumber, @customerName, @installDate, @totalLabor, @status, @jobLink)
            `);

        res.status(200).send('Row inserted successfully');
    } catch (error) {
        console.error(error);
        res.status(500).send('Error inserting row');
    }
});


// Fetch data from SQL table
app.get('/api/get-rows', async (req, res) => {
  try {
      const pool = await sql.connect(config);
      const result = await pool.request().query(`
          SELECT requestId, projectNumber, customerName, installDate, totalLabor, status, jobLink 
          FROM dbo.PayrollExclude
      `);
      res.status(200).json(result.recordset); // Send rows as JSON
  } catch (error) {
      console.error('Error fetching data:', error);
      res.status(500).send('Error fetching data');
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
