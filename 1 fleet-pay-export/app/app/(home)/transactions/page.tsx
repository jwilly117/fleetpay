import { redirect } from "next/navigation";

export default async function TransactionsPage() {
  redirect("/transactions/pending");
}
