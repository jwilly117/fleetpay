"use client";

import dayjs from "dayjs";
import {
  Badge,
  Button,
  Label,
  Modal,
  ModalBody,
  ModalFooter,
  ModalHeader,
  TableCell,
  TableRow,
  TextInput,
  Timeline,
} from "flowbite-react";
import { useRouter } from "next/navigation";
import { useEffect, useState } from "react";
import { FaCheck, FaSync } from "react-icons/fa";
import { RxCross2 } from "react-icons/rx";
import { twMerge } from "tailwind-merge";

import { formatToUSD } from "../../../helpers/format-number";
import { Transaction } from "../../../src/models/transaction";
import { TransactionRemark } from "../../../src/models/transaction_remark";
import { updateCompanyTransactionStatus } from "../../../src/services/backend";
import { customTheme } from "../../theme";

export default function TransactionItem({
  transaction,
}: {
  transaction: Transaction;
}) {
  function getStatusBadgeColor(status: string) {
    switch (status) {
      case "PENDING":
        return "warning";

      case "APPROVED":
        return "success";

      case "DENIED":
        return "failure";

      case "COMPLETED":
        return "success";

      case "FAILED":
        return "failure";

      default:
        return "info";
    }
  }

  const [openModal, setOpenModal] = useState(false);
  const [openTransactionHistoryModal, setOpenTransactionHistoryModal] =
    useState(false);

  const [action, setAction] = useState("");
  const [transactionId, setTransactionId] = useState("");

  return (
    <>
      <TableRow key={`${transaction.id}`}>
        <TableCell className="whitespace-nowrap p-4 text-sm font-normal text-gray-900 dark:text-white">
          {dayjs(transaction.createdAt).format("MMMM D YYYY")}
          {/* {dayjs(transaction.createdAt).format("MM-DD-YYYY")} */}
        </TableCell>
        <TableCell className="whitespace-nowrap p-4 text-sm font-normal text-gray-500 dark:text-gray-400">
          {transaction.id}
        </TableCell>
        <TableCell className="whitespace-nowrap p-4 text-sm font-semibold text-gray-500 dark:text-white">
          {transaction.contractor?.name ?? "-"}
        </TableCell>
        <TableCell className="whitespace-nowrap p-4 text-sm font-semibold text-gray-900 dark:text-white">
          {formatToUSD(transaction.requestedAmount)}
        </TableCell>
        <TableCell className="whitespace-nowrap p-4 text-sm font-semibold text-gray-900 dark:text-white">
          {formatToUSD(transaction.fee)}
        </TableCell>

        {transaction.status == "PENDING" ? (
          <TableCell className="flex whitespace-nowrap p-4">
            <Button
              size={"xs"}
              color="success"
              type="button"
              onClick={() => {
                setOpenModal(true);
                setAction("approve");
                setTransactionId(transaction.id);
              }}
            >
              APPROVE
            </Button>
            <div className="w-2"></div>
            <Button
              size={"xs"}
              color="failure"
              type="button"
              onClick={() => {
                setOpenModal(true);
                setAction("deny");
                setTransactionId(transaction.id);
              }}
            >
              DENY
            </Button>
          </TableCell>
        ) : (
          <TableCell className="flex whitespace-nowrap p-4">
            <Badge
              className="rounded-md font-medium"
              color={getStatusBadgeColor(transaction.status)}
            >
              {transaction.status}
            </Badge>
          </TableCell>
        )}

        {transaction.status != "PENDING" ? (
          <TableCell className="whitespace-nowrap p-4 text-sm font-semibold text-gray-900 dark:text-white">
            <Button
              className="cursor-pointer"
              size={"xs"}
              color={"info"}
              onClick={() => {
                setOpenTransactionHistoryModal(true);
              }}
            >
              View
            </Button>
          </TableCell>
        ) : null}
      </TableRow>
      <ConfirmationModal
        openModal={openModal}
        setOpenModal={setOpenModal}
        action={action}
        transactionId={transactionId}
      />
      <ViewTransactionHistoryModal
        openTransactionHistoryModal={openTransactionHistoryModal}
        setOpenTransactionHistoryModal={setOpenTransactionHistoryModal}
        remarks={transaction.remarks}
      />
    </>
  );
}

const ConfirmationModal = ({
  openModal,
  setOpenModal,
  action,
  transactionId,
}: {
  openModal: boolean;
  setOpenModal: (value: boolean) => void;
  action: string;
  transactionId: string;
}) => {
  const [remarks, setRemarks] = useState("");
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(false);
  const { replace } = useRouter();

  useEffect(() => {
    setError("");
  }, [remarks]);

  const handleSubmitTransaction = async (action: string) => {
    if (!remarks) {
      setError("Remarks is required");
      return;
    }
    setLoading(true);
    await updateCompanyTransactionStatus(
      transactionId,
      action == "approve" ? "APPROVED" : "DENIED",
      remarks
    ).then((resp) => {
      if (resp.error) {
        console.log(resp.error);
        return;
      }
      replace("/transactions/history");
    });
    setLoading(false);
    setOpenModal(false);
  };

  return (
    <Modal show={openModal} size="md" onClose={() => setOpenModal(false)}>
      <ModalHeader>
        {action == "approve" ? "Approve Transaction" : "Deny Transaction"}
      </ModalHeader>
      <form
        onSubmit={(e) => {
          e.preventDefault();
          handleSubmitTransaction(action);
        }}
      >
        <ModalBody>
          <div className="">
            <Label htmlFor="remarks" className="m-1 ">
              Please enter your remarks to continue
            </Label>
            <div className="h-4"> </div>
            <TextInput
              id="remarks"
              name="remarks"
              placeholder="Remarks*"
              required
              helperText={
                error ? (
                  <span className="text-red-500 font-medium"> {error}</span>
                ) : (
                  ""
                )
              }
              onChange={(e) => {
                setRemarks(e.target.value);
              }}
            />
          </div>
        </ModalBody>
        <ModalFooter>
          <div className="flex justify-center gap-4">
            <Button
              color={action == "approve" ? "success" : "failure"}
              type="submit"
              isProcessing={loading}
            >
              {action.toUpperCase()}
            </Button>
            <Button color="gray" onClick={() => setOpenModal(false)}>
              CANCEL
            </Button>
          </div>
        </ModalFooter>
      </form>
    </Modal>
  );
};

const ViewTransactionHistoryModal = ({
  openTransactionHistoryModal,
  setOpenTransactionHistoryModal,
  remarks,
}: {
  openTransactionHistoryModal: boolean;
  setOpenTransactionHistoryModal: (value: boolean) => void;
  remarks: TransactionRemark[];
}) => {
  function getTimelineIcon(status: string) {
    switch (status) {
      case "PENDING":
        return <FaSync className="cursor-pointer text-white" size={"12"} />;

      case "APPROVED":
        return <FaCheck className="cursor-pointer text-white" size={"13"} />;

      case "DENIED":
        return <RxCross2 className="cursor-pointer text-white" size={"18"} />;

      case "COMPLETED":
        return <FaCheck className="cursor-pointer text-white" size={"13"} />;

      case "FAILED":
        return <RxCross2 className="cursor-pointer text-white" size={"18"} />;

      default:
        return "info";
    }
  }

  function getTimelineIconBackgroundColor(status: String) {
    switch (status) {
      case "PENDING":
        return "bg-yellow-400";

      case "APPROVED":
        return "bg-green-800";

      case "DENIED":
        return "bg-red-800";

      case "COMPLETED":
        return "bg-green-800";

      case "FAILED":
        return "bg-gray-800";

      default:
        return "bg-blue-800";
    }
  }

  return (
    <Modal
      show={openTransactionHistoryModal}
      size="md"
      onClose={() => setOpenTransactionHistoryModal(false)}
    >
      <ModalHeader>Transaction History</ModalHeader>
      <ModalBody>
        <Timeline>
          {remarks.map((remark) => (
            <Timeline.Item key={remark.id}>
              <Timeline.Point
                color="#ff0000"
                icon={() => getTimelineIcon(remark.status!)}
                style={{
                  background: "pink",
                }}
                theme={{
                  ...customTheme.timeline,
                  marker: {
                    ...customTheme.timeline!.item?.point?.marker,
                    icon: {
                      ...customTheme.timeline!.item?.point?.marker?.icon,
                      wrapper: twMerge(
                        customTheme.timeline!.item?.point?.marker?.icon
                          ?.wrapper,
                        getTimelineIconBackgroundColor(remark.status!)
                      ),
                    },
                  },
                }}
              />

              <Timeline.Content>
                <Timeline.Time>
                  {`${dayjs(remark.createdAt).format("MM-DD-YYYY")} -  ${dayjs(
                    remark.createdAt
                  ).format("h:mm A")} - ${remark.user?.name}`}
                </Timeline.Time>
                <Timeline.Title>{remark.status ?? "-"}</Timeline.Title>
                <Timeline.Body>{remark.remarks}</Timeline.Body>
              </Timeline.Content>
            </Timeline.Item>
          ))}
        </Timeline>
      </ModalBody>
    </Modal>
  );
};
