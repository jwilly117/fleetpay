"use client";
import { Dispatch, createContext, useState } from "react";

export const LoadingContext = createContext<LoadingInterface>({
  loading: false,
  setLoading: null,
});

export function LoadingProvider({ children, user: u }: any) {
  const [loading, setLoading] = useState(u);

  return (
    <LoadingContext.Provider value={{ loading, setLoading }}>
      {children}
    </LoadingContext.Provider>
  );
}

interface LoadingInterface {
  loading: boolean;
  setLoading: Dispatch<boolean> | null;
}
