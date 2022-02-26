# Site http://cours-de-guitare.ch/

## Editing the site

Instructions to edit the site's content:

* **Pages** of the site consist of .md
  ([Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) format) files in
  https://github.com/cdgrv/cdgrv-site/tree/master/content, you can edit
  them directly in the GitHub web interface, by choosing "Edit this
  file" (the pencil icon on the top-right of the text's frame, and
  choosing "Commit changes" at the bottom of the page when done.

* **Images** are stored in
  https://github.com/cdgrv/cdgrv-site/tree/master/static/images, new
  images can be uploaded there (menu "Add file > Upload files"). To
  integrate an image on a page, copy the lines of a previous image and
  adapt the file name. 

* General **parameters** can be edited in the main config file at
  https://github.com/cdgrv/cdgrv-site/blob/master/config.toml.

## Seeing a local preview

To see how the site looks like locally, you'll need to have a local copy
of the repository, obtained after doing

```
git@github.com:cdgrv/cdgrv.github.io.git
```

in a terminal (this requires having generated an SSH key and added it to
GitHub's config, see [instructions
here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)).

Then, go in a terminal, cd to the root directory of cdgrv-site/, and
type `hugo serve`. This will display something like this:

```
                   | EN
-------------------+-----
  Pages            | 12
  Paginator pages  |  0
  Non-page files   |  0
  Static files     | 15
  Processed images |  0
  Aliases          |  0
  Sitemaps         |  1
  Cleaned          |  0

Built in 154 ms
Watching for changes in /home/jp/gh/cdgrv-site/{archetypes,content,layouts,static,themes}
Watching for config changes in /home/jp/gh/cdgrv-site/config.toml, /home/jp/gh/cdgrv-site/themes/ananke/config.yaml
Environment: "development"
Serving pages from memory
Running in Fast Render Mode. For full rebuilds on change: hugo server --disableFastRender
Web Server is available at http://localhost:1313/ (bind address 127.0.0.1)
Press Ctrl+C to stop
```

The site will then be available locally at http://localhost:1313.

## Deploying the site (more advanced)

Deploying the new site to https://www.cours-de-guitare.ch/ takes two main steps:

1. Generate the site content, with the command `hugo`. This will generate the site's files into the public/ directory.

2. Copying the content of public/ to the repository [cdgrv.github.io](https://github.com/cdgrv/cdgrv.github.io).

The script
[deploy.sh](https://github.com/cdgrv/cdgrv-site/blob/master/deploy.sh)
does this automatically, if you have a local copy of the site
cdgrv.github.io in the same directory than that of cdgrv-site/. Again,
you can clone that repository by doing

```
git@github.com:cdgrv/cdgrv.github.io.git
```



