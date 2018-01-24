#!/usr/bin/env bash
printf "module.exports = {\n  extends: 'airbnb-base',\n  parserOptions: {\n    sourceType: 'script',\n  },\n  plugins: [\n    'import',\n  ],\n  rules: {\n    'newline-before-return': 2,\n  },\n};\n" > .eslintrc.js && [ -f package.json ] || echo {} > package.json && npm install eslint eslint-config-airbnb-base eslint-plugin-import -D
