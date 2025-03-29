// Step 1: Add Modal HTML (include somewhere in your CompaniesAdmin.html)
const modalHTML = `
<div class="modal fade" id="editCompanyModal" tabindex="-1" aria-labelledby="editCompanyModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editCompanyModalLabel">Edit Company Info</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="editCompanyForm">
          <input type="hidden" id="editCompanyID" />

          <div class="mb-3">
            <label for="editCompanyName" class="form-label">Company Name</label>
            <input type="text" class="form-control" id="editCompanyName">
          </div>

          <div class="mb-3">
            <label for="editPrimaryContact" class="form-label">Primary Contact</label>
            <input type="text" class="form-control" id="editPrimaryContact">
          </div>

          <div class="mb-3">
            <label for="editCompanyEmail" class="form-label">Email</label>
            <input type="email" class="form-control" id="editCompanyEmail">
          </div>

          <div class="mb-3">
            <label for="editCompanyPhone" class="form-label">Phone</label>
            <input type="text" class="form-control" id="editCompanyPhone">
          </div>

          <div class="mb-3">
            <label for="editStatus" class="form-label">Status</label>
            <select id="editStatus" class="form-select">
              <option value="Active">Active</option>
              <option value="Inactive">Inactive</option>
              <option value="Onboarding">Onboarding</option>
              <option value="Terminated">Terminated</option>
              <option value="Prospect">Prospect</option>
              <option value="Under Review">Under Review</option>
            </select>
          </div>

          <div class="mb-3">
            <label for="editPaymentInterval" class="form-label">Payment Interval</label>
            <input type="text" class="form-control" id="editPaymentInterval">
          </div>

          <div class="mb-3">
            <label for="editNotes" class="form-label">Notes</label>
            <textarea class="form-control" id="editNotes" rows="3"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" form="editCompanyForm">Save Changes</button>
      </div>
    </div>
  </div>
</div>`;

document.body.insertAdjacentHTML('beforeend', modalHTML);


// Step 2: Add click event to each company card
function attachCompanyCardListeners() {
  const companyCards = document.querySelectorAll('.company-card');
  companyCards.forEach(card => {
    card.addEventListener('click', () => {
      const company = JSON.parse(card.dataset.company);

      document.getElementById('editCompanyID').value = company.CompanyID;
      document.getElementById('editCompanyName').value = company.CompanyName;
      document.getElementById('editPrimaryContact').value = company.PrimaryContact;
      document.getElementById('editCompanyEmail').value = company.CompanyEmail;
      document.getElementById('editCompanyPhone').value = company.CompanyPhone;
      document.getElementById('editStatus').value = company.Status;
      document.getElementById('editPaymentInterval').value = company.PaymentInterval;
      document.getElementById('editNotes').value = company.Notes || '';

      const modal = new bootstrap.Modal(document.getElementById('editCompanyModal'));
      modal.show();
    });
  });
}


// Step 3: Update renderCompanyCards to include dataset
function renderCompanyCards(companies) {
  const container = document.getElementById('companyList');
  container.innerHTML = '';

  companies.forEach(company => {
    const card = document.createElement('div');
    card.className = 'col-md-6 mb-3 company-card';
    card.dataset.company = JSON.stringify(company);
    card.innerHTML = `
      <div class="border rounded p-3 bg-light shadow-sm">
        <h5 class="text-dark">${company.CompanyName}</h5>
        <p><strong>Contact:</strong> ${company.PrimaryContact || 'undefined'}</p>
        <p><strong>Email:</strong> ${company.CompanyEmail || 'undefined'}</p>
        <p><strong>Phone:</strong> ${company.CompanyPhone || 'N/A'}</p>
        <p><strong>Status:</strong> ${company.Status || 'undefined'}</p>
        <p><strong>Payment:</strong> ${company.PaymentInterval || 'undefined'}</p>
      </div>
    `;

    container.appendChild(card);
  });

  attachCompanyCardListeners();
}
