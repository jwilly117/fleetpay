import chai, { expect } from "chai"
import chaiHttp from "chai-http"

chai.use(chaiHttp);

import app from "../../index"

// --- start imports code ---
  
// --- end imports code ---

// --- start before_contractor_commands code ---
  
// --- end before_contractor_commands code ---

describe("# TEST /contractor", async () => {

  // --- start before_commands code ---
  
  // --- end before_commands code ---

  describe("## GET contractor/", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).get("/contractor/")
        // --- start contractor__sucessful code ---
  
        // --- end contractor__sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).get("/contractor/")
        // --- start contractor__unsuccessful_test code ---
  
        // --- end contractor__unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_contractor__tests code ---
  
    // --- end more_contractor__tests code ---

  })

  describe("## GET contractor/summary", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).get("/contractor/summary")
        // --- start contractor_summary_sucessful code ---
  
        // --- end contractor_summary_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).get("/contractor/summary")
        // --- start contractor_summary_unsuccessful_test code ---
  
        // --- end contractor_summary_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_contractor_summary_tests code ---
  
    // --- end more_contractor_summary_tests code ---

  })

  describe("## GET contractor/transaction", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).get("/contractor/transaction")
        // --- start contractor_transaction_sucessful code ---
  
        // --- end contractor_transaction_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).get("/contractor/transaction")
        // --- start contractor_transaction_unsuccessful_test code ---
  
        // --- end contractor_transaction_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_contractor_transaction_tests code ---
  
    // --- end more_contractor_transaction_tests code ---

  })

  describe("## GET contractor/transaction/:transactionId", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).get("/contractor/transaction/:transactionId")
        // --- start contractor_transaction_:transaction_id_sucessful code ---
  
        // --- end contractor_transaction_:transaction_id_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).get("/contractor/transaction/:transactionId")
        // --- start contractor_transaction_:transaction_id_unsuccessful_test code ---
  
        // --- end contractor_transaction_:transaction_id_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_contractor_transaction_:transaction_id_tests code ---
  
    // --- end more_contractor_transaction_:transaction_id_tests code ---

  })

  describe("## PUT contractor/transaction/:transactionId", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).put("/contractor/transaction/:transactionId")
        // --- start contractor_transaction_:transaction_id_sucessful code ---
  
        // --- end contractor_transaction_:transaction_id_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).put("/contractor/transaction/:transactionId")
        // --- start contractor_transaction_:transaction_id_unsuccessful_test code ---
  
        // --- end contractor_transaction_:transaction_id_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_contractor_transaction_:transaction_id_tests code ---
  
    // --- end more_contractor_transaction_:transaction_id_tests code ---

  })

  describe("## POST contractor/transaction/:transactionId/remarks", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).post("/contractor/transaction/:transactionId/remarks")
        // --- start contractor_transaction_:transaction_id_remarks_sucessful code ---
  
        // --- end contractor_transaction_:transaction_id_remarks_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).post("/contractor/transaction/:transactionId/remarks")
        // --- start contractor_transaction_:transaction_id_remarks_unsuccessful_test code ---
  
        // --- end contractor_transaction_:transaction_id_remarks_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_contractor_transaction_:transaction_id_remarks_tests code ---
  
    // --- end more_contractor_transaction_:transaction_id_remarks_tests code ---

  })

  describe("## POST contractor/transaction/preview", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).post("/contractor/transaction/preview")
        // --- start contractor_transaction_preview_sucessful code ---
  
        // --- end contractor_transaction_preview_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).post("/contractor/transaction/preview")
        // --- start contractor_transaction_preview_unsuccessful_test code ---
  
        // --- end contractor_transaction_preview_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_contractor_transaction_preview_tests code ---
  
    // --- end more_contractor_transaction_preview_tests code ---

  })

  describe("## POST contractor/transaction/add", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).post("/contractor/transaction/add")
        // --- start contractor_transaction_add_sucessful code ---
  
        // --- end contractor_transaction_add_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).post("/contractor/transaction/add")
        // --- start contractor_transaction_add_unsuccessful_test code ---
  
        // --- end contractor_transaction_add_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_contractor_transaction_add_tests code ---
  
    // --- end more_contractor_transaction_add_tests code ---

  })

  // --- start more_contractor_tests code ---
  
  // --- end more_contractor_tests code ---

})
