---
title: Site
menu: Site
order: 10
description: "Enabling and configuring theme on a GitHub Pages site"
---

## Overview

**DDC Day** is a GitHub Pages _remote theme_. In other words, it's not one of the standard dozen (or so) themes that can be selected in the GitHub Pages theme choosing; nonetheless, it can be selected as a theme for a GitHub Pages site, simply by making a change to the `_config.yml` file in the repository, committing the change, and---if the change was committed to a local clone---pushing the commit to GitHub. 

For any GitHub Pages site, `_config.yml` is not only used to specify a theme for a site, but also to set a number of site-level configuration properties. The properties supported in this theme are listed below.

## Use cases

This theme is well-suited to a site with 1--6 pages, where each page includes 0--12 headings at levels 1--3; in practice, the upper limits on pages and sections will depend on the lengths of page menu labels and section names. More pages and headings may be included; however, displaying a large number of entries in the page navigator or heading navigator implemented in this theme doesn't give very &aelig;sthetically pleasing results.

Given the above, this theme should not be used for a site containing a large number of pages (more than 5 or 6). For example, if this theme is to be used for a curriculum module intended for multiple days of instruction, the content should generally be broken down into multiple repositories/sites.

## Configuration

### Properties

Site-level configuration is done in `_config.yml`, and supports the following properties (listed in alphabetical order, not in order of importance):

`author.email`

: If a value is provided, it will be used in a `mailto` link, with `author.name` as the displayed text; if `author.name` is not specified, then this property is ignored.

`author.name`

: If a value is provided, it will be displayed in a "Written by" credit in the site's page footers.

`description`

: Description displayed under the page heading. Setting this property at the page level overrides the site-level setting. If not set at the site or page level, the GitHub repository description (if any) is displayed.

: For a single-page site (e.g. a practical exam problem), the description can be set at the page or site level---but it must be set, in any event. For a multi-page site, the description should be set in each page.

`favicon`

: URL (absolute or site-relative) of site icon displayed by the browser for bookmarks and tabs for the site's pages. If omitted or left blank, the Deep Dive Coding diving bell logo is used.

`google_analytics`

: If Google Analytics are to be used for tracking site/page visits, specify the tracking ID for this property; otherwise, it may be left blank or omitted altogether.

`heading_navigator.enabled`

: This is a Boolean-valued property, used to control the generation of a left sidebar navigator with links to all level 1--3 headings in the page body in the current page. If omitted, left without a value, or set to `false`, then the sidebar navigator will not be generated.

: (This property may be overridden at the page level.)

`icon`

: URL (absolute or site-relative) of graphic displayed at the right end of divider between the header and body content of the site's pages. If omitted or left blank, the Deep Dive Coding diving bell logo is used.

`page_navigator.enabled`

: This is a Boolean-valued property, used to control the generation of a navigator bar in the page header with links to all pages in the site that specify non-blank (and non-`false`) `menu` properties. If omitted, left without a value, or set to `false`, the navigator bar will not be generated.

: For a single-page site (e.g. a practical exam problem), this should be set to `false`. For a multi-page site, this should be omitted (resulting in the default value of `true`), or explicitly set to `true`.

: (This property may be overridden at the page level.)

`remote_theme` (**required**)

: To use this theme, this property must be assigned the value `ddc-java/ddc-day`.

`repository_link.enabled`

: This is a Boolean-valued property, used to control the display of the GitHub logo as a link to the repository in GitHub. Note that even if the value is set to `true` (or something  other than `false` or empty), the logo &amp; link will not be displayed if the repository is private.

`title`

: Site-wide title, included in the heading display of each page. If present, this will be concatenated with a page-level title (if present); if neither this nor a page-level title is set, the repository name is used. (Note that a page-level title may be set by the `titles_from_headings` option, described below.)

{:#titles-from-headings} `titles_from_headings.enabled`

: This is a Boolean-valued property used by the Jekyll SEO plug-in. It is only relevant when there are one or more pages that do not specify a `title` property in the front matter, in which case the first heading in such a page will be used as the value of a generated `title` property.

Additional properties may be defined in `_config.yml`, and referenced (with the `site.` prefix) from [Liquid](https://shopify.github.io/liquid/) expressions in any page of the site. For example, in a module containing a practical exam problem, the GitHub Classroom assignment URL can be assigned to an `assignment_url` property in `_config.yml`. A Liquid conditional expression can then be used in a page to display a link if (and only if) a value has been assigned to `site.assignment_url`. 

### Example

Of course, values of the above properties must be specified as properly formatted YAML. Below is an example `_config.yml` file for a site based on this theme. (Note that some properties are not specified, and thus take their default values, or are specified at the page level, as described above.)

```yaml
remote_theme: ddc-java/ddc-day
title: Recursion
author:
  name: Nick Bennett
  email: nick@nickbenn.com
repository_link:
  enabled: false
page_navigator:
  enabled: true
heading_navigator:
  enabled: true
titles_from_headings:
  enabled: false
```

### Guidelines

* Single-page sites should have `page_navigator.enabled` set to `false` at the site level.

* Sites with multiple pages should have `page_navigator.enabled` set to `true` (implicitly or explicitly) at the site level.

## Repository

### Structure

Repositories used for curriculum GitHub Pages sites follow one primary structure, with an alternative structure permitted.

#### Primary

* `/` (repository root)
    * `docs/`
        * `assets/` (Include only if needed.)
            * *{Subdirectories and files for repository-specific graphic assets, attachments, etc.}*
        * `api/` (Include only if needed.)
            * *{Subdirectories and files for generated Javadoc documentation.}*
        * `_config.yml`
        * `index.md`
        * *{Additional Markdown or HTML files, as needed}*
    * `README.md` (Not used in GitHub Pages website, but displayed in GitHub repository view.)
    * *{Subdirectories and files containing Java code, resources, IntelliJ metadata, etc.}*

In this structure, the `docs` directory must be specified as the GitHub Pages source directory in the GitHub repository settings.

#### Alternative

If a repository does not contain any Java code, but only the instructional content to be published via GitHub Pages, then this structure is permitted:

* `/` (repository root)
    * `assets/` (Include only if needed.)
        * *{Subdirectories and files for repository-specific graphic assets, attachments, etc.}*
    * `_config.yml`
    * `index.md`
    * `README.md` (Not used as default page in GitHub Pages website, but displayed in GitHub repository view.)
    * *{Additional Markdown or HTML files, as needed}*

Here, the repository root must be configured as the GitHub Pages source directory.

### Documentation

Each site repository must include a `README.md` file, containing:

* A short summary of the subject of the site content.

* A credits section, listing 

    * author(s) of the instructional content;
    * CNMI/DDC copyright assertion on instructional content, with all rights reserved;
    * author(s) of any included source code (Java, Kotlin, Groovy, SQL, Python, XML, etc.);
    * CNMI/DDC copyright assertion on code content (if any), with Apache 2.0 license.

#### Example

This is the Markdown content of the `README.md` file in the [Recursion](https://ddc-java.github.io/recursion/basic-tasks.html) module (note that since there is no source code in the repository, there is no Apache 2.0 license statement):

```markdown
# Recursion

## Overview

An introduction to recursion in Java, using two well-known problems:

* Computing factorials.

* Testing strings to determine whether they are palindromes.

For details, see [docs](docs/).

This is a curriculum module of the [Deep Dive Coding](https://deepdivecoding.com/) [Java + Android bootcamp](https://deepdivecoding.com/java-android/).

## Credits &amp; copyright

This curriculum module was written by Nick Bennett, with Todd Nordquist and Rishita Hariyani.

&copy; 2020 Deep Dive Coding/CNM Ingenuity, Inc. All rights reserved.
```

When viewing the repository in GitHub, this is displayed as

> # Recursion
> 
> ## Overview
> 
> An introduction to recursion in Java, using two well-known problems:
> 
> * Computing factorials.
> 
> * Testing strings to determine whether they are palindromes.
> 
> For details, see [docs](docs/).
> 
> This is a curriculum module of the [Deep Dive Coding](https://deepdivecoding.com/) [Java + Android bootcamp](https://deepdivecoding.com/java-android/).
> 
> ## Credits &amp; copyright
> 
> This curriculum module was written by Nick Bennett, with Todd Nordquist and Rishita Hariyani.
> 
> &copy; 2020 Deep Dive Coding/CNM Ingenuity, Inc. All rights reserved.
{:.render-example}

### License

#### Open source 

If the repository includes any source code (apart, that is, from the Markdown sources of the site pages), the current DDC position is to permit use of the source code under the Apache 2.0 license. Thus, if there is any such source code in the repository, the Apache 2.0 license must be referenced in `README.md` (see above), and as a header comment in all source files; also, the full license text must be included in the repository in a `LICENSE` file.

#### Closed source

For instructional content that isn't source code, CNMI reserves all rights, without any license granted. This copyright notice is automatically displayed in the footer of all pages using this theme. As noted above, it must also be included in `README.md`. Since no license is granted, there's no need to include an additional license file in the repository.

### Settings

* In general, the visibility of any repository using this theme (in fact, of _any_ repository with CNMI curricular content other than programming source code) should be set to **private**, _unless_ the repository is being used as a fork source for student repositories.

* The [site structure](#structure) dictates the GitHub Pages root of the repository.
