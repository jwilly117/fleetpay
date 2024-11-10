import chai, { expect } from "chai"
import chaiHttp from "chai-http"

chai.use(chaiHttp);

import app from "../../index"

// --- start imports code ---

// --- end imports code ---

// --- start before_company_commands code ---

// --- end before_company_commands code ---

describe("# TEST /company", async () => {

  // --- start before_commands code ---

  // --- end before_commands code ---

  describe("## GET company/list", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).get("/company/list")
        // --- start company_list_sucessful code ---

        // --- end company_list_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).get("/company/list")
        // --- start company_list_unsuccessful_test code ---

        // --- end company_list_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_company_list_tests code ---

    // --- end more_company_list_tests code ---

  })

  describe("## POST company/selectCompany", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).post("/company/selectCompany")
        // --- start company_select_company_sucessful code ---

        // --- end company_select_company_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).post("/company/selectCompany")
        // --- start company_select_company_unsuccessful_test code ---

        // --- end company_select_company_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_company_select_company_tests code ---

    // --- end more_company_select_company_tests code ---

  })

  describe("## GET company/user", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).get("/company/user")
        // --- start company_user_sucessful code ---

        // --- end company_user_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).get("/company/user")
        // --- start company_user_unsuccessful_test code ---

        // --- end company_user_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_company_user_tests code ---

    // --- end more_company_user_tests code ---

  })

  describe("## POST company/user", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).post("/company/user")
        // --- start company_user_sucessful code ---

        // --- end company_user_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).post("/company/user")
        // --- start company_user_unsuccessful_test code ---

        // --- end company_user_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_company_user_tests code ---

    // --- end more_company_user_tests code ---

  })

  describe("## GET company/user/:adminId", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).get("/company/user/:adminId")
        // --- start company_user_:admin_id_sucessful code ---
  
        // --- end company_user_:admin_id_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).get("/company/user/:adminId")
        // --- start company_user_:admin_id_unsuccessful_test code ---
  
        // --- end company_user_:admin_id_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_company_user_:admin_id_tests code ---
  
    // --- end more_company_user_:admin_id_tests code ---

  })

  describe("## PUT company/user/:adminId", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).put("/company/user/:adminId")
        // --- start company_user_:admin_id_sucessful code ---
  
        // --- end company_user_:admin_id_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).put("/company/user/:adminId")
        // --- start company_user_:admin_id_unsuccessful_test code ---
  
        // --- end company_user_:admin_id_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_company_user_:admin_id_tests code ---
  
    // --- end more_company_user_:admin_id_tests code ---

  })

  describe("## DELETE company/user/:adminId", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).delete("/company/user/:adminId")
        // --- start company_user_:admin_id_sucessful code ---
  
        // --- end company_user_:admin_id_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).delete("/company/user/:adminId")
        // --- start company_user_:admin_id_unsuccessful_test code ---
  
        // --- end company_user_:admin_id_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_company_user_:admin_id_tests code ---
  
    // --- end more_company_user_:admin_id_tests code ---

  })

  describe("## GET company/contractor", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).get("/company/contractor")
        // --- start company_contractor_sucessful code ---

        // --- end company_contractor_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).get("/company/contractor")
        // --- start company_contractor_unsuccessful_test code ---

        // --- end company_contractor_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_company_contractor_tests code ---

    // --- end more_company_contractor_tests code ---

  })

  describe("## POST company/contractor", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).post("/company/contractor")
        // --- start company_contractor_sucessful code ---

        // --- end company_contractor_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).post("/company/contractor")
        // --- start company_contractor_unsuccessful_test code ---

        // --- end company_contractor_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_company_contractor_tests code ---

    // --- end more_company_contractor_tests code ---

  })

  describe("## GET company/contractor/:contractorId", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).get("/company/contractor/:contractorId")
        // --- start company_contractor_:contractor_id_sucessful code ---
  
        // --- end company_contractor_:contractor_id_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).get("/company/contractor/:contractorId")
        // --- start company_contractor_:contractor_id_unsuccessful_test code ---
  
        // --- end company_contractor_:contractor_id_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_company_contractor_:contractor_id_tests code ---
  
    // --- end more_company_contractor_:contractor_id_tests code ---

  })

  describe("## PUT company/contractor/:contractorId", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).put("/company/contractor/:contractorId")
        // --- start company_contractor_:contractor_id_sucessful code ---
  
        // --- end company_contractor_:contractor_id_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).put("/company/contractor/:contractorId")
        // --- start company_contractor_:contractor_id_unsuccessful_test code ---
  
        // --- end company_contractor_:contractor_id_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_company_contractor_:contractor_id_tests code ---
  
    // --- end more_company_contractor_:contractor_id_tests code ---

  })

  describe("## DELETE company/contractor/:contractorId", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).delete("/company/contractor/:contractorId")
        // --- start company_contractor_:contractor_id_sucessful code ---
  
        // --- end company_contractor_:contractor_id_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).delete("/company/contractor/:contractorId")
        // --- start company_contractor_:contractor_id_unsuccessful_test code ---
  
        // --- end company_contractor_:contractor_id_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_company_contractor_:contractor_id_tests code ---
  
    // --- end more_company_contractor_:contractor_id_tests code ---

  })

  describe("## POST company/transaction", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).post("/company/transaction")
        // --- start company_transaction_sucessful code ---

        // --- end company_transaction_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).post("/company/transaction")
        // --- start company_transaction_unsuccessful_test code ---

        // --- end company_transaction_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_company_transaction_tests code ---

    // --- end more_company_transaction_tests code ---

  })

  describe("## GET company/transaction/:transactionId", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).get("/company/transaction/:transactionId")
        // --- start company_transaction_:transaction_id_sucessful code ---
  
        // --- end company_transaction_:transaction_id_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).get("/company/transaction/:transactionId")
        // --- start company_transaction_:transaction_id_unsuccessful_test code ---
  
        // --- end company_transaction_:transaction_id_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_company_transaction_:transaction_id_tests code ---
  
    // --- end more_company_transaction_:transaction_id_tests code ---

  })

  describe("## PUT company/transaction/:transactionId", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).put("/company/transaction/:transactionId")
        // --- start company_transaction_:transaction_id_sucessful code ---
  
        // --- end company_transaction_:transaction_id_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).put("/company/transaction/:transactionId")
        // --- start company_transaction_:transaction_id_unsuccessful_test code ---
  
        // --- end company_transaction_:transaction_id_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_company_transaction_:transaction_id_tests code ---
  
    // --- end more_company_transaction_:transaction_id_tests code ---

  })

  describe("## POST company/transaction/:transactionId/remarks", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).post("/company/transaction/:transactionId/remarks")
        // --- start company_transaction_:transaction_id_remarks_sucessful code ---
  
        // --- end company_transaction_:transaction_id_remarks_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).post("/company/transaction/:transactionId/remarks")
        // --- start company_transaction_:transaction_id_remarks_unsuccessful_test code ---
  
        // --- end company_transaction_:transaction_id_remarks_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_company_transaction_:transaction_id_remarks_tests code ---
  
    // --- end more_company_transaction_:transaction_id_remarks_tests code ---

  })

  describe("## GET company/:companyId", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).get("/company/:companyId")
        // --- start company_:company_id_sucessful code ---
  
        // --- end company_:company_id_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).get("/company/:companyId")
        // --- start company_:company_id_unsuccessful_test code ---
  
        // --- end company_:company_id_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_company_:company_id_tests code ---
  
    // --- end more_company_:company_id_tests code ---

  })

  describe("## PUT company/:companyId", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).put("/company/:companyId")
        // --- start company_:company_id_sucessful code ---
  
        // --- end company_:company_id_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).put("/company/:companyId")
        // --- start company_:company_id_unsuccessful_test code ---
  
        // --- end company_:company_id_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_company_:company_id_tests code ---
  
    // --- end more_company_:company_id_tests code ---

  })

  // --- start more_company_tests code ---

  // --- end more_company_tests code ---

})
