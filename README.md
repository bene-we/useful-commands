# Useful commands

This repository contains useful commands for the daily workflow.

## Git Workflow
For simple Git commands, have a look here: https://rogerdudler.github.io/git-guide/

Task | Command | Description
--- | --- | ---
Revert local changes | `git checkout .` <br> `git clean -fd` | `checkout` reverts all local changes to remote files.<br> `clean -fd` removes untracked files and directories.<br> See https://stackoverflow.com/a/1146981/7456806

## Node.js

### npm

Tipps und Helfer für npm-Scripts: https://labs.micromata.de/best-practices/tipps-und-helfer-fuer-npm-run-scripts-teil-1/
#### Updating npm on Windows

Run PowerShell as Administrator and execute the following:
```powershell
Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force
npm install -g npm-windows-upgrade
npm-windows-upgrade
```

See https://stackoverflow.com/a/31520672/7456806

## Angular

### Updating the CLI
`npm uninstall -g angular-cli @angular/cli`

`npm cache verify`

`npm install -g @angular/cli`

### Serve Angular Application (for development)
`ng serve --port 4200`

Runs a live development server of an angular application on the default port 4200. See https://angular.io/cli/serve

### Create Angular App
`ng new <app-name>`

Creates a directory with a default angular application. See https://angular.io/cli/new

### Generate Angular stuff

### Generate Component
`ng g component <component-name>`

Creates a component in a equally named folder under `src/app` path. See https://angular.io/cli/generate#component

