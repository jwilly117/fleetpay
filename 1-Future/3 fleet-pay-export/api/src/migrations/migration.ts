import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export async function runMigrations() {
  // await migratePrimaryContact();
  // await addChangePasswordStatus();
  // await addFundingAmount();
}

export async function addFundingAmount() {
  console.log("addFundingAmount");
  await prisma.contractor.updateMany({
    data: {
      fundingSetting: {
        update: {
          fundingAmount: 0,
        },
      },
    },
  });
}

export async function addChangePasswordStatus() {
  await prisma.user.updateMany({
    data: {
      status: "CHANGE_PASSWORD",
    },
    where: {
      status: undefined,
    },
  });
}

async function migratePrimaryContact() {
  const contractors = await prisma.$runCommandRaw({
    aggregate: "Contractor",
    pipeline: [
      {
        $addFields: {
          "primaryContact.phone": {
            $arrayElemAt: ["$primaryContact.phone", 0],
          },
        },
      },
      {
        $merge: {
          into: "Contractor",
          whenMatched: "replace",
        },
      },
    ],
    cursor: {},
  });
}
