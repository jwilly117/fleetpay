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
  <td>${getApproveButton(record)}</td>
  <td>${getActionButton(record)}</td>
`;
   // 👇 Add click event to load jobs tied to this request
  row.addEventListener('click', () => {


// Remove previous highlight
document.querySelectorAll('#records-body tr').forEach(r => {
r.classList.remove('selected-request');
});

// Highlight the clicked row
row.classList.add('selected-request');

// Load jobs for the selected request


loadJobsForRequest(record.RequestID);
   });

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
