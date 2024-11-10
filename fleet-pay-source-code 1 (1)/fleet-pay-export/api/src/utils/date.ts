import dayjs, { Dayjs } from "dayjs";
import { PaymentInterval } from "../models/payment_interval";
import { timezones } from "./timezones";

export function addInverval(date: Dayjs, interval: PaymentInterval): Dayjs {

    switch (interval) {
        case "DAILY":
            return date.add(1, "day")
        case "WEEKLY":
            return date.add(1, "week")
        case "BIWEEKLY":
            return date.add(2, "week")
        case "MONTHLY":
            return date.add(1, "month")
    }

}

export function validTimezone(timezone: string | undefined): string | undefined {
    return timezones.find(tz => tz.text == timezone)?.utc[0];
}