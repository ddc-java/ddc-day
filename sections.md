---
title: Sections
menu: Sections
order: 30
description: "Typical sections included in assignments, tutorials, practical exam problems, etc."
---

## Overview

The content of most web pages (whether written originally in HTML, Markdown, or another markup language), is organized into sections, using one or more headings.

A few example content sections (with explanatory text for how each section might be used) are shown below.

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

## Guidelines

* In most cases, `heading_navigator.enabled` should be set to `true` (the default) at the site level. 

* As a rule, any page should have only a single level-1 heading. In this theme, the header at the top of every page includes an `<h1>` tag generated automatically using the page- and/or site-level `title` property; thus, none of the source pages (whether Markdown or HTML) should include another level-1 heading.

* When `heading_navigator` is enabled, the text of the 