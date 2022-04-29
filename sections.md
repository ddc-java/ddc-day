---
title: Sections
menu: Sections
order: 30
description: "Typical sections included in assignments, tutorials, practical exam problems, etc."
---

{% include ddc-abbreviations.md %}
      
## Overview

The content of a typical web pages (whether written originally in HTML, Markdown, or another markup language), is organized into sections, using one or more heading tags.

The kramdown parser used by default in this theme supports the usual Markdown headings: lines starting with 1--6 hash chatacters (`#`), followed immediately by a space, then the heading text. In addition, the default kramdown configuration enables _auto IDs_: An HTML `id` attribute is automatically generated for each Markdown heading converted to HTML; the value of the `id` attribute is the "sluggified" form (converted to lower-case, with spaces replaced by `-`) of the heading text. This `id` may be included in the anchor portion of a link.

If the `heading_navigator.enabled` property is set to `true` at the site level, or at the page level for any given page, headings in the page content at level 2 (by default) will become links in a section navigator sidebar (as seen in this page).

## General tips & guidelines
{: menu="General guidelines" }

* In most cases, `heading_navigator.enabled` should be set to `true` (the default) at the site level. 

* As a rule, any page should have only a single level-1 heading. In this theme, the header at the top of every page includes an `<h1>` tag generated automatically using the page- and/or site-level `title` property; thus, _none_ of the source pages (whether Markdown or HTML) should include a level-1 heading in the page content. 

* Related to the above, `heading_navigator.from` should generally be left at the default value of 2. `heading_navigator.to` should generally be left at the default value of 2, but may be increased to 3.

* When `heading_navigator` is enabled, the text of headings appearing as links in the navigator should be kept short---usually 1--3 words, and with the ampersand (&) substituting for "and". 

    Alternatively, the `menu` attribute may be set on a heading; text specified in this attribute will be used in the section navigator sidebar, in place of the heading text. To set this attribute, use a block-level _Inline Attribute List_ (IAL), provided by kramdown as an extension to Markdown. For example, the sidebar link for the section you're reading now is defined as follows:
    
    ```markdown
    ## General tips & guidelines
    {: menu="General guidelines" }
    ```
    
    In any event, be sure to review the published appearance of links in the navigator sidebar, and adjust heading text or the `menu` attribute value as necessary.
    
* Items in the navigator sidebar are displayed as right-aligned items in an unordered list; however, only links to level-3 headings include a bullet character. Thus, when `heading_navigator` is enabled, and the range from `heading_navigator.from` to `heading_navigator.to` (inclusive) includes 3, the headings in a page should either _all_ be at level 3+, or all level-3 headings (if any) should be subheadings beneath one or more level-2 headings. Otherwise, you will end up with some bullet items nested below a non-bullet item, and other bullet items that are not nested.

* The text of headings used in the navigator sidebar must be distinct, or the links will not work as expected.

* To omit a heading that would normally be linked to in the sidebar from appearing there, use the `no-nav` CSS class. The kramdown processor supports with a block-level IAL, e.g.

    ```markdown
    ## Not included in the navigator sidebar
    {:.no-nav}
    ```

## Including a TOC

For complex pages with more than a dozen or so level-2 headlines, or with a deeply-nested headline structure, a table of contents (TOC) should be considered in addition to, or as an alternative to, the navigator sidebar.

To include a TOC in a Markdown page using the kramdown processor, assign the `toc` reference name to an unordered (bulleted) or ordered (numbered) list:

```markdown
* TOC
{:toc}
```

The contents of the `toc`-named list will be replaced by links to the headings on the page, and the list expanded as necessary; thus, the text of the list item (`TOC` in the example above) isn't included in the rendered result.

For example, the code fragment shown above is used below, to render a TOC for this page:

> * TOC
> {:toc}
{:.render-example}

To omit a heading from the table of contents, use the `no_toc` CSS class. This can be done in kramdown Markdown with an IAL:

```markdown
## Not included in the TOC
{:.no_toc}
```

In fact, the Markdown shown above is used to define the headline rendered immediately below, and the result is not included in the [example TOC](#markdown-toc) rendered [above](#markdown-toc).

> ## Not included in the TOC
> {:.no_toc}
{:.render-example}

## Section-specific guidelines

The actual sections used in curriculum module site pages will vary greatly, depending on the type of module (practical exam problem, homework assignment, extra-credit opportunity, guided tutorial, lecture notes, etc.). Nonetheless, consistency should be an aim; to that end, here are some typical section headings, with explanatory text for how each section might be used.

### Introductory content

Most modules benefit from some kind of introductory content. However, there are subtle differences between an _introduction_, an _overview_, and a _summary_.

#### Introduction

This is most relevant to a tutorial or homework assignment. It should include only general information, without any in-depth instructional content; if there's content the student will be expected to recall for an exam or exercise later, it should not be in this section. 

This section should appear no more than once in a module (even if there are multiple pages), and it should not be very long: 1--3 paragraphs is usually enough.

#### Overview {#inventory-overview}

The key differences between this section and [Introduction](#introduction) is that the content in **Overview** should be re-presented (in more detail) later in the module, and an **Overview** section may appear on multiple pages (though no more than once per page) in a module, always at or near the top. Its purpose is to provide a high-level introduction to the content that will be covered by the rest of the page.

If a module needs **Introduction** and **Overview** sections, they should not appear on the same page. In that case, it is sometimes best to make the site default page (`index.md` or `README.md`) an introduction page; if such a page contains only an introduction section, then leave the section heading out.

#### Summary

This section is very similar to [Overview](#inventory-overview), and the same guidelines apply. In most cases, they can be used interchangeably; however, **Summary** should be favored when the section provides a high-level view of tasks to be performed---especially when those tasks are organized in a list.

Alternatively, **Summary** may be used at the end of a page or module, recapitulating the key elements covered previously in that page or module.

### Detailed content

#### Value

If the module is an assignment, practical exam problem, or extra-credit problem, this section (at or near the top---usually even above an [overview](#inventory-overview) or [summary](#summary)) should show the point value---broken down into separate components, if appropriate.

#### Requirements

If the page specifies some deliverable task(s) the student is expected to perform, include functional and technical requirements in a clearly identified section. Include code fragments and test cases in this section, as appropriate.

#### Assumptions

This section may be used to expand on [Requirements](#requirements), listing key assumptions that the student may make regarding inputs, environment, etc. 

#### Hints or tips

If the module is for an assignment, practical exam problem, or extra-credit opportunity---particularly if it's especially challenging or requires an approach that's not very obvious---it may be a good idea to include some general tips.

#### Attachments

If the module includes multiple `.pdf` or other attachments, include this section near the bottom of the page, and link to the attachments here---as well as in the first inline reference (if appropriate). These should be formatted as an ordered or unordered list. 

In a multi-page module, it is generally preferable to have a single **Attachments** section (e.g. on a resources page), rather than one or more page-specific **Attachments** sections.

#### Links

Any links to content outside the module should appear here, as well as in the first inline reference (if appropriate). If there is more than one link, an ordered or unordered list should be used.

In a multi-page module, it is generally preferable to have a single **Links** section (e.g. on a resources page), rather than one or more page-specific **Links** sections.