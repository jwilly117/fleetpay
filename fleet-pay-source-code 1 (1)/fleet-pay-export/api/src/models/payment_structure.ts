import { PaymentInterval } from './payment_interval';

export interface PaymentStructure {
  paymentInterval: PaymentInterval,
  cycleStartDate: Date,
  cycleEndDate?: Date | null,
  // --- start extra_fields code ---
  
  // --- end extra_fields code ---
}
