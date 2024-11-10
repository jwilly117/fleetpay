"use client";

import { Avatar, Card, ToggleSwitch } from "flowbite-react";
import { Dispatch, useState } from "react";

export default function IntegrationPage() {
  const [isEnable, setIsEnable] = useState(false);
  return (
    <>
      <div className="grid grid-cols-1 w-full px-4 pt-6 xl:grid-cols-2 xl:gap-4 dark:bg-gray-900">
        <div className="col-span-full mb-4 xl:mb-2">
          <Card>
            <h1 className="text-xl font-semibold text-gray-900 sm:text-2xl dark:text-white">
              Integrations
            </h1>
            <p className="mt-2 text-gray-500">
              Connect and configure third-party services to extend the
              capabilities of your Fleet Pay experience. Manage API
              integrations, payment gateways, and more.
            </p>
          </Card>
        </div>
        <div className="grid grid-cols-1 gap-y-4 mb-6 mt-4 w-full gap-4 md:grid-cols-2 xl:grid-cols-4 col-span-2">
          <Card>
            <IntergrationCard
              title={"QuickBooks Online"}
              mainContent={
                "Seamlessly sync your financial transactions with QuickBooks Online for effortless accounting and financial management."
              }
              imgValue={"qb"}
              isEnable={isEnable}
              setIsEnable={() => {
                setIsEnable(!isEnable);
              }}
            />
          </Card>
          <Card>
            <IntergrationCard
              title={"Xero"}
              mainContent={
                "Connect to Xero to automate the transfer of payment data, simplifying your bookkeeping processes."
              }
              imgValue={"xero"}
              isEnable={isEnable}
              setIsEnable={() => {
                setIsEnable(!isEnable);
              }}
            />
          </Card>
          <Card>
            <IntergrationCard
              title={"QuickBooks Online"}
              mainContent={
                "Seamlessly sync your financial transactions with QuickBooks Online for effortless accounting and financial management."
              }
              imgValue={"qb"}
              isEnable={isEnable}
              setIsEnable={() => {
                setIsEnable(!isEnable);
              }}
            />
          </Card>
          <Card>
            <IntergrationCard
              title={"Xero"}
              mainContent={
                "Connect to Xero to automate the transfer of payment data, simplifying your bookkeeping processes."
              }
              imgValue={"xero"}
              isEnable={isEnable}
              setIsEnable={() => {
                setIsEnable(!isEnable);
              }}
            />
          </Card>
          <Card>
            <IntergrationCard
              title={"QuickBooks Online"}
              mainContent={
                "Seamlessly sync your financial transactions with QuickBooks Online for effortless accounting and financial management."
              }
              imgValue={"qb"}
              isEnable={isEnable}
              setIsEnable={() => {
                setIsEnable(!isEnable);
              }}
            />
          </Card>
        </div>
      </div>
    </>
  );
}

const IntergrationCard = ({
  imgValue,
  title,
  mainContent,
  isEnable,
  setIsEnable,
}: {
  imgValue: string;
  title: string;
  mainContent: string;
  isEnable: boolean;

  setIsEnable: Dispatch<boolean | null>;
}) => {
  return (
    <div className="">
      <div className="flex flex-row items-start justify-between">
        <Avatar
          className="object-cover"
          img={`/${imgValue}.png`}
          rounded
          size={"sm"}
        >
          <div className="space-y-1 font-medium dark:text-white">
            <div>{title}</div>
          </div>
        </Avatar>
      </div>
      <div className="h-6"></div>
      <div className="flex flex-row items-start justify-between">
        <p className="text-gray-500 ">{mainContent}</p>
      </div>

      <div className="h-6"></div>
      <div className="flex flex-row items-end justify-end">
        <ToggleSwitch
          color="blue"
          checked={isEnable}
          id="email-notifications"
          label=""
          name="email-notifications"
          onChange={setIsEnable}
        />
      </div>
    </div>
  );
};
