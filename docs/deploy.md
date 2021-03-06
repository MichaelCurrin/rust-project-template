# **Deploy**


## Build

Build your application and generate production-ready output in the ignored `build` directory.

```sh
$ make build
```

Run this locally to check the app builds correctly. That is also in the CI/CD flow, covered below.

For more confidence that everything in the CI will install correctly and checks will pass, run this:

```sh
$ make all
```


## CI/CD

This project uses GitHub Actions for Continuous Integration / Continuous Deployment.

This will build, test and check the formatting of your project.

See the workflow on GitHub:

- [main.yml](https://github.com/MichaelCurrin/rust-project-template/blob/main/.github/workflows/main.yml) file.

See workflow runs here:

- [Actions](https://github.com/MichaelCurrin/rust-project-template/actions) tab.
