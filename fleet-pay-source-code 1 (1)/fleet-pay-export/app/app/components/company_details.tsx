import dayjs from "dayjs";
import { Datepicker, Dropdown, Label, Select, TextInput } from "flowbite-react";
import { Dispatch } from "react";
import { RxCross2 } from "react-icons/rx";
import { FundingSetting } from "../../src/models/funding_setting";
import { NewContractorRequest } from "../../src/models/new_contractor_request";
import { PaymentInterval } from "../../src/models/payment_interval";
import { PaymentStructure } from "../../src/models/payment_structure";

interface CompanyInfo {
  name: string;
  phoneNumbers: string[];
  emails: string[];
}

const payementIntervals: PaymentInterval[] = [
  "DAILY",
  "WEEKLY",
  "BIWEEKLY",
  "MONTHLY",
];

export const CompanyInformationCard = ({
  companyInfo,
  setCompanyInfo,
  setError,
}: {
  companyInfo: CompanyInfo;
  setCompanyInfo: Dispatch<CompanyInfo>;
  setError: Dispatch<string>;
}) => {
  return (
    <div>
      <h4 className="mb-4 text-xl font-bold dark:text-white">
        Company Information
      </h4>
      <hr className="my-6" />
      <div className="grid grid-cols-6 gap-6">
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="company-name">Company Name</Label>
          <TextInput
            id="company-name"
            name="company-name"
            value={companyInfo.name}
            placeholder="Enter the full legal company name"
            helperText="Please ensure the company name matches the one registered in your accounting package."
            onChange={(e) => {
              setCompanyInfo({
                ...companyInfo,
                name: e.target.value,
              });
            }}
            required
          />
        </div>
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="phone-number">Phone Number(s)</Label>
          <TextInput
            id="phone-number"
            name="phone-number"
            placeholder="Enter the company's phone number"
            type="phone"
            value={companyInfo.phoneNumbers.join(", ")}
            helperText="Include the country code if outside of the domestic calling area."
            onChange={(e) => {
              var contarctorPhoneNumbers = e.target.value
                .split(",")
                .map((phoneNumber) => phoneNumber.trim());
              setCompanyInfo({
                ...companyInfo,
                phoneNumbers: contarctorPhoneNumbers,
              });
            }}
            required
          />
        </div>
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="email-address">Email Address(s)</Label>
          <TextInput
            id="email-address"
            name="email-address"
            placeholder="Enter the company's email address"
            multiple
            type="email"
            value={companyInfo.emails.join(", ")}
            helperText="This will be used for official correspondence and notifications."
            onChange={(e) => {
              const emails = e.target.value
                .split(",")
                .map((email) => email.trim());

              setCompanyInfo({
                ...companyInfo,
                emails: emails,
              });
            }}
            required
          />
        </div>
      </div>
    </div>
  );
};

export const PrimaryContactInformationCard = ({
  contractor,
  setContractor,
}: {
  contractor: NewContractorRequest;
  setContractor: Dispatch<NewContractorRequest>;
}) => {
  return (
    <div>
      <h4 className="mb-4 text-xl font-bold dark:text-white">
        Primary Contact Information
      </h4>
      <hr className="my-6" />
      <div className="grid grid-cols-6 gap-6">
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="primary-contact-name">Primary Contact Name</Label>
          <TextInput
            id="primary-contact-name"
            name="primary-contact-name"
            placeholder="Enter the primary contact's full name"
            helperText="This is the main individual we will contact for any issues or communications."
            onChange={(e) => {
              setContractor({
                ...contractor,
                user: {
                  ...contractor.user,
                  name: e.target.value,
                },
              });
            }}
            required
          />
        </div>
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="conatct-phone-number">Phone Number</Label>
          <TextInput
            id="conatct-phone-number"
            name="conatct-phone-number"
            placeholder="Enter the primary contact's phone number"
            helperText="Include the country code if outside of the domestic calling area."
            type="phone"
            onChange={(e) => {
              setContractor({
                ...contractor,
                user: {
                  ...contractor.user,
                  phoneNumber: e.target.value,
                },
              });
            }}
            required
          />
        </div>
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="contact-email-address">Email Address</Label>
          <TextInput
            id="contact-email-address"
            name="contact-email-address"
            placeholder="Enter the primary contact's email address"
            helperText="This will be used for official correspondence and notifications."
            type="email"
            onChange={(e) => {
              setContractor({
                ...contractor,
                user: {
                  ...contractor.user,
                  email: e.target.value,
                  username: e.target.value,
                },
              });
            }}
            required
          />
        </div>
      </div>
    </div>
  );
};

export const FundingLimitsFeeStructurePage = ({
  fundingSetting,
  setFundingSetting,
}: {
  fundingSetting: FundingSetting;
  setFundingSetting: Dispatch<FundingSetting>;
}) => {
  const {
    fundingLimitType,
    fundingLimit,
    fundingAmount,
    postageFee,
    transactionFee,
  } = fundingSetting;

  const fundingLimitPrefix = fundingLimitType === "FIXED_AMOUNT" ? "$" : "%";

  let helperText;
  let fundingLimitColor;
  switch (fundingLimitType) {
    case "PERCENTAGE":
      if (fundingLimit >= 0 && fundingLimit <= 100) {
        helperText =
          "Specify if this is a fixed amount or a percentage of transactions";
        fundingLimitColor = "gray";
      } else {
        helperText = "The value must be between 1 and 100";
        fundingLimitColor = "failure";
      }
      break;
    case "FIXED_AMOUNT":
      if (fundingAmount >= 1 && fundingLimit > fundingAmount) {
        helperText = "Funding limit must be less than the funding amount";
        fundingLimitColor = "failure";
      } else {
        helperText =
          "Specify if this is a fixed amount or a percentage of transactions";
        fundingLimitColor = "gray";
      }
      break;
    default:
      helperText =
        "Specify if this is a fixed amount or a percentage of transactions";
  }

  const isTransactionFeeInLimit =
    fundingSetting.transactionFee <= 100 && fundingSetting.transactionFee >= 0;

  const isPostageValidNumber = postageFee >= 0;

  const isFundingAmountValid = fundingAmount >= 0;
  return (
    <div>
      <h4 className="mb-4 text-xl font-bold dark:text-white">
        Funding Limits & Fee Structure
      </h4>
      <hr className="my-6" />
      <div className="grid grid-cols-6 gap-6">
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="funding-amount">Funding Amount</Label>
          <TextInput
            id="funding-amount"
            name="funding-amount"
            placeholder="Enter the funding limit"
            helperText={
              isFundingAmountValid
                ? "This is the funding limit for the current pay period"
                : "Funding Amount should not be negative value"
            }
            color={isFundingAmountValid ? "gray" : "failure"}
            type="number"
            min={1}
            addon="$"
            value={
              fundingSetting.fundingAmount == 0
                ? ""
                : fundingSetting.fundingAmount
            }
            onChange={(e) => {
              setFundingSetting({
                ...fundingSetting,
                fundingAmount: +e.target.value,
              });
            }}
            required
          />
        </div>
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="funding-limit">Funding Limit</Label>
          <TextInput
            id="funding-limit"
            name="funding-limit"
            placeholder={"Enter the allocated funds in " + fundingLimitPrefix}
            helperText={helperText}
            type="number"
            required
            value={
              fundingSetting.fundingLimit == 0
                ? ""
                : fundingSetting.fundingLimit
            }
            color={fundingLimitColor}
            className="addon:ml-4"
            addon={
              <Dropdown label={fundingLimitPrefix} inline className="add">
                <Dropdown.Item
                  value="FIXED_AMOUNT"
                  onClick={() => {
                    setFundingSetting({
                      ...fundingSetting,
                      fundingLimitType: "FIXED_AMOUNT",
                    });
                  }}
                >
                  Dollar Amount
                </Dropdown.Item>
                <Dropdown.Item
                  value="PERCENTAGE"
                  onClick={() => {
                    setFundingSetting({
                      ...fundingSetting,
                      fundingLimitType: "PERCENTAGE",
                    });
                  }}
                >
                  Percentage
                </Dropdown.Item>
              </Dropdown>
            }
            onChange={(e) => {
              const value = e.target.value;
              setFundingSetting({
                ...fundingSetting,
                fundingLimit: +value,
              });
            }}
          />
        </div>

        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="postage-fee">Postage Fee</Label>
          <TextInput
            id="postage-fee"
            name="postage-fee"
            placeholder="Enter the postage fee in dollars"
            helperText={
              isPostageValidNumber
                ? " This amount will be deducted from each transaction."
                : "Postage Fee should not be negative value"
            }
            color={isPostageValidNumber ? "gray" : "failure"}
            type="number"
            addon="$"
            defaultValue={postageFee == 0 ? "" : postageFee}
            onChange={(e) => {
              const value = e.target.value;
              setFundingSetting({
                ...fundingSetting,
                postageFee: value == "" ? 0 : +value,
              });
            }}
            required
          />
        </div>
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="transaction-fee">Transaction Fee %</Label>
          <TextInput
            id="transaction-fee"
            name="transaction-fee"
            placeholder="Enter the transaction fee percentage"
            helperText={
              isTransactionFeeInLimit
                ? "This percentage will be deducted from each transaction."
                : "The value must be between 1 and 100"
            }
            type="number"
            max={100}
            min={0}
            defaultValue={transactionFee == 0 ? "" : transactionFee}
            color={isTransactionFeeInLimit ? "gray" : "failure"}
            addon="%"
            onChange={(e) => {
              setFundingSetting({
                ...fundingSetting,
                transactionFee: +e.target.value,
              });
            }}
            required
          />
        </div>
      </div>
    </div>
  );
};

export const PaymentStructurePage = ({
  payementStructure,
  setPayementStructure,
}: {
  payementStructure: PaymentStructure;
  setPayementStructure: Dispatch<PaymentStructure>;
}) => {
  return (
    <div>
      <h4 className="mb-4 text-xl font-bold dark:text-white">
        Payment Structure
      </h4>
      <hr className="my-6" />
      <div className="grid grid-cols-6 gap-6">
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="payement-interval">Payment Interval</Label>
          <Select
            id="payement-interval"
            required
            value={payementStructure.paymentInterval}
            onChange={(e) => {
              setPayementStructure({
                ...payementStructure,
                paymentInterval: e.target.value as PaymentInterval,
              });
            }}
          >
            {payementIntervals.map((interval) => {
              return <option key={interval}>{interval}</option>;
            })}
          </Select>
          <p className="text-sm text-gray-500">
            Select the frequency at which payments will be processed for this
            company.{" "}
          </p>
        </div>
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="payement-start-date">Payment Cycle Start Date</Label>
          <Datepicker
            id="payement-start-date"
            helperText="Choose the start date of the payment period. This date marks the beginning of the payment cycle."
            required
            showClearButton={false}
            value={dayjs(payementStructure.cycleStartDate).format("MM-DD-YYYY")}
            placeholder="Select Start Date"
            maxDate={
              payementStructure.cycleEndDate
                ? dayjs(payementStructure.cycleEndDate).toDate()
                : undefined
            }
            onSelectedDateChanged={(e) => {
              setPayementStructure({
                ...payementStructure,
                cycleStartDate: e,
              });
            }}
          />
        </div>
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="payement-end-date">Payment Cycle End Date</Label>
          <Datepicker
            id="payement-end-date"
            helperText="Select the end date for the payment cycle. This date marks the closure of the current payment period."
            required
            rightIcon={() => (
              <RxCross2
                className="cursor-pointer"
                color="red"
                onClick={() => {
                  setPayementStructure({
                    ...payementStructure,
                    cycleEndDate: undefined,
                  });
                }}
              />
            )}
            value={
              payementStructure.cycleEndDate
                ? dayjs(payementStructure.cycleEndDate).format("MM-DD-YYYY")
                : ""
            }
            placeholder="Select End Date"
            minDate={dayjs(payementStructure.cycleStartDate).toDate()}
            showClearButton={false}
            onSelectedDateChanged={(e) => {
              setPayementStructure({
                ...payementStructure,
                cycleEndDate: e,
              });
            }}
          />
        </div>
      </div>
    </div>
  );
};
