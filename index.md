---
title: Introduction
menu: Introduction
order: 0
description: "A custom theme for curricular content used in the Deep Dive Coding Java+Android Bootcamp"
---

## Overview

**DDC Day** is a GitHub Pages theme, based on [Leap Day](https://pages-themes.github.io/leap-day/) by [Matt Graham](https://twitter.com/mattgraham), customized extensively by [Nick Bennett](mailto:nick@nickbenn.com). It is intended for use in the [Deep Dive Coding](https://deepdivecoding.com) Java + Android Bootcamp, in the publication and distribution of tutorials, lecture notes, homework assignments, practical exam problems, etc.

The published content of this site is intended not only to introduce the **DDC Day** theme, but also to present a basic set of guidelines for writing curricular content that will be published in GitHub Pages using this theme. Over time, this content will be expanded into a curricular content style guide for use in the DDC Java + Android bootcamp.

## Use cases

This theme is well-suited to a site with 1--6 pages, where each page includes 0--12 headings at levels 1--3.[^1] Inline and block-level $\rm\LaTeX$ blocks may be included, as may extended Markdown features (such as definition lists) supported by the [kramdown](https://kramdown.gettalong.org/parser/kramdown.html) parser. Code highlighting is done by the [Rouge](http://rouge.jneen.net/) code higlighter; the current list of language identifiers recognized on fenced code blocks can be found [here](https://github.com/rouge-ruby/rouge/wiki/List-of-supported-languages-and-lexers). Mathematical expression rendering is provided by the MathJax library.

Given the practical limit on the number of pages of the recommended use cases, this theme should not be used for a site containing a large number of pages (more than 5 or 6). For example, if this theme is to be used for a curriculum module intended for multiple days of instruction, the content should generally be broken down into multiple repositories/sites.

[^1]: More pages and headings may be included; however, displaying a large number of entries in the page navigator or heading navigator implemented in this theme doesn't give very &aelig;sthetically pleasing results.

## Contents

* **Introduction**: This page.

* [**Site**](site.md): Site-level structure and configuration.

* [**Pages**](pages.md): Configuration for multi-page sites and navigation, and content organization guidelines.

* [**Sections**](sections.md): Configuration for section navigation within pages, and content organization guidelines.

* [**Formatting**](formatting.md): Guidelines for writing different types of content (pseudocode, code fragments, test cases, mathematical expressions, etc.).

* [**Resources**](resources.md): Links to additional resources on Markdown, kramdown, $\LaTeX$, MathJax, etc. 

** Notes

* All examples of Markdown or LaTeX rendering are shown in blockquotes.