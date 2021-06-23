# Rails Startup Checklist

- check `Gemfile` for `gem 'web-console', '>= 4.1.0'` so that we can use `<% console %>` in `html.erb` files
- check machine has installed `vim` so that we can edit the encrypted environment based API keys using `EDITOR=vim bin/rails credentials:edit`. see [this tutorial](https://blog.engineyard.com/rails-encrypted-credentials-on-rails-5.2) for full details. or see `app/controllers/application_controller.rb`
- setup custom logging as seen in `app/controllers/application_controller.rb`
- check `Gemfile` for `gem 'byebug'` so we can debug in server
- check `Gemfile` for `gem 'solargraph'` so we can have ruby vscode tooling
- check `Gemfile` for `gem 'rubocop'` so we can have enforced styling
- check `Gemfile` for `gem 'prettier'` for auto styling. You'll also have to install via npm `npm install --save-dev prettier @prettier/plugin-ruby` and then restart the VSCode editor.
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

## SSH into Remote Machine

Run the command:
```sh
ssh -i <PATH_TO_SSH_PRIVATE_KEY> <USERNAME>@<IP_ADDRESS>
```
This same command can be used to remote connect VSCode

