# eslintrc.js
Probably the fastest way to add ESLint to your project

### One liner
- Creates ``.eslintrc.js`` with Airbnb base and ``newline-before-return``
- Create package.json if it does not exist
- Run npm install and save as devDependencies
  - eslint
  - eslint-config-airbnb-base
  - eslint-plugin-import
```bash
printf "module.exports = {\n  extends: 'airbnb-base',\n  parserOptions: {\n    sourceType: 'script',\n  },\n  plugins: [\n    'import',\n  ],\n  rules: {\n    'newline-before-return': 2,\n  },\n};\n" > .eslintrc.js && [ -f package.json ] || echo {} > package.json && npm install eslint eslint-config-airbnb-base eslint-plugin-import -D
```
