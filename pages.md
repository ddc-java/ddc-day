---
title: Pages
menu: Pages
order: 20
description: "Defining and configuring one or more pages"
---

## Overview

This theme may be used for a site with a single page, or multiple pages. Optionally, a navigator bar containing links to one or more pages of the site may be displayed in the page header. 

## Configuration

### Properties

Page-level configuration is done in the front matter (a YAML block preceding the page content), and supports the following properties (listed in alphabetical order, not in order of importance):

`author.email`
: If a value is provided, it will be used in a `mailto` link, with `author.name` as the displayed text; if `author.name` is not specified, then this property is ignored.

`author.name`
: If a value is provided, it will be displayed in a "Written by" credit in the site's page footers.

`description`
: Description displayed under the page heading. Setting this property at the page level overrides the site-level setting. If not set at the site or page level, the GitHub repository description (if any) is displayed.

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
: This is a Boolean-valued property, used to control the generation of a navigator bar in the page header with links to all pages in the site that specify non-blank (and non-`false`) `menu` properties. If omitted, left without a value, or set to `false`, then the `menu` and `order` [page-level](#page) properties are ignored. On the other hand, if set to `true` (or another non-empty, non-`false` value), but if there are fewer than 2 pages with a `menu` property set, then the navigator bar will not be generated.
: (This property may be overridden at the page level.)

`repository_link.enabled`
: This is a Boolean-valued property, used to control the display of the GitHub logo as a link to the repository in GitHub. Note that even if the value is set to `true` (or something  other than `false` or empty), the logo &amp; link will not be displayed if the repository is private.

`title`
: Site-wide title, included in the heading display of each page. If present, this will be concatenated with a page-level title (if present); if neither this nor a page-level title is set, then the repository name is used.

`titles_from_headings.enabled`
: This is a Boolean-valued property used by the Jekyll SEO plug-in. It is only relevant when there are one or more pages that do not specify a `title` property in the front matter, in which case the first heading in such a page will be used as the value of a generated `title` property. (For the intended purpose of this theme, it is recommended to specify `title` properties explicitly, or to disable this portion of the SEO plug-in functionality, by assigning a value of `false` to this property.)

### Example

Of course, values of the above properties must be specified as properly formatted `YAML`. Here is an example `_config.yml` for a site based on this theme (note that several properties are not specified, and thus take their default values, or are specified at the page level, as described above):

```yaml
remote_theme: ddc-java/ddc-day
title: Recursion
author:
  name: Nick Bennett
  email: nick@nickbenn.com
```