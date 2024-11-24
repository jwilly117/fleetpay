import { CompanyBusinessHours } from './company_business_hours';
import { NotificationSettings } from './notification_settings';
import { Contact } from './contact';

export interface Company {
  id: string,
  name: string,
  emails?: string[] | null,
  phoneNumbers?: string[] | null,
  profilePicture?: string | null,
  businessHours?: CompanyBusinessHours | null,
  notificationSettings?: NotificationSettings | null,
  accountingDepartmentContacts: Contact[],
  // --- start extra_fields code ---

  // --- end extra_fields code ---
}
