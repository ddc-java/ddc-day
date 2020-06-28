---
title: Introduction
menu: Introduction
order: 10
description: "A custom theme (with style guide) for curricular content used in the Deep Dive Coding Java+Android Bootcamp"
layout: default
---

## Introduction

**DDC Day** is a GitHub Pages theme, based on [Leap Day](https://pages-themes.github.io/leap-day/) by [Matt Graham](https://twitter.com/mattgraham), customized extensively by [Nick Bennett](mailto:nick@nickbenn.com). It is intended for use in the [Deep Dive Coding](https://deepdivecoding.com) Java + Android Bootcamp, in the publication and distribution of tutorials, lecture notes, homework assignments, practical exam problems, etc.

## Usage

To use the **DDC Day** template, add the following line to the `_config.yml` file of a repository configured for GitHub Pages publication:

```yaml
remote_theme: ddc-java/ddc-day
```

## Configuration

### Site

Site-level configuration is done in the `_config.yml`, and supports the following properties:

`title`
: Site-wide title, included in the heading display of each page. If this is not specified, then the repository name is used.

`description`
: Description displayed under the page heading. Setting this property at the page level overrides the site-level setting. If not set at the site or page level, the GitHub repository description (if any) is displayed.

`show_downloads`
: This is a Boolean-valued property, used to control the display of the GitHub logo as a link to the repository in GitHub. Note that even if the value is set to `true` (or anything  other than `false` or empty), the logo &amp; link will not be displayed if the repository is private.

`page_navigator`
: This is a Boolean-valued property, used to control the generation of a navigator bar in the page header. If omitted, left without a value, or set to `false`, then the `menu` and `order` [page-level](#page) properties are ignored. On the other hand, if set to `true` (or another non-empty, non-`false` value), but if there are fewer than 2 pages with a `menu` property set, then the navigator bar will not be generated.

`titles_from_headings`
: This is an object-valued property used by the Jekyll SEO plug-in. For the intended purpose of this theme, it is recommended to disable this portion of the SEO plug-in functionality, using the following:
: ```yaml
titles_from_headings:
  enabled: false
```

### Page

Page-level configuration is done in the _front matter_ of each page

## Value

If the module is an assignment or practical exam problem, show point value&mdash;broken down into separate components, if appropriate.

## Summary

Describe the module, exercise, or activity. In general, this section should not include a lot of code, but should instead provide a conceptual overview. For including mathematical expressions in this section (or any others), see ["Mathematical Notation"](latex-mathjax.md).

## Requirements

Include functional and technical requirements. Include code fragments and test cases, as appropriate. For code fragments, use fenced code blocks, with language tags; inline references to variables, methods, classes, etc. should use backticks to indicate code elements.

For example, a Java code fragment would be written in a fenced code block as 

    ```java
    public static void main(String[] args) {
      System.out.println("Hello, world!");
    }
    ```

This will be rendered as

```java
public static void main(String[] args) {
  System.out.println("Hello, world!");
}
```

## Hints

If the module is an assignment or practical exam problem&mdash;particularly if it's especially challenging or requires an approach that's not very obvious&mdash;it may be a good idea to include some general tips.

## Attachments 

If the module includes `.pdf` or other attachments, link them here&mdash;as well as linking them inline (in the text), if appropriate. If there is more than one attachment, these should be formatted as an ordered or unordered list. 

## Links 

Links to content outside the curriculum module should appear here, as well as inline (if appropriate). If there is more than one link, an ordered or unordered list should be used. In general, it's recommended not only to include a standard Markdown link (specified with the `[…](…)` syntax), but also display the URL as a link (enclosed with `<…>`). For example,

```
* [Deep Dive Coding Java+Android Bootcamp Curriculum Template](
    https://github.com/ddc-java/curriculum-template/) 
    (<https://github.com/ddc-java/curriculum-template/>)
```

will be rendered as

* [Deep Dive Coding Java+Android Bootcamp Curriculum Template](
    https://github.com/ddc-java/curriculum-template/) 
    (<https://github.com/ddc-java/curriculum-template/>)

(Note that the line breaks are used here only to make the example easier to read. It is neither necessary nor recommended to break lines in this fashion in Markdown.)

## Footnotes

If any footnotes are defined &amp; referenced in the content, they will be displayed here. For example, note the footnote defined and referenced in the [Summary](#summary) section, above.