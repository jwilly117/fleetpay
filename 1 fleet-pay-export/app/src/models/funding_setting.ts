import { FundingLimitType } from './funding_limit_type';

export interface FundingSetting {
  fundingLimitType: FundingLimitType,
  fundingLimit: number,
  transactionFee: number,
  postageFee: number,
  fundingAmount: number,
  // --- start extra_fields code ---

  // --- end extra_fields code ---
}
