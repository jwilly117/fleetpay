// URL of your API endpoint
const apiUrl = 'http://localhost:3000/api/lowes';

async function fetchCustomerData() {
    try {
        // Fetch data from the API
        const response = await fetch(apiUrl);
        const data = await response.json();

        // Assuming data is an array and we want to display the first customer
        const customer = data[1];

        // Populate HTML with customer data
        document.getElementById('customer-id').textContent = customer.customer_id;
        document.getElementById('customer-first-name').textContent = customer.customer_first_name;
        document.getElementById('customer-last-name').textContent = customer.customer_last_name;
        document.getElementById('customer-email').textContent = customer.customer_email;
        document.getElementById('customer-phone').textContent = customer.customer_phone;
    } catch (error) {
        console.error("Error fetching customer data:", error);
    }
}

// Call the function to fetch and display data
fetchCustomerData();
