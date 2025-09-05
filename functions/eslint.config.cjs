// functions/eslint.config.cjs
const globals = require("globals");

module.exports = [
  {
    files: ["**/*.js"],
    ignores: ["node_modules/**", "dist/**", "lib/**"],
    languageOptions: {
      ecmaVersion: "latest",
      sourceType: "commonjs",
      globals: {
        ...globals.node,
      },
    },
    rules: {
      // keep things relaxed like your file headers
      "max-len": "off",
      indent: "off",
      "object-curly-spacing": "off",
      quotes: "off",
      "eol-last": "off",
      "no-unused-vars": ["warn", { argsIgnorePattern: "^_" }],
    },
  },
];
