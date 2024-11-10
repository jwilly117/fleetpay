'use client'
import { Dispatch, createContext, useState } from "react";
import { User } from "../src/models/user";

export const AuthContext = createContext<AuthDataInterface | null>(null);

export function AuthProvider({ children, user: u }: any) {
  const [user, setUser] = useState(u)

  return (
    <AuthContext.Provider value={{ user, setUser }} >
      {children}
    </AuthContext.Provider >
  )
}


interface AuthDataInterface {
  user: User
  setUser: Dispatch<User | null>
}