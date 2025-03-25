


// <!-- JavaScript for Parsing XLSX -->

    // JavaScript remains unchanged from the previous implementation
    document.getElementById('parseButton').addEventListener('click', function () {
        const fileInput = document.getElementById('fileInput');
        const file = fileInput.files[0];
        if (!file) {
            alert('Please select an XLSX file first!');
            return;
        }

        const reader = new FileReader();
        reader.onload = function (event) {
            const data = new Uint8Array(event.target.result);
            const workbook = XLSX.read(data, { type: 'array' });

            // Get the first sheet name and data
            const firstSheetName = workbook.SheetNames[0];
            const worksheet = workbook.Sheets[firstSheetName];
            const jsonData = XLSX.utils.sheet_to_json(worksheet, { header: 1 });

            const tableHead = document.getElementById('tableHead');
            const tableBody = document.getElementById('tableBody');
            const formatter = new Intl.NumberFormat('en-US', {
                style: 'currency',
                currency: 'USD',
            });

            tableHead.innerHTML = '';
            tableBody.innerHTML = '';

            jsonData.forEach((row, index) => {
                const tr = document.createElement('tr');
                let containsScheduled = false; // Track if row contains "Scheduled"


                row.forEach((cell, cellIndex) => {
                    const cellElement = document.createElement(index === 0 ? 'th' : 'td');

                    // Format column C as date
                    if (index > 0 && cellIndex === 2) {
                        const date = new Date(cell);
                        if (!isNaN(date)) {
                            cellElement.textContent = date.toLocaleDateString('en-US', {
                                year: 'numeric',
                                month: 'short',
                                day: 'numeric',
                            });
                        } else {
                            cellElement.textContent = cell || ''; // Handle invalid dates
                        }

                        
                    }
                    // Format column D as currency
                    else if (index > 0 && cellIndex === 3 && !isNaN(cell)) {
                        cellElement.textContent = formatter.format(cell);
                    }
                    // Format column F as "Open Job" hyperlink
                    else if (index > 0 && cellIndex === 5) {
                        if (isValidURL(cell)) {
                            const link = document.createElement('a');
                            link.href = cell;
                            link.textContent = 'Open Job';
                            link.target = '_blank'; // Open in new tab
                            cellElement.appendChild(link);
                        } else {
                            cellElement.textContent = cell || ''; // Handle invalid URLs or empty cells
                        }
                    }
                    // Highlight column E if it contains "Scheduled"
                    else if (index > 0 && cellIndex === 4 && typeof cell === 'string' && cell.includes('Scheduled')) {
                        cellElement.textContent = cell;
                        containsScheduled = true;
                        cellElement.classList.add('strobe-glow'); // Add strobe and glow effect

                        cellElement.classList.add('highlight-pink');
                    } else {
                        cellElement.textContent = cell || ''; // Handle other cells
                    }

                    tr.appendChild(cellElement);
                });

                if (index === 0) {
                    tableHead.appendChild(tr); // Add to the header


                } else {

                     // Add class to non-selectable rows
                     if (containsScheduled) {
                        tr.classList.add('non-selectable');
                        tr.addEventListener('click', function () {
                            tr.classList.add('flash');
                            setTimeout(() => tr.classList.remove('flash'), 500); // Remove flash after animation
                        });
                    }
                    // Apply slide-down animation
                    setTimeout(() => {
                        tr.classList.add('slide-down');
                        tableBody.appendChild(tr);
                    }, index * 100); // Delay for each row

                    // Add click event listener for row selection
                    tr.addEventListener('click', function () {
                        tr.classList.toggle('table-active');
                        updateTotals(); // Update totals whenever a row is clicked
                    });
                }
            });

            // Clear previous totals
            updateTotals();
        };

        reader.readAsArrayBuffer(file);
    });

    function isValidURL(string) {
        try {
            new URL(string);
            return true;
        } catch (_) {
            return false;
        }
    }

    function updateTotals() {
        const selectedRows = document.querySelectorAll('#tableBody tr.table-active');
        const totalField = document.getElementById('totalField');
        const percentageField = document.getElementById('percentageField');
        const formatter = new Intl.NumberFormat('en-US', {
            style: 'currency',
            currency: 'USD',
        });

        let columnDTotal = 0;

        selectedRows.forEach(row => {
            const cells = row.querySelectorAll('td');
            if (cells.length >= 4 && cells[3].textContent) {
                const value = parseFloat(cells[3].textContent.replace(/[^0-9.-]+/g, '')); // Remove currency symbols
                if (!isNaN(value)) columnDTotal += value;
            }
        });

        // Update total and 93% fields
        totalField.value = formatter.format(columnDTotal);
        percentageField.value = formatter.format(columnDTotal * 0.93);
    }

    document.getElementById('selectAllButton').addEventListener('click', function () {
        const rows = document.querySelectorAll('#tableBody tr');
        rows.forEach(row => {
            row.classList.add('table-active');
        });

        updateTotals(); // Update totals when all rows are selected
    });

    document.getElementById('selectNoneButton').addEventListener('click', function () {
        const rows = document.querySelectorAll('#tableBody tr');
        rows.forEach(row => {
            row.classList.remove('table-active');
        });

        updateTotals(); // Update totals when no rows are selected
    });


    // Function to fetch records
    // async function fetchRequests() {
    //         try {
    //           const response = await fetch('http://localhost:3000/Requests');
    //           if (response.ok) {
    //             const records = await response.json();
    //             const tableBody = document.getElementById('records-body');
      
    //             // Clear existing rows
    //             tableBody.innerHTML = '';
      
    //             // Populate the table with records
    //             records.forEach((record, index) => {
    //               const row = document.createElement('tr');
    //               row.innerHTML = `
    //                 <td>${record.userGuid}</td>
    //                 <td>${record.userName}</td>
    //                 <td>${record.userEmail}</td>
    //                 <td>${record.requestDate}</td>
    //                 <td>${record.totalLabor}</td>
    //                 <td>${record.payoutLabor}</td>
    //                 <td>${record.payoutFee}</td>
    //                 <td><button class="approve-btn" onclick="approveRecord('${record.userGuid}')">Approve</button></td>
    //                 <td><button onclick="deleteRecord('${record.userGuid}')">Delete</button></td>
    //               `;
    //               tableBody.appendChild(row);
    //             // Add animation with a delay
    //           setTimeout(() => {
    //             row.classList.add('visible');
    //           }, index * 200); // Delay each row by 100ms
    //         });
    //           } else {
    //           // Show the toast
    //           const toast = new bootstrap.Toast(document.getElementById('successToast'));
    //           toast.show();
    //           }
    //         } catch (err) {
    //           console.error(err);
    //           // Show the toast
    //           const toast = new bootstrap.Toast(document.getElementById('successToast'));
    //           toast.show();
    //         }
    // }
    
    // Function to delete a record
    async function deleteRecord(userGuid) {
            if (confirm('Are you sure you want to delete this record?')) {
              try {
                const response = await fetch(`http://localhost:3000/payment-requests/${userGuid}`, {
                  method: 'DELETE',
                });
      
                if (response.ok) {
                  alert('Record deleted successfully!');
                  fetchRecords(); // Refresh the table
                } else {
                  const error = await response.json();
                  alert(error.error || 'Failed to delete the record.');
                }
              } catch (err) {
                console.error(err);
                alert('An error occurred while deleting the record.');
              }
            }
    }
    





// #########################################################################
// $$$$$$$$$$$$$$                    NEW                       $$$$$$$$$$$$$
// #########################################################################

    // Function to clean and convert currency strings to numbers
    function parseCurrency(value) {
        // Remove any non-numeric characters except for the decimal point
        const cleanedValue = value.replace(/[^0-9.-]+/g, '');
        return parseFloat(cleanedValue);
    }

    // Method to return the current dateTime stamp
    function getCurrentDateTimeFormatted() {
        const now = new Date();
        const options = {
            year: 'numeric',
            month: '2-digit',
            day: '2-digit',
            hour: '2-digit',
            minute: '2-digit',
            second: '2-digit',
        };
    return now.toLocaleString('en-US', options);
    }

    // Function to actually insert the Data from the request Page
    async function insertRequest() {

        // Get the value from the totalLabor input field
        const totalLabor = document.getElementById('totalField').value;
        const payoutAmount = document.getElementById('percentageField').value;
   
        console.log("Fee Amount:", totalLabor);
   
        const currentDateTime = getCurrentDateTimeFormatted();
   
   
        
        // Function to clean and convert currency strings to numbers
        function parseCurrency(value) {
           // Remove any non-numeric characters except for the decimal point
           const cleanedValue = value.replace(/[^0-9.-]+/g, '');
           return parseFloat(cleanedValue);
           }
   
        // Convert currency strings to numbers
        const totalLaborNumber = parseCurrency(totalLabor);
        const payoutAmountNumber = parseCurrency(payoutAmount);
   
        // Subtract the second number from the first
        const feeAmount = totalLaborNumber*0.105;
        // Convert the fee amount back to a currency string
        const feeAmountCurrency = new Intl.NumberFormat('en-US', {
       style: 'currency',
       currency: 'USD',
     }).format(feeAmount);
   
   
        console.log("Fee Amount:", feeAmount);
   
   
        if (!totalLabor) {
            alert("Please enter a value for Total Labor.");
            return;
        }
   
        //   const OLDtestData = {
        //     userGuid: "test-insaerting",
        //     userName: "Denise Richards",
        //     userEmail: "denise.richards@gmail.com",
        //     requestDate: currentDateTime,
        //     totalLabor: totalLabor,
        //     payoutLabor: payoutAmount,
        //     payoutFee: feeAmountCurrency
        //   };

          const testData = {
            requestTotal: totalLaborNumber,
            fpPercentage: 10.5,
            fpAmount: feeAmount,
            status: "Pending",
            approvedBy: "Yet to Approve",
            payoutDate: null,
            user: "alan.wake@wakeupconstruction.com",
            requestDate: currentDateTime,
            notes: "Need a new haircut"
          };
    
          try {
            const response = await fetch('http://localhost:3000/Requests', {
              method: 'POST',
              headers: {
                'Content-Type': 'application/json',
              },
              body: JSON.stringify(testData),
            });
    
            if (response.ok) {
              const result = await response.json();
            //   alert(result.message || "Test record inserted successfully!");
            // Show the toast
            const toast = new bootstrap.Toast(document.getElementById('successToast'));
            toast.show();
            } else {
              const error = await response.json();
              alert(error.error || "Failed to insert test record.");
            }
          } catch (err) {
            console.error(err);
            alert("An error occurred while inserting the test record.");
          }
   
          
            // Clear the table
            document.getElementById('tableHead').innerHTML = '';
            document.getElementById('tableBody').innerHTML = '';
   
            // Reset input fields
            document.getElementById('fileInput').value = '';
            document.getElementById('totalField').value = '';
            document.getElementById('percentageField').value = '';
    }
    
    // Function to fetch records from new Requests structure
    async function fetchRequests() {
        try {
        const response = await fetch('http://localhost:3000/Requests');
        if (response.ok) {
            const records = await response.json();
            const tableBody = document.getElementById('records-body');
    
            // Clear existing rows
            tableBody.innerHTML = '';
    
            // Populate the table with updated structure
            records.forEach((record, index) => {
            const row = document.createElement('tr');
            row.innerHTML = `
                <td>${record.UserID || ''}</td>
                <td>${record.ApprovedBy || ''}</td>
                <td>${record.Status || ''}</td>
                <td>${record.RequestDate ? new Date(record.RequestDate).toLocaleString() : ''}</td>
                <td>${record.RequestTotal?.toFixed(2) || '0.00'}</td>
                <td>${record.FPAmount?.toFixed(2) || '0.00'}</td>
                <td>${record.FPPercentage?.toFixed(2) + '%' || '0%'}</td>
                <td><button class="approve-btn" onclick="approveRecord(${record.RequestID})">Approve</button></td>
                <td><button onclick="deleteRecord(${record.RequestID})">Delete</button></td>
            `;
            tableBody.appendChild(row);
    
            // Optional animation delay
            setTimeout(() => {
                row.classList.add('visible');
            }, index * 200);
            });
        } else {
            const toast = new bootstrap.Toast(document.getElementById('successToast'));
            toast.show();
        }
        } catch (err) {
        console.error(err);
        const toast = new bootstrap.Toast(document.getElementById('successToast'));
        toast.show();
        }
    }
  
    



// 
// Remember the Window.onLoad does not trigger from this js file.
// 

// <!--<!--<!-- TEST SCRIPT TO INSERT RECORD INTO REQUESTS TABLE -->-->-->

async function OLDinsertTestRecord() {

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

    try {
      const response = await fetch('http://localhost:3000/payment-requests', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(testData),
      });

      if (response.ok) {
        const result = await response.json();
        alert(result.message || "Test record inserted successfully!");
      } else {
        const error = await response.json();
        alert(error.error || "Failed to insert test record.");
      }
    } catch (err) {
      console.error(err);
      alert("An error occurred while inserting the test record.");
    }
}

// <!--<!--<!-- TEST SCRIPT TO INSERT RECORD INTO REQUESTS TABLE -->-->-->
