# eslintrc.js
> Probably the fastest way to add ESLint to your project

### What does it do?
- Creates ``.eslintrc.js`` with Airbnb base and some additional rules
  - [curly](https://eslint.org/docs/rules/curly)
  - [newline-before-return]((https://eslint.org/docs/rules/newline-before-return)
  - [no-console](https://eslint.org/docs/rules/no-console)
  - [no-ternary](https://eslint.org/docs/rules/no-ternary)
- Create package.json if it does not exist
- Run npm install and save as devDependencies
  - eslint
  - eslint-config-airbnb-base
  - eslint-plugin-import

---

### One liner
```bash
bash <(curl https://raw.githubusercontent.com/ecrmnn/eslintrc.js/master/init.sh)
```

---

### As an alias
You'll probably want eslint on another project too?
Just pop this alias in your ``.bash_profile``
```bash
alias eslint='bash <(curl https://raw.githubusercontent.com/ecrmnn/eslintrc.js/master/init.sh)'
```

---

### WYSIWYG
Ok, ok I get it. You don't want to run some scary command and risk it all. Well, copy, inspect and (maybe) paste if you like.
```bash
printf "module.exports = {\n  extends: 'airbnb-base',\n  parserOptions: {\n    sourceType: 'script',\n  },\n  plugins: [\n    'import',\n  ],\n  rules: {\n    'curly': 'error',\n    'newline-before-return': 'error',\n    'no-console': 'error',\n    'no-ternary': 'error',\n  },\n};\n" > .eslintrc.js && [ -f package.json ] || echo {} > package.json && npm install eslint eslint-config-airbnb-base eslint-plugin-import -D
```
