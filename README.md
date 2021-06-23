# Rails Startup Checklist

- check `Gemfile` for `gem 'web-console', '>= 4.1.0'` so that we can use `<% console %>` in `html.erb` files
- check `Gemfile` for `gem 'byebug'` so we can debug in server
- check `Gemfile` for `gem 'rubocop'` so we can have enforced styling
- check `.rubocop_todo.yml` and `.prettierrc.json` for syncronized styling. in VSCode, check `settings.json` for the below config:

```json
{
  // If not specified searches for 'rubocop' executable available on PATH (default and recommended)
  "ruby.rubocop.executePath": "",

  // You can use specific path
  // "ruby.rubocop.executePath": "/Users/you/.rbenv/shims/"
  // "ruby.rubocop.executePath": "/Users/you/.rvm/gems/ruby-2.3.2/bin/"
  // "ruby.rubocop.executePath": "D:/bin/Ruby22-x64/bin/"

  // If not specified, it assumes a null value by default.
  // "ruby.rubocop.configFilePath": ".rubocop.yml",

  // default true
  "ruby.rubocop.onSave": true,
  // prettier
  "[ruby]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.formatOnSave": true
  }
}
```