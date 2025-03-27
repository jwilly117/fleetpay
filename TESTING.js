const axios = require('axios');

const companyPayload = {
  companyName: "Acme Inc",
  primaryContact: "Jane Doe",
  primaryID: 2,
  paymentInterval: "Biweekly",
  companyEmail: "contact@acme.com",
  companyPhone: "555-123-4567",
  status: "Active",
  twoFactor: true,
  notes: "Preferred payout on Fridays"
};

axios.post('http://localhost:3000/Companies', companyPayload)
  .then(response => {
    console.log('✅ Success:', response.data);
  })
  .catch(error => {
    console.error('❌ Error:', error.response ? error.response.data : error.message);
  });
