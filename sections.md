---
title: Sections
menu: Sections
order: 30
description: "Typical sections included in assignments, tutorials, practical exam problems, etc."
---

## Overview

The content of a typical web pages (whether written originally in HTML, Markdown, or another markup language), is organized into sections, using one or more heading tags.

The kramdown parser used by default in this theme supports the usual Markdown headings: lines starting with 1--6 hash chatacters (`#`), followed immediately by a space, then the heading text. In addition, the default kramdown configuration enables _auto IDs_: An HTML `id` attribute is automatically generated for each Markdown heading converted to HTML; the value of the `id` attribute is the "sluggified" form (converted to lower-case, with spaces replaced by `-`) of the heading text. This `id` may be included in the anchor portion of a link.

If the `heading_navigator.enabled` property is set to `true` at the site level, or at the page level for any given page, headings in the page content at levels 1--3 will become links in a section navigator sidebar (as seen in this page). **However**, as noted in ["General guidelines"](#general-guidelines), page content should not include any level-1 headings. Thus, for practical purposes, the section navigator sidebar will include level-2 and level-3 headings. 

## General guidelines

* In most cases, `heading_navigator.enabled` should be set to `true` (the default) at the site level. 

* As a rule, any page should have only a single level-1 heading. In this theme, the header at the top of every page includes an `<h1>` tag generated automatically using the page- and/or site-level `title` property; thus, none of the source pages (whether Markdown or HTML) should include a level-1 heading in the page content. 

* When `heading_navigator` is enabled, the text of headings appearing as links in the navigator should be kept short---usually 1--3 words. Be sure to review the published appearance of links in the navigator sidebar, and adjust heading text as necessary.

* Items in the navigator sidebar are displayed as right-aligned items in an unordered list; however, only links to level-3 headings include a bullet character. Thus, when `heading_navigator` is enabled, the headings in a page should either _all_ be at level 3+, or all level-3 headings (if any) should be subheadings beneath one or more level-2 headings. Otherwise, you will end up with some bullet items nested below a non-bullet item, and other bullet items that are not nested.

## Section-specific guidelines

The actual sections used in curriculum module site pages will vary greatly, depending on the type of module (practical exam problem, homework assignment, extra-credit opportunity, guided tutorial, lecture notes, etc.). Nonetheless, consistency should be an aim; to that end, here are some typical section headings, with explanatory text for how each section might be used.

### Introductory content

Most modules benefit from some kind of introductory content. However, there are subtle differences between an _introduction_, an _overview_, and a _summary_.

#### Introduction<a name="inventory-introduction"></a>

This is most relevant to a tutorial or homework assignment. It should include only general information, without any in-depth instructional content; if there's content the student will be expected to recall for an exam or exercise later, it should not be in this section. 

This section should appear no more than once in a module (even if there are multiple pages), and it should not be very long: 1--3 paragraphs is usually enough.

#### Overview<a name="inventory-overview"></a>

The key differences between this section and [Introduction](#inventory-introduction) is that the content in **Overview** should be re-presented (in more detail) later in the module, and an **Overview** section may appear on multiple pages (though no more than once per page) in a module, always at or near the top. Its purpose is to provide a high-level introduction to the content that will be covered by the rest of the page.

If a module needs **Introduction** and **Overview** sections, they should not appear on the same page. In that case, it is sometimes best to make the site default page (`index.md` or `README.md`) an introduction page; if such a page contains only an introduction section, then leave the section heading out.

#### Summary<a name="inventory-summary"></a>

This section is very similar to [Overview](#inventory-overview), and the same guidelines apply. In most cases, they can be used interchangeably; however, **Summary** should be favored when the section provides a high-level view of tasks to be performed---especially when those tasks are organized in a list.

Alternatively, **Summary** may be used at the end of a page or module, recapitulating the key elements covered previously in that page or module.

### Detailed content

#### Value<a name="inventory-value"></a>

If the module is an assignment, practical exam problem, or extra-credit problem, this section (at or near the top---usually even above an [overview](#inventory-overview) or [summary](#inventory-summary)) should show the point value---broken down into separate components, if appropriate.

#### Requirements<a name="inventory-requirements"></a>

If the page specifies some deliverable task(s) the student is expected to perform, include functional and technical requirements in a clearly identified section. Include code fragments and test cases in this section, as appropriate.

#### Assumptions<a name="inventory-assumptions"></a>

This section may be used to expand on [Requirements](#inventory-requirements), listing key assumptions that the student may make regarding inputs, environment, etc. 

#### Hints<a name="inventory-hints"></a>

If the module is for an assignment, practical exam problem, or extra-credit opportunity---particularly if it's especially challenging or requires an approach that's not very obvious---it may be a good idea to include some general tips.

#### Attachments<a name="inventory-attachments"></a>

If the module includes multiple `.pdf` or other attachments, include this section near the bottom of the page, and link to the attachments here---as well as linking to them inline (in the text), if appropriate. These should be formatted as an ordered or unordered list. 

In a multi-page module, it is generally preferable to have a single **Attachments** section (e.g. on a resources page), rather than one or more page-specific **Attachments** sections.

#### Links<a name="inventory-hints"></a>

Any links to content outside the module should appear here, as well as inline (if appropriate). If there is more than one link, an ordered or unordered list should be used.

In a multi-page module, it is generally preferable to have a single **Links** section (e.g. on a resources page), rather than one or more page-specific **Links** sections.