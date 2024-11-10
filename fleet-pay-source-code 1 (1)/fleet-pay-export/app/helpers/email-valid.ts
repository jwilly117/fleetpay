export function validateMultipleEmails(emails: string[]): boolean {
  for (const email of emails) {
    if (!isEmailValid(email)) {
      return false;
    }
  }

  return true;
}

export function isEmailValid(email: string): boolean {
  const emailRegex =
    /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}(,\s*[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})*$/;
  return emailRegex.test(email);
}
