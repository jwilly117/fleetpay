import chai, { expect } from "chai"
import chaiHttp from "chai-http"

chai.use(chaiHttp);

import app from "../../index"

// --- start imports code ---
  
// --- end imports code ---

// --- start before_auth_commands code ---
  
// --- end before_auth_commands code ---

describe("# TEST /auth", async () => {

  // --- start before_commands code ---
  
  // --- end before_commands code ---

  describe("## POST auth/login", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).post("/auth/login")
        // --- start auth_login_sucessful code ---
  
        // --- end auth_login_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).post("/auth/login")
        // --- start auth_login_unsuccessful_test code ---
  
        // --- end auth_login_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_auth_login_tests code ---
  
    // --- end more_auth_login_tests code ---

  })

  describe("## POST auth/changePassword", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).post("/auth/changePassword")
        // --- start auth_change_password_sucessful code ---
  
        // --- end auth_change_password_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).post("/auth/changePassword")
        // --- start auth_change_password_unsuccessful_test code ---
  
        // --- end auth_change_password_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_auth_change_password_tests code ---
  
    // --- end more_auth_change_password_tests code ---

  })

  describe("## GET auth/me", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).get("/auth/me")
        // --- start auth_me_sucessful code ---
  
        // --- end auth_me_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).get("/auth/me")
        // --- start auth_me_unsuccessful_test code ---
  
        // --- end auth_me_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_auth_me_tests code ---
  
    // --- end more_auth_me_tests code ---

  })

  describe("## PATCH auth/me", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).patch("/auth/me")
        // --- start auth_me_sucessful code ---
  
        // --- end auth_me_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).patch("/auth/me")
        // --- start auth_me_unsuccessful_test code ---
  
        // --- end auth_me_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_auth_me_tests code ---
  
    // --- end more_auth_me_tests code ---

  })

  describe("## POST auth/forgotPassword/sendOtp", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).post("/auth/forgotPassword/sendOtp")
        // --- start auth_forgot_password_send_otp_sucessful code ---
  
        // --- end auth_forgot_password_send_otp_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).post("/auth/forgotPassword/sendOtp")
        // --- start auth_forgot_password_send_otp_unsuccessful_test code ---
  
        // --- end auth_forgot_password_send_otp_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_auth_forgot_password_send_otp_tests code ---
  
    // --- end more_auth_forgot_password_send_otp_tests code ---

  })

  describe("## POST auth/forgotPassword/validateOtp", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).post("/auth/forgotPassword/validateOtp")
        // --- start auth_forgot_password_validate_otp_sucessful code ---
  
        // --- end auth_forgot_password_validate_otp_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).post("/auth/forgotPassword/validateOtp")
        // --- start auth_forgot_password_validate_otp_unsuccessful_test code ---
  
        // --- end auth_forgot_password_validate_otp_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_auth_forgot_password_validate_otp_tests code ---
  
    // --- end more_auth_forgot_password_validate_otp_tests code ---

  })

  describe("## POST auth/forgotPassword/changePassword", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).post("/auth/forgotPassword/changePassword")
        // --- start auth_forgot_password_change_password_sucessful code ---
  
        // --- end auth_forgot_password_change_password_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).post("/auth/forgotPassword/changePassword")
        // --- start auth_forgot_password_change_password_unsuccessful_test code ---
  
        // --- end auth_forgot_password_change_password_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_auth_forgot_password_change_password_tests code ---
  
    // --- end more_auth_forgot_password_change_password_tests code ---

  })

  describe("## POST auth/refreshToken", () => {
    it("### Sucessful run", (done) => {
      chai.request(app).post("/auth/refreshToken")
        // --- start auth_refresh_token_sucessful code ---
  
        // --- end auth_refresh_token_sucessful code ---
        .catch((err) => {
          done(err);
        });
    })

    it("### Unsucessful run", (done) => {
      chai.request(app).post("/auth/refreshToken")
        // --- start auth_refresh_token_unsuccessful_test code ---
  
        // --- end auth_refresh_token_unsuccessful_test code ---
        .catch((err) => {
          done(err);
        });
    })

    // --- start more_auth_refresh_token_tests code ---
  
    // --- end more_auth_refresh_token_tests code ---

  })

  // --- start more_auth_tests code ---
  
  // --- end more_auth_tests code ---

})
