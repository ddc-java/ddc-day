---
title: Typography
menu: Typography
order: 35
description: "Font groups and styles used in curriculum."
---

For the most part, this theme is responsible for the specific typefaces and styles used in curriculum module web pages. However, the general font characteristics are selected based on the block and span formatting elements included in the content by the author. Thus, it's important that the curriculum author understand the general typographical characteristics for different content types, to help them better understand and use the [formatting guidelines](formatting.md).

{:.normal-weight.title}slab-serif

: Page, section, and subsection titles---In practice, this means that headings declared with `##` and `###` (or directly in HTML with `<h2>` and `<h3>`) will use fonts of this general type. (Page content should not include any `#` or `<h1>` headings, since there's already an `<h1>` displayed automatically at the top of the page, and since there should only be 1 such level-1 heading in any page.)

sans-serif bold

: 
    * Category titles (`###`, `####`, `#####`, and `######` headings).
    * Strong emphasis (use this very sparingly).
    * UI control labels (e.g. window titles, button labels, menu item text, field labels).
    
{:.normal-weight.emphasized}sans-serif italic

:
    * First use of a term defined in the text, e.g. "_Hypertext Transfer Protocol_ (HTTP) is the primary protocol used by web traffic."
    * Emphasis (use this sparingly).
    
`monospaced`{:.normal-weight}

:
    * Code fragments.    
    * References to code symbols.
    * Shell commands, arguments, and options.    
    * Console output.    
    * File and directory names.
    
$\text{serif roman and }italic$

: Mathematical expressions.

{:.normal-weight}sans-serif roman

: Normal text content.
