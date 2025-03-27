
const express = require('express');
const sql = require('mssql');
const cors = require('cors'); // Import cors middleware
const bodyParser = require('body-parser'); // Middleware to parse JSON bodies
const nodemailer = require('nodemailer');

// Configure your email transport
const transporter = nodemailer.createTransport({
  service: 'gmail',
  auth: {
    user: 'jake@ellis-ventures.com',
    pass: 'zcdi zrtm ffma tlkm' // Use App Password or secure token
  }
});


// Initialize Express app
const app = express();
const port = 3000;

// Enable CORS for all routes
app.use(cors());


const config = {
    user: 'jake',
    password: 'Pringles117!',
    server: 'sql.ellis-ventures.com', // or your local IP address
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



// #########################################################################
// $$$$$$$$$$$$$$                    NEW                       $$$$$$$$$$$$$
// #########################################################################

// POST endpoint to insert data into dbo.Requests
app.post('/Requests', async (req, res) => {
  const {
    requestTotal,
    fpPercentage,
    fpAmount,
    status,
    approvedBy,
    payoutDate,
    user,
    requestDate,
    notes
  } = req.body;

  try {
    const pool = await sql.connect(config);

    // SQL query with OUTPUT to get inserted RequestID
    const result = await pool.request()
      .input('requestTotal', sql.Decimal(18, 2), requestTotal)
      .input('fpPercentage', sql.Decimal(5, 2), fpPercentage)
      .input('fpAmount', sql.Decimal(18, 2), fpAmount)
      .input('status', sql.NVarChar(50), status)
      .input('approvedBy', sql.NVarChar(255), approvedBy)
      .input('payoutDate', sql.DateTime, payoutDate)
      .input('user', sql.NVarChar(255), user)
      .input('requestDate', sql.DateTime, requestDate)
      .input('notes', sql.NVarChar(sql.MAX), notes)
      .query(`
        INSERT INTO dbo.Requests (
          RequestTotal, FPPercentage, FPAmount,
          Status, ApprovedBy, PayoutDate,
          UserID, RequestDate, Notes
        )
        OUTPUT INSERTED.RequestID
        VALUES (
          @requestTotal, @fpPercentage, @fpAmount,
          @status, @approvedBy, @payoutDate,
          @user, @requestDate, @notes
        )
      `);

    const requestId = result.recordset[0].RequestID;

    res.status(201).send({
      message: '✅ Payment request added successfully!',
      requestID: requestId
    });

    console.log("✅ POST /Requests successful. RequestID:", requestId);
  } catch (error) {
    console.error('❌ Error in POST /Requests:', error);
    res.status(500).send({ error: 'An error occurred while adding the payment request.' });
  }
});


// GET endpoint to return all records from dbo.Requests
app.get('/Requests', async (req, res) => {
  try {
    const pool = await sql.connect(config);

    const result = await pool.request().query(`
      SELECT 
        RequestID,
        RequestTotal,
        FPPercentage,
        FPAmount,
        Status,
        ApprovedBy,
        PayoutDate,
        UserID,
        RequestDate,
        Notes
      FROM dbo.Requests
    `);

    res.status(200).json(result.recordset);
  } catch (error) {
    console.error('Error fetching requests:', error);
    res.status(500).json({ error: 'An error occurred while fetching requests.' });
  }
});


app.post('/Companies', async (req, res) => {
  const {
    companyName,
    primaryContact,
    primaryID,
    paymentInterval,
    companyEmail,
    companyPhone,
    status,
    twoFactor,
    notes
  } = req.body;

  try {
    const pool = await sql.connect(config);

    await pool.request()
      .input('CompanyName', sql.NVarChar(255), companyName)
      .input('PrimaryContact', sql.NVarChar(255), primaryContact)
      .input('PrimaryID', sql.Int, primaryID)
      .input('PaymentInterval', sql.NVarChar(50), paymentInterval)
      .input('CompanyEmail', sql.NVarChar(255), companyEmail)
      .input('CompanyPhone', sql.NVarChar(50), companyPhone)
      .input('Status', sql.NVarChar(50), status)
      .input('TwoFactorEnabled', sql.Bit, twoFactor)
      .input('Notes', sql.NVarChar(sql.MAX), notes)
      .query(`
        INSERT INTO Companies (
          CompanyName, PrimaryContact, PrimaryID, PaymentInterval,
          CompanyEmail, CompanyPhone, Status, TwoFactorEnabled, Notes
        ) VALUES (
          @CompanyName, @PrimaryContact, @PrimaryID, @PaymentInterval,
          @CompanyEmail, @CompanyPhone, @Status, @TwoFactorEnabled, @Notes
        )
      `);

    res.status(201).json({ message: '✅ Company successfully created!' });
  } catch (error) {
    console.error('❌ Error creating company:', error);
    res.status(500).json({ error: 'An error occurred while creating the company.' });
  }
});


app.get('/Companies', async (req, res) => {
  try {
    const pool = await sql.connect(config);
    const result = await pool.request().query(`
      SELECT CompanyID, CompanyName 
      FROM Companies
      ORDER BY CompanyName
    `);
    res.status(200).json(result.recordset);
  } catch (error) {
    console.error('Error fetching companies:', error);
    res.status(500).json({ error: 'An error occurred while fetching companies.' });
  }
});


app.post('/Users', async (req, res) => {
  const {
    firstName,
    lastName,
    email,
    phone,
    role,
    password,
    employerID,
    twoFactor,
    bankAdded
  } = req.body;

  try {
    const pool = await sql.connect(config);

    await pool.request()
      .input('FirstName', sql.NVarChar(50), firstName)
      .input('LastName', sql.NVarChar(50), lastName)
      .input('EmailAddress', sql.NVarChar(255), email)
      .input('PhoneNumber', sql.NVarChar(20), phone)
      .input('Role', sql.NVarChar(50), role)
      .input('PasswordHash', sql.NVarChar(255), password) // Ideally, hash this first!
      .input('EmployerID', sql.Int, employerID)
      .input('TwoFactorEnabled', sql.Bit, twoFactor)
      .input('BankAccountAdded', sql.Bit, bankAdded)
      .input('Status', sql.NVarChar(20), 'Active') // Default status
      .input('LastLogin', sql.DateTime, null)
      .input('Notes', sql.NVarChar(sql.MAX), null)
      .query(`
        INSERT INTO Users (
          FirstName, LastName, EmailAddress, PhoneNumber, Role, 
          PasswordHash, EmployerID, TwoFactorEnabled, BankAccountAdded,
          Status, LastLogin, Notes
        ) VALUES (
          @FirstName, @LastName, @EmailAddress, @PhoneNumber, @Role,
          @PasswordHash, @EmployerID, @TwoFactorEnabled, @BankAccountAdded,
          @Status, @LastLogin, @Notes
        )
      `);

    res.status(201).json({ message: '✅ User successfully created!' });
  } catch (error) {
    console.error('❌ Error creating user:', error);
    res.status(500).json({ error: 'An error occurred while creating the user.' });
  }
});


app.get('/Users', async (req, res) => {
  try {
    const pool = await sql.connect(config);
    const result = await pool.request().query(`
      SELECT 
        IDNumber,
        FirstName,
        LastName,
        EmailAddress,
        PhoneNumber,
        Role,
        TwoFactorEnabled,
        Status
      FROM Users
      ORDER BY LastName, FirstName
    `);

    res.status(200).json(result.recordset);
  } catch (error) {
    console.error('❌ Error fetching users:', error);
    res.status(500).json({ error: 'An error occurred while retrieving users.' });
  }
});


app.post('/JobsTemp', async (req, res) => {
  const {
    projectNumber,
    customerName,
    installCompleteDate,
    totalLabor,
    hyperlink,
    paidExcludeFromPayroll,
    requestID
  } = req.body;

  try {
    const pool = await sql.connect(config);

    await pool.request()
      .input('ProjectNumber', sql.NVarChar(50), projectNumber)
      .input('CustomerName', sql.NVarChar(255), customerName)
      .input('InstallCompleteDate', sql.Date, installCompleteDate)
      .input('TotalLabor', sql.Decimal(18, 2), totalLabor)
      .input('Hyperlink', sql.NVarChar(500), hyperlink)
      .input('PaidExcludeFromPayroll', sql.Bit, paidExcludeFromPayroll)
      .input('RequestID', sql.Int, requestID)
      .query(`
        INSERT INTO JobsTemp (
          ProjectNumber, CustomerName, InstallCompleteDate,
          TotalLabor, Hyperlink, PaidExcludeFromPayroll, RequestID
        ) VALUES (
          @ProjectNumber, @CustomerName, @InstallCompleteDate,
          @TotalLabor, @Hyperlink, @PaidExcludeFromPayroll, @RequestID
        )
      `);

    res.status(201).json({ message: 'Job inserted into JobsTemp successfully' });
  } catch (err) {
    console.error('❌ Error inserting job:', err);
    res.status(500).json({ error: 'Failed to insert job into JobsTemp' });
  }
});


app.get('/JobsTemp/by-request/:id', async (req, res) => {
  const requestID = req.params.id;

  try {
    const pool = await sql.connect(config);
    const result = await pool.request()
      .input('RequestID', sql.Int, requestID)
      .query(`
        SELECT *
        FROM JobsTemp
        WHERE RequestID = @RequestID
      `);

    res.status(200).json(result.recordset);
  } catch (error) {
    console.error("Error fetching JobsTemp for request:", error);
    res.status(500).json({ error: 'Failed to fetch jobs for request' });
  }
});

app.post('/Requests/approve/:id', async (req, res) => {
  const requestID = req.params.id;

  try {
    const pool = await sql.connect(config);

    // Get user info for this request
    const userResult = await pool.request()
      .input('RequestID', sql.Int, requestID)
      .query(`SELECT UserID, RequestTotal FROM Requests WHERE RequestID = @RequestID`);

    const { UserID, RequestTotal } = userResult.recordset[0];

    // Update status
    await pool.request()
      .input('RequestID', sql.Int, requestID)
      .query(`
        UPDATE Requests
        SET Status = 'Approved',
            ApprovedBy = 'jake@fleetpay.cash'
        WHERE RequestID = @RequestID
      `);

    // Send email to user
    const mailOptions = {
      from: 'FleetPay Notifications <your_email@gmail.com>',
      to: "jakewilliams117@gmail.com", // assuming this is the email
      subject: '✅ Your FleetPay Payment Request Has Been Approved',
      text: `Hello,
    
    We wanted to let you know that your FleetPay payment request for $${RequestTotal.toFixed(2)} has been approved. You can expect your deposit to be processed shortly.
    
    If you have any questions or concerns, please feel free to reach out to us directly at (770) 540-0454 during normal business hours.
    
    For assistance outside of business hours, you can also contact us by email at help@fleetpay.cash.
    
    Thank you for using FleetPay.
    
    — The FleetPay Team`
    };

    await transporter.sendMail(mailOptions);

    res.status(200).json({ message: 'Request approved and email sent.' });
  } catch (err) {
    console.error('❌ Email/send error:', err);
    res.status(500).json({ error: 'Approval failed or email could not be sent.' });
  }
});


// #########################################################################
// ~~~~~~~~~~~~~~                                           ~~~~~~~~~~~~~
// #########################################################################


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
  
      // res.status(200).send(result.recordset);
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



// <!-- ================== JAIL TO RESEARCH ======================= -->
// <!-- =========================================================== -->

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



// <!-- ================== END JAIL RESEARCH ======================= -->
// <!-- ============================================================ -->

