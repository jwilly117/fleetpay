import flowbite from "flowbite-react/tailwind";
import type { Config } from "tailwindcss";

export default {
  content: [
    "./app/**/*.{ts,tsx,mdx}",
    "./components/**/*.{ts,tsx,mdx}",
    flowbite.content(),
  ],
  theme: {
    extend: {
      colors: {
        primary: "#0d3366",
        "primary-600": "#092448",
        "primary-100": "#1759b150",
      },
      animation: {
        progress: "progress 1s infinite linear",
      },
      keyframes: {
        progress: {
          "0%": { transform: " translateX(0) scaleX(0)" },
          "40%": { transform: "translateX(0) scaleX(0.4)" },
          "100%": { transform: "translateX(100%) scaleX(0.5)" },
        },
      },
      transformOrigin: {
        "left-right": "0% 50%",
      },
    },
  },
  plugins: [flowbite.plugin()],
} satisfies Config;
