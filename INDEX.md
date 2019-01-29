# What is the dochub?

We use this web page to share the development work in the team.

## How to use this dochub?

**Clone the repo**

```
git clone git@github.com:nsslabcuus/dochub.git
```

## Add new page

GitBook uses a  `SUMMARY.md`  file to define the structure of chapters and subchapters of the book. The  `SUMMARY.md`  file is used to generate the book's table of contents.

The format of  `SUMMARY.md`  is just a list of links. The link's title is used as the chapter's title, and the link's target is a path to that chapter's file.

Adding a nested list to a parent chapter will create subchapters.

##### Simple example

```
# Summary

* [Part I](part1/README.md)
    * [Writing is nice](part1/writing.md)
    * [GitBook is nice](part1/gitbook.md)
* [Part II](part2/README.md)
    * [We love feedback](part2/feedback_please.md)
    * [Better tools for authors](part2/better_tools.md)

```

Each chapter has a dedicated page (`part#/README.md`) and is split into subchapters.

##### Anchors

Chapters in the Table of Contents can be pointing to specific part of a file using anchor.

```
# Summary

### Part I

* [Part I](part1/README.md)
    * [Writing is nice](part1/README.md#writing)
    * [GitBook is nice](part1/README.md#gitbook)
* [Part II](part2/README.md)
    * [We love feedback](part2/README.md#feedback)
    * [Better tools for authors](part2/README.md#tools)

```

##### Parts

The Table of Contents can be divided into parts separated by headings or horizontal lines:

```
# Summary

### Part I

* [Writing is nice](part1/writing.md)
* [GitBook is nice](part1/gitbook.md)

### Part II

* [We love feedback](part2/feedback_please.md)
* [Better tools for authors](part2/better_tools.md)

----

* [Last part without title](part3/title.md)

```

Parts are just groups of chapters and do not have dedicated pages, but according to the theme, it will show in the navigation.

##### Example of a chapter file

```

# Title of the chapter

This is a great introduction.

## Section 1

Markdown will dictates _most_ of your **book's structure**

## Section 2
```

When you add you new `markdown file page` and add the index in the `SUMMARY.md`, please push to the repo, and the `travis-ci` will build the new web-pages within two minutes. You can check the webpage.

```
https://nsslabcuus.github.io/dochub/
```

There is a link about the markdown grammar and gitbook.
* [Learn Markdown](https://gitbookio.gitbooks.io/markdown/content/syntax/tables.html)
* [Learn Gitbook](https://toolchain.gitbook.com/pages.html)