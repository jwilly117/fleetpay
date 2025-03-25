const axios = require('axios');

const testData = {
  requestTotal: 1200.50,
  fpPercentage: 10.5,
  fpAmount: 126.05,
  status: "Pending",
  approvedBy: "manager@example.com",
  payoutDate: "2025-03-25T10:00:00Z",
  user: "johndoe",
  requestDate: "2025-03-25T09:00:00Z",
  notes: "Urgent payout"
};

axios.post('http://localhost:3000/Requests', testData)
  .then(response => {
    console.log('✅ Success:', response.data);
  })
  .catch(error => {
    console.error('❌ Error:', error.response ? error.response.data : error.message);
  });
