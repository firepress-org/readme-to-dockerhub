# [readme-to-dockerhub](https://github.com/firepress-org/readme-to-dockerhub)

Push README.md files to Docker hub.

Thanks to **SISheogorath** for this project. You can find the sources here:<br>
https://github.com/SISheogorath/readme-to-dockerhub

## Regarding Github Actions & CI configuration

[See README-CI.md](./README-CI.md)

<br>

## Docker hub

Always check on docker hub the most recent build:<br>
[https://hub.docker.com/r/devmtl/resilio/tags](https://hub.docker.com/r/devmtl/readme-to-dockerhub/tags)

You should use **this tag format** `$VERSION_$DATE_$HASH-COMMIT` in production.

```
devmtl/readme-to-dockerhub:1.0_2019-09-02_10H38s35_ca032df
```

These tags are also available to test stuff quickly:

```
devmtl/readme-to-dockerhub:1.0
devmtl/readme-to-dockerhub:stable
devmtl/readme-to-dockerhub:latest
```

<br>

# How to use it

```
docker run --rm \
  -v $(pwd)/README.md:/data/README.md \
  -e DOCKERHUB_USERNAME="devmtl" \
  -e DOCKERHUB_PASSWORD="${DOCKERHUB_PASSWORD}" \
  -e DOCKERHUB_REPO_PREFIX="devmtl" \
  -e DOCKERHUB_REPO_NAME="readme-to-dockerhub" \
  devmtl/readme-to-dockerhub:stable
```


## Environment variables

This image uses environment variables for configuration.

|Available variables     |Default value        |Description                                         |
|------------------------|---------------------|----------------------------------------------------|
|`DOCKERHUB_USERNAME`    |no default           |The Username (not mail address) used to authenticate|
|`DOCKERHUB_PASSWORD`    |no default           |Password of the `DOCKERHUB_USERNAME`-user           |
|`DOCKERHUB_REPO_PREFIX` |`$DOCKERHUB_USERNAME`|Organisation or username for the repository         |
|`DOCKERHUB_REPO_NAME`   |no default           |Name of the repository you want to push to          |
|`README_PATH`           |`/data/README.md`    |Path to the README.me to push                       |
|`SHORT_DESCRIPTION`     |no default           |Short description for the Dockerhub repo            |

## Mount the README.md

By default, if the `README_PATH` environment variable is not set, this image always pushes the file
`/data/README.md` as full description to Docker Hub.

For GitHub repositories you can use `-v /path/to/repository:/data/`.

If your description is not named `README.md` mount the file directory using `-v /path/to/description.md:/data/README.md`.

*Notice that the filename is case sensitive. If your readme is called `readme.md` you have to mount the file directly, not the directory*

<br>

&nbsp;

<p align="center">
    Brought to you by
</p>

<p align="center">
  <a href="https://firepress.org/">
    <img src="https://user-images.githubusercontent.com/6694151/50166045-2cc53000-02b4-11e9-8f7f-5332089ec331.jpg" width="340px" alt="FirePress" />
  </a>
</p>

<p align="center">
    <a href="https://firepress.org/">FirePress.org</a> |
    <a href="https://play-with-ghost.com/">play-with-ghost</a> |
    <a href="https://github.com/firepress-org/">GitHub</a> |
    <a href="https://twitter.com/askpascalandy">Twitter</a>
    <br /> <br />
</p>

&nbsp;

<br>

## Hosting

At FirePress we empower entrepreneurs and small organizations to create their websites on top of [Ghost](https://firepress.org/en/faq/#what-is-ghost).

At the moment, our **pricing** for hosting one Ghost website is $15 (Canadian dollars). This price will be only available for our first 100 new clients, starting May 1st, 2019 🙌. [See our pricing section](https://firepress.org/en/pricing/) for details.

More details [about this annoucement](https://forum.ghost.org/t/host-your-ghost-website-on-firepress/7092/1) on Ghost's forum.

<br>

## Contributing

The power of communities pull request and forks means that `1 + 1 = 3`. You can help to make this repo a better one! Here is how:

1. Fork it
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request

Check this post for more details: [Contributing to our Github project](https://pascalandy.com/blog/contributing-to-our-github-project/). Also, by contributing you agree to the [Contributor Code of Conduct on GitHub](https://pascalandy.com/blog/contributor-code-of-conduct-on-github/). It's plain common sense really.

<br>

## License

- This git repo is under the **GNU V3** license. [Find it here](https://github.com/pascalandy/GNU-GENERAL-PUBLIC-LICENSE/blob/master/LICENSE.md).

<br>

## Why all this work?

Our [mission](https://firepress.org/en/our-mission/) is to empower freelancers and small organizations to build an outstanding mobile-first website.

Because we believe your website should speak up in your name, we consider our mission completed once your site has become your impresario.

For more info about the man behind the startup, check out my [now page](https://pascalandy.com/blog/now/). You can also follow me on Twitter [@askpascalandy](https://twitter.com/askpascalandy).

— The FirePress Team 🔥📰