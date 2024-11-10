"use client";
import { createContext, useState } from "react";
import { Contractor } from "../src/models/contractor";

export const ContractorContext = createContext<Contractor | null>(null);

export function ContractorProvider({ children, contractor: c }: any) {
  const [contractor, _] = useState(c);

  return (
    <ContractorContext.Provider value={contractor}>
      {children}
    </ContractorContext.Provider>
  );
}
