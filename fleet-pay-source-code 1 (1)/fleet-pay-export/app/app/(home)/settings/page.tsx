"use client";

import deepEqual from "deep-equal";
import {
  Avatar,
  Button,
  Card,
  Label,
  Select,
  TextInput,
  ToggleSwitch,
} from "flowbite-react";
import type { Dispatch } from "react";
import { useContext, useEffect, useState } from "react";
import { TagsInput } from "react-tag-input-component";
import { CompanyContextData } from "../../../contexts/company_context";
import timezones from "../../../data/timezones.json";
import { Company } from "../../../src/models/company";
import { NotificationSettings } from "../../../src/models/notification_settings";
import { updateCompany } from "../../../src/services/backend";
import CustomToastMessage, {
  ToastMessage,
  ToastType,
} from "../../components/toast";

export default function Settings() {
  const { selectedCompany } = useContext(CompanyContextData);
  const [avatar, setAvatar] = useState("");
  const [company, setCompany] = useState<Company>(selectedCompany?.company!);
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [toast, setToast] = useState<ToastMessage | null>();
  const [changed, setChanged] = useState<boolean | null>(null);

  useEffect(() => {
    setCompany(selectedCompany?.company!);
  }, [selectedCompany?.company]);

  useEffect(() => {
    setChanged(!deepEqual(company, selectedCompany?.company) || !!avatar);
  }, [company, avatar, selectedCompany?.company]);

  useEffect(() => {
    if (toast) {
      setTimeout(() => {
        setToast(null);
      }, toast.duration * 1000);
    }
  }, [toast]);

  const handleSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    setIsLoading(true);
    e.preventDefault();

    var profilePicture = null;

    if (avatar) {
      profilePicture = avatar;
    }

    await updateCompany(selectedCompany?.companyId!, {
      name: company.name,
      profilePicture: profilePicture,
      businessHours: company.businessHours,
      notificationSettings: company.notificationSettings,
    })
      .then((resp) => {
        if (resp.error) {
          setToast({
            message: resp.error,
            type: ToastType.ERROR,
            duration: 3,
          });
          return;
        }
        setCompany(resp.result!);
        setToast({
          message: "Company saved successfully.",
          type: ToastType.SUCCESS,
          duration: 3,
        });
      })
      .catch((err) => {
        setToast({
          message: err.toString(),
          type: ToastType.ERROR,
          duration: 3,
        });
      });
    setIsLoading(false);
  };

  return (
    <>
      <CustomToastMessage toast={toast} />
      <div className="grid grid-cols-1 w-full px-4 pt-6 xl:grid-cols-2 xl:gap-4 dark:bg-gray-900">
        <div className="col-span-full mb-4 xl:mb-2">
          <Card>
            <h1 className="text-xl font-semibold text-gray-900 sm:text-2xl dark:text-white">
              My Company Settings
            </h1>
            <p className="mt-2 text-gray-500">
              {
                "Customize and manage your company's operational settings and preferences."
              }
            </p>
          </Card>
        </div>

        <div className="col-span-2">
          <form onSubmit={handleSubmit}>
            {company ? (
              <div className="grid grid-cols-1 gap-y-4 mb-6">
                <Card>
                  <CompanyBrandingCard
                    company={company}
                    setCompany={setCompany}
                    avatar={avatar}
                    setAvatar={setAvatar}
                  />
                  <div className="my-14" />
                  <CompanyBusinessHoursCard
                    company={company}
                    setCompany={setCompany}
                    timezones={timezones}
                  />
                  <div className="my-14" />
                  <NotificationSettingsCard
                    company={company}
                    setCompany={setCompany}
                  />
                  <div className="col-span-6 mt-10">
                    <Button
                      color="blue"
                      disabled={!changed || isLoading}
                      isProcessing={isLoading}
                      type="submit"
                    >
                      Save
                    </Button>
                  </div>
                </Card>
              </div>
            ) : (
              <div />
            )}
          </form>
        </div>
      </div>
    </>
  );
}

const CompanyBrandingCard = ({
  company,
  setCompany,
  avatar,
  setAvatar,
}: {
  company: Company;
  setCompany: Dispatch<Company>;
  avatar: string;
  setAvatar: Dispatch<string>;
}) => {
  const reader = new FileReader();

  reader.onload = (e) => {
    if (e.target) {
      setAvatar(e.target.result as string);
    }
  };

  const handleAvatarClick = async () => {
    const file = await new Promise<File | null>((resolve, reject) => {
      const input = document.createElement("input");
      input.type = "file";
      input.accept = "image/*";
      input.style.display = "none";

      input.onchange = (event) => {
        const target = event.target as HTMLInputElement;
        const file = target.files ? target.files[0] : null;
        if (file) {
          resolve(file);
        } else {
          reject(new Error("No file selected"));
        }
      };
      document.body.appendChild(input);
      input.click();
    });

    if (file) {
      reader.readAsDataURL(file);
    }
  };
  return (
    <div>
      <h4 className="mb-4 text-xl font-bold dark:text-white">
        Company Branding
      </h4>
      <p className="mt-2 text-gray-500">
        {"Establish your company's identity within the platform."}
      </p>
      <hr className="my-6" />
      <div className="grid grid-cols-6 gap-6">
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="first-name">Company Name</Label>
          <TextInput
            id="company-name"
            name="company-name"
            value={company.name}
            placeholder="Company Name"
            onChange={(e) => {
              setCompany({
                ...company,
                name: e.target.value,
              });
            }}
            required
          />
        </div>

        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Avatar
            className="cursor-pointer object-cover"
            img={avatar || company.profilePicture || ""}
            rounded
            size={"lg"}
            onClick={handleAvatarClick}
          >
            <div className="space-y-1 font-medium dark:text-white">
              <div>Company Logo</div>
            </div>
          </Avatar>
        </div>
      </div>
    </div>
  );
};

const baseNotificationSettings: NotificationSettings = {
  smsNotifications: false,
  emailNotifications: false,
  phoneNumbers: [],
  emails: [],
};

const NotificationSettingsCard = ({
  company,
  setCompany,
}: {
  company: Company;
  setCompany: Dispatch<Company>;
}) => {
  const [selectedPhoneNumbers, setSelectedPhoneNumbers] = useState<
    string[] | undefined
  >([]);
  const [selectedEmailAddresses, setSelectedEmailAddresses] = useState<
    string[] | undefined
  >([]);

  return (
    <div>
      <h3 className="mb-4 text-xl font-bold dark:text-white">
        Notification Settings
      </h3>
      <p className="mt-2 text-gray-500">
        Configure how you receive notifications about transactions and system
        updates.
      </p>
      <hr className="my-6" />

      <div className="grid grid-cols-2 gap-12 sm:col-span-2">
        <div>
          <div className="flex items-center justify-between py-4">
            <div className="flex grow flex-col">
              <div className="text-lg font-semibold text-gray-900 dark:text-white">
                SMS Notifications
              </div>
              <div className="text-base font-normal text-gray-500 dark:text-gray-400">
                Turn on to get real-time alerts and important system
                notifications on your mobile phone.
              </div>
            </div>

            <ToggleSwitch
              color="blue"
              checked={company.notificationSettings?.smsNotifications ?? false}
              id="sms-notifications"
              label=""
              name="sms-notifications"
              onChange={() => {
                setCompany({
                  ...company,
                  notificationSettings: {
                    ...(company.notificationSettings ??
                      baseNotificationSettings),
                    smsNotifications:
                      !company.notificationSettings?.smsNotifications,
                  } as NotificationSettings,
                });
              }}
            />
          </div>
          <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
            <Label htmlFor="phone-number">Phone Number</Label>
            <TagsInput
              name="phone-number"
              value={
                company.notificationSettings?.phoneNumbers ??
                selectedPhoneNumbers
              }
              placeHolder="Phone Number(s)"
              onChange={(e) => {
                setSelectedPhoneNumbers(e);
                setCompany({
                  ...company,
                  notificationSettings: {
                    ...(company.notificationSettings ??
                      baseNotificationSettings),
                    phoneNumbers: e,
                  } as NotificationSettings,
                });
              }}
            />
            <p className="mt-2 text-gray-500">
              Provide the mobile number where you wish to receive SMS
              notifications. Standard message rates may apply.
            </p>
          </div>
        </div>
        <div>
          <div className="flex items-center justify-between py-4">
            <div className="flex grow flex-col">
              <div className="text-lg font-semibold text-gray-900 dark:text-white">
                Email Notifications
              </div>
              <div className="text-base font-normal text-gray-500 dark:text-gray-400">
                Activate to receive detailed notifications and updates in your
                email inbox.
              </div>
            </div>
            <ToggleSwitch
              color="blue"
              checked={
                company.notificationSettings?.emailNotifications ?? false
              }
              id="email-notifications"
              label=""
              name="email-notifications"
              onChange={() => {
                setCompany({
                  ...company,
                  notificationSettings: {
                    ...(company.notificationSettings ??
                      baseNotificationSettings),
                    emailNotifications:
                      !company.notificationSettings?.emailNotifications,
                  } as NotificationSettings,
                });
              }}
            />
          </div>
          <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
            <Label htmlFor="email-address">Email Address</Label>
            <TagsInput
              name="email-address"
              value={
                company.notificationSettings?.emails ?? selectedEmailAddresses
              }
              placeHolder="Email Address(s)"
              onChange={(e) => {
                setSelectedEmailAddresses(e);
                setCompany({
                  ...company,
                  notificationSettings: {
                    ...(company.notificationSettings ??
                      baseNotificationSettings),
                    emails: e,
                  } as NotificationSettings,
                });
              }}
            />
            <p className="mt-2 text-gray-500">
              Specify the email address for receiving notifications. This can be
              different from your account login email.
            </p>
            {/* <TextInput
              id="email-address"
              name="email-address"
              placeholder="Email Address"
              required={company.notificationSettings?.emailNotifications}
              type="email"
              helperText="Specify the email address for receiving notifications. This can be different from your account login email."
            /> */}
          </div>
        </div>
      </div>
    </div>
  );
};

const CompanyBusinessHoursCard = ({
  company,
  setCompany,
  timezones,
}: {
  company: Company;
  setCompany: Dispatch<Company>;
  timezones: any;
}) => {
  return (
    <div>
      <h3 className="mb-4 text-xl font-bold dark:text-white">
        Company Business Hours
      </h3>
      <p className="mt-2 text-gray-500">
        {
          "Define your company's official operating hours. Setting your business hours here will inform users when they can expect interactions and transaction processing."
        }
      </p>
      <hr className="my-6" />

      <div className="grid grid-cols-6 gap-6">
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="opening-hours">Opening Hours</Label>
          <TextInput
            id="opening-hours"
            name="opening-hours"
            placeholder="Opening Hours"
            required
            value={company.businessHours?.openingHour}
            type="time"
            onChange={(e) => {
              setCompany({
                ...company,
                businessHours: {
                  ...company.businessHours!,
                  openingHour: e.target.value,
                },
              });
            }}
          />
        </div>
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="closing-hours">Closing Hours</Label>
          <TextInput
            id="closing-hours"
            name="closing-hours"
            value={company.businessHours?.closingHour}
            placeholder="Closing Hours"
            required
            type="time"
            onChange={(e) => {
              setCompany({
                ...company,
                businessHours: {
                  ...company.businessHours!,
                  closingHour: e.target.value,
                },
              });
            }}
          />
        </div>
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="time-zone">Time Zone</Label>
          <Select
            id="time-zone"
            required
            value={company.businessHours?.timezone}
            onChange={(e) => {
              setCompany({
                ...company,
                businessHours: {
                  ...company.businessHours!,
                  timezone: e.target.value,
                },
              });
            }}
          >
            <option disabled selected value=''  > -- select an option -- </option>

            {timezones.map((time: any) => {
              return (
                <option
                  key={time.text}
                  defaultValue={company.businessHours?.timezone}
                >
                  {time.text}
                </option>
              );
            })}
          </Select>
        </div>
      </div>
    </div>
  );
};
