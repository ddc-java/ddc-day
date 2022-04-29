---
title: Pages
menu: Pages
order: 20
description: "Defining and configuring one or more pages"
---

{% include ddc-abbreviations.md %}
      
## Overview

This theme may be used for a site with a single page, or multiple pages. Optionally, a navigator bar containing links to one or more pages of the site may be displayed in the page header. 

## Configuration

### Properties

Page-level configuration is done in the front matter (a YAML block preceding the page content), and supports the following properties (listed in alphabetical order, not in order of importance):

`description`

: Description displayed under the page heading. Setting this property at the page level overrides the site-level setting. If not set at the site or page level, the GitHub repository description (if any) is displayed.

: For a single-page site (e.g. a practical exam problem), the description can be set at the page or site level---but it must be set, in any event. For a multi-page site, the description should be set in each page.

`heading_navigator.enabled`

: This is a Boolean-valued property, used to control the generation of a left sidebar navigator with links to headings in the page body. If omitted, left without a value, or set to `false`, then the sidebar navigator will not be generated. Set at the page level, this property overrides the site-level setting.

`heading_navigator.from`

: This is a numeric-valued property, used to specify the minimum heading level included in the heading navigator. Set at the page level, this property overrides the site-level setting.

`heading_navigator.to`

: This is a numeric-valued property, used to specify the maximum heading level included in the heading navigator. Set at the page level, this property overrides the site-level setting.

`menu`

: This is the text that is displayed in the page navigator bar (if `page_navigator.enabled` is `true`), for the current page. If omitted or left blank, the current page will not be listed in the page navigator. This text should be kept short---1--3 words, and with the ampersand (&) substituting for "and". Be sure to review the published appearance of links in the page navigator, and adjust `menu` as necessary.

`icon`

: If set, this property specifies the name of a basic Font Awesome icon, which is displayed in the page navigator in place of the `title` property value.

`order`

: This is the sort order for pages listed in the page navigator. Pages with an empty value for this property (or with the property omitted altogether) are sorted at the start of the list.

`page_navigator.enabled`

: This is a Boolean-valued property, used to control the generation of a navigator bar in the page header with links to all pages in the site that specify non-blank (and non-`false`) `menu` properties. If omitted, left without a value, or set to `false`, the navigator bar will not be generated.Set at the page level, this property overrides the site-level setting.

`title`

: Page title, included in the heading display. If present, this will be concatenated to the site-level title (if present); if neither this nor a site-level title is set, then the repository name is used. (Note that a page-level title may be set by the `titles_from_headings` option, described in [Configuration](site.md#titles-from-headings).)

: In general, this property should be set in every page.

Additional properties may be defined in the front matter, and referenced (with the `page.` prefix) from Liquid expressions in the page.

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

## Guidelines

* On a multi-page site, `title` and `description` property values should be set explicitly on all pages.

* In a multi-page site with `page_navigator.enabled` set to `true` at the site level, all pages should have the `menu` and `order` properties set. 

    One permissible exception to this rule is the site default page, `index.md`: If the site has 5+ pages, and if the default page is just a short introduction, with little (if any) instructional content, it may be left out of the page navigator by omitting the `menu` property from the front matter. The default page will still be reachable from other pages on the site, by clicking on the main header text at the top of the page. 
    
    A preferred alternative to the above, where there are too many pages in a module to display the titles effectively in the page navigator menu, is to set the `icon` property, so that an icon (e.g. a home icon for the default page) is displayed instead of a title. However, this approach should not be used for more than 1--2 pages in a module, and it should only be used for the first and/or last pages that appear in the page navigator menu.
    
    If the `menu` property is not set in the front matter of a given page, a link to the page **will not** be displayed in the page navigator.
    
* In a multi-page site with `page_navigator.enabled` set to `true` at the site level, a page with the `menu` and `href` properties set will have a corresponding link in the page navigator, but the link will go to the address specified by the `href` property. for example, the front matter below will result in a link to the Mozilla Developer Network (MDN) site appearing in the page navigator.

    ```yaml
    ---
    title: "Mozilla Developer Network"
    menu: MDN
    order: 100
    href: "https://developer.mozilla.org"
    ---
    ```
    
    Note that when the `href` property is set, any content below the front matter will generally not be displayed (since the page navigator link will go to the page specified in `href`). Thus, pages using `href` should generally not contain content after the front matter.