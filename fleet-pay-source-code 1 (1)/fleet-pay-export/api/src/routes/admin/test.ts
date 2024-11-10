import chai, { expect } from "chai"
import chaiHttp from "chai-http"

chai.use(chaiHttp);

import app from "../../index"

// --- start imports code ---

// --- end imports code ---

// --- start before_admin_commands code ---

// --- end before_admin_commands code ---

describe("# TEST /admin", async () => {

  // --- start before_commands code ---

  // --- end before_commands code ---

  describe("## POST admin/company/onboard", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).post("/admin/company/onboard")
        // --- start admin_company_onboard_sucessful code ---

        // --- end admin_company_onboard_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).post("/admin/company/onboard")
        // --- start admin_company_onboard_unsuccessful_test code ---

        // --- end admin_company_onboard_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_admin_company_onboard_tests code ---

    // --- end more_admin_company_onboard_tests code ---

  })

  // --- start more_admin_tests code ---

  // --- end more_admin_tests code ---

})
