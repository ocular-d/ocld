<!-- PROJECT LOGO -->

<br />
<p align="center">
  <a href="https://github.com/ocular-d/ocld">
    <img src="docs/assets/ocular-d-logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Writing Style Guide</h3>

  <p align="center">
    Vale-compatible implementation of the ocular-d Writing (Editorial) Style Guide
    <br />
    <a href="https://ocular-d.github.io/ocld/"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/ocular-d/ocld/issues">Report Bug</a>
    ·
    <a href="https://github.com/ocular-d/ocld/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [About the Project](#about)
- [Dependencies](#dependencies)
- [Getting Started](#getting-started)
- [Contributing](#contributing)
- [License](#license)
- [Credits](#credits)

## About

[Vale-compatible](https://errata-ai.gitbook.io/vale/ "Link to Website of Vale") Writing Style Guide.

It is used to showcase *Docs As Code* and *DocOps*.

## Dependencies

- [Vale](https://errata-ai.gitbook.io/vale/ "Link to Website of Vale")

## Getting Started

> :exclamation: ocular-d requires Vale >= **1.7.0**. :exclamation:

Download the [latest release](https://github.com/ocular-d/ocld/releases "Link to GitHub release page of ocld"),
copy the "ocular-d" directory to your `StylesPath`, and include it in your configuration file:

```ini
# This goes in a file named either `.vale.ini` or `_vale.ini`.
StylesPath = path/to/some/directory
MinAlertLevel = warning # suggestion, warning or error

# Only Markdown and .txt files; change to whatever you're using.
[*.{md,txt}]
# List of styles to load.
BasedOnStyles = ocular-d
```

See [Usage](https://github.com/errata-ai/vale/#usage "Link to usage docs of Vale") for more information.

## Contributing

We are a community effort, and everybody is most welcome to participate!

Be it filing bugs, formulating enhancements, creating pull requests, or any other means of contribution, we encourage contributions from everyone.

## License

- [MIT](https://opensource.org/licenses/MIT "Link to MIT license on opensource.org")

## Credits

- [errata.ai](https://github.com/errata-ai "Link to errata.io on GitHub")
