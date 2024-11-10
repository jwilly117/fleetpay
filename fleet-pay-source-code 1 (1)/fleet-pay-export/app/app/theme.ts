import { createTheme, theme, type CustomFlowbiteTheme } from "flowbite-react";
import { twMerge } from "tailwind-merge";

export const customTheme: CustomFlowbiteTheme = createTheme({
  checkbox: {
    root: {
      color: {
        default:
          "border-gray-300 bg-gray-50 focus:ring-primary-300 dark:border-gray-600 dark:bg-gray-700 dark:ring-offset-gray-800 dark:focus:ring-primary-600",
      },
    },
  },
  button: {
    color: {
      primary: "bg-primary hover:bg-primary-600 text-white",
    },
  },
  modal: {
    content: {
      inner: twMerge(theme.modal.content.inner, "dark:bg-gray-800"),
    },
    header: {
      base: twMerge(
        theme.modal.header.base,
        "items-center dark:border-gray-700"
      ),
      title: twMerge(theme.modal.header.title, "font-semibold"),
      close: {
        base: twMerge(
          theme.modal.header.close.base,
          "hover:bg-gray-200 dark:hover:bg-gray-700"
        ),
      },
    },
    footer: {
      base: twMerge(theme.modal.footer.base, "dark:border-gray-700"),
    },
  },
  progress: {
    color: {
      blue: "bg-primary-600",
      dark: "bg-gray-900 dark:bg-white",
    },
    size: {
      md: "h-2",
    },
  },
  select: {
    field: {
      select: {
        sizes: {
          md: twMerge(
            theme.select.field.select.sizes.md,
            "text-base sm:text-sm"
          ),
        },
        colors: {
          gray: twMerge(
            theme.select.field.select.colors.gray,
            "focus:border-blue-500 focus:ring-blue-500 dark:focus:border-blue-500 dark:focus:ring-blue-500"
          ),
        },
      },
    },
  },
  sidebar: {
    root: {
      inner: twMerge(theme.sidebar.root.inner, "bg-white"),
    },
    collapse: {
      button: twMerge(
        theme.sidebar.collapse.button,
        "text-gray-900 hover:bg-gray-100 dark:text-gray-200 dark:hover:bg-gray-700"
      ),
    },
    item: {
      base: twMerge(
        theme.sidebar.collapse.button,
        "text-gray-900 hover:bg-gray-100 dark:text-gray-200 dark:hover:bg-gray-700"
      ),
      label:
        "ml-3 inline-flex h-5 w-5 items-center justify-center rounded-full bg-primary-100 p-1 text-sm font-medium text-primary-800",
    },
  },
  textarea: {
    base: twMerge(theme.textarea.base, "p-4"),
    colors: {
      gray: twMerge(
        theme.textarea.colors.gray,
        "text-base focus:border-blue-500 focus:ring-blue-500 sm:text-sm dark:focus:border-blue-500 dark:focus:ring-blue-500"
      ),
    },
  },
  textInput: {
    // width of add on should be flexible
    addon: twMerge(theme.textInput.addon, "w-100"),
    field: {
      input: {
        base: twMerge(theme.textInput.field.input.base, "outline-none"),
        sizes: {
          md: "p-2.5 sm:text-sm",
        },
        colors: {
          gray: twMerge(
            theme.textInput.field.input.colors.gray,
            "focus:border-primary-500 focus:ring-primary-500 dark:focus:border-primary-500 dark:focus:ring-primary-500"
          ),
        },
      },
    },
  },
  toggleSwitch: {
    toggle: {
      base: "toggle-bg rounded-full border",
      checked: {
        color: {
          blue: "border-blue-600 bg-blue-600",
        },
      },
    },
  },
  card: {
    root: {
      base: twMerge(theme.card.root.base, "border-none shadow"),
      children: "p-4 sm:p-6 xl:p-8",
    },
  },

  timeline: {
    root: {
      direction: {
        horizontal: "sm:flex",
        vertical: "relative border-l border-gray-200 dark:border-gray-700",
      },
    },
    item: {
      root: {
        horizontal: "relative mb-6 sm:mb-0",
        vertical: "mb-10 ml-6",
      },
      content: {
        root: {
          base: "",
          horizontal: "mt-3 sm:pr-8",
          vertical: "",
        },
        body: {
          base: "mb-4 text-base font-normal text-gray-500 dark:text-gray-400",
        },
        time: {
          base: "mb-1 text-sm font-normal leading-none text-gray-400 dark:text-gray-500",
        },
        title: {
          base: "text-lg font-semibold text-gray-900 dark:text-white",
        },
      },
      point: {
        horizontal: "flex items-center",
        line: "hidden h-2.5 w-full bg-gray-700 dark:bg-gray-700 sm:flex",
        marker: {
          base: {
            horizontal:
              "absolute -left-1.5 h-3 w-3 rounded-full border border-white bg-gray-200 dark:border-gray-900 dark:bg-gray-700",
            vertical:
              "absolute -left-1.5 mt-1.5 h-3 w-3 rounded-full border border-white bg-gray-200 dark:border-gray-900 dark:bg-gray-700",
          },
          icon: {
            base: "h-3 w-3 text-cyan-600 dark:text-cyan-300",
            wrapper: twMerge(
              theme.timeline.item.point.marker.icon.wrapper,
              "absolute -left-3 flex h-7 w-7 items-center justify-center rounded-full bg-cyan-200 ring-8 ring-white dark:bg-cyan-900 dark:ring-gray-900"
            ),
          },
        },
        vertical: "",
      },
    },
  },
});
