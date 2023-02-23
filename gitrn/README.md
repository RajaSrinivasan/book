# gitrn - Release notes generator from git commit messages

git log messages are analyzed to extract markup lines in the syntax outlined. The output is one .md file that is convertible into a pdf file using a tool such as **pandoc**.

## Markup
```
\feature{subsystem,id,description[,Status]}
\bugfix{subsystem,id,description[,Status]}
\knownissue{subsystem,id,description[,Status]}
```
### Feature Updates

Subsystem | Id | Description | Status
----------|---|-------------|--------
Compiler | 22 | Handle commens | Complete
Codegen | 33 | Optimization level | Partial
Codegen | 34 | Intrinsics | Complete

### Bug Fixes

Subsystem | Id | Description | Status
----------|---|-------------|--------
Compiler | 77 | case insensitive identifier | Complete
Codegen | 88 | long float constants | Complete
Linker | 99 | Importing go functions | Complete

### Known Issues

Subsystem | Id | Description | Status
----------|---|-------------|--------
