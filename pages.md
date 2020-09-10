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

`description`
: Description displayed under the page heading. Setting this property at the page level overrides the site-level setting. If not set at the site or page level, the GitHub repository description (if any) is displayed.

`heading_navigator.enabled`
: This is a Boolean-valued property, used to control the generation of a left sidebar navigator with links to all level 1--3 headings in the page body. If omitted, left without a value, or set to `false`, then the sidebar navigator will not be generated. Set at the page level, this property overrides the site-level setting.

`menu`
: This is the text that is displayed in the page navigator bar (if `page_navigator.enabled` is `true`), for the current page. If omitted or left blank, the current page will not be listed in the page navigator.

`order`
: This is the sort order for pages listed in the page navigator. Pages with an empty value for this property (or with the property omitted altogether) are sorted at the start of the list.

`page_navigator.enabled`
: This is a Boolean-valued property, used to control the generation of a navigator bar in the page header with links to all pages in the site that specify non-blank (and non-`false`) `menu` properties. If omitted, left without a value, or set to `false`, the navigator bar will not be generated.Set at the page level, this property overrides the site-level setting.

`title`
: Page title, included in the heading display. If present, this will be concatenated to the site-level title (if present); if neither this nor a site-level title is set, then the repository name is used. (Note that a page-level title may be set by the `titles_from_headings` option, described in [Configuration](configuration.md#titles-from-headings).)

### Example

Of course, values of the above properties must be specified as properly formatted `YAML` in the page front matter. Here is an example page front matter, with some of the above properties set:

```yaml
---
title: Lists & links
description: "Creating unordered lists and links in Markdown"
menu: Lists & links
order: 30
---
```
