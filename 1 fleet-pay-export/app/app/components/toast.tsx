import { Toast } from "flowbite-react";
import {
  HiCheck,
  HiExclamation,
  HiInformationCircle,
  HiX,
} from "react-icons/hi";
import { twMerge } from "tailwind-merge";

export interface ToastMessage {
  message: string;
  type: ToastType;
  duration: number;
}
export enum ToastType {
  SUCCESS = "bg-green-100 text-green-500 dark:bg-green-800 dark:text-green-200",
  ERROR = "bg-red-100 text-red-500 dark:bg-red-800 dark:text-red-200",
  WARNING = "bg-yellow-100 text-yellow-500 dark:bg-yellow-800 dark:text-yellow-200",
  INFO = "bg-blue-100 text-blue-500 dark:bg-blue-800 dark:text-blue-200",
}

function getIcon(toast: ToastMessage) {
  switch (toast?.type) {
    case ToastType.SUCCESS:
      return <HiCheck className="h-5 w-5" />;

    case ToastType.WARNING:
      return <HiExclamation className="h-5 w-5" />;

    case ToastType.ERROR:
      return <HiX className="h-5 w-5" />;

    case ToastType.INFO:
      return <HiInformationCircle className="h-5 w-5" />;
  }
}
export default function CustomToastMessage({
  toast,
}: {
  toast: ToastMessage | null | undefined;
}) {
  return (
    <>
      {toast && (
        <Toast className="fixed bottom-6 right-4">
          <div
            className={twMerge(
              "inline-flex h-8 w-8 shrink-0 items-center justify-center rounded-lg",
              toast.type
            )}
          >
            {getIcon(toast)}
          </div>
          <div className="ml-3 text-sm font-normal">{toast.message}</div>
          <Toast.Toggle />
        </Toast>
      )}
    </>
  );
}
