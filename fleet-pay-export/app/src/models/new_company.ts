import { CompanyBusinessHours } from './company_business_hours';
import { NotificationSettings } from './notification_settings';
import { Contact } from './contact';

export interface NewCompany {
  name: string,
  profilePicture?: string | null,
  emails?: string[] | null,
  phoneNumbers?: string[] | null,
  businessHours?: CompanyBusinessHours | null,
  notificationSettings?: NotificationSettings | null,
  accountingDepartmentContact?: Contact | null,
  // --- start extra_fields code ---

  // --- end extra_fields code ---
}
