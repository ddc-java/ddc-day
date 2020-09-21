---
title: Typography
menu: Typography
order: 40
description: "Fonts, styles, and symbols"
---

## Fonts &amp; styles

For the most part, the DDC Day theme is responsible for the specific typefaces and styles used in curriculum module web pages. However, the general font characteristics are selected based on the block and span formatting elements included in the content by the curriculum author. Thus, it's important that the author understand the general typographical characteristics for different content types, to better understand and use the [formatting guidelines](formatting.md).

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
    
`highlighted fixed-width`{:.normal-weight}

: 
    * Code fragments (in any programming/scripting, markup, or data interchange language).
    * References to code symbols.
    * Shell commands, arguments, and options.
    * Console output.
    * File and directory names.
    
$\text{serif roman and }italic$

: Mathematical expressions.

{:.normal-weight}sans-serif roman

: Normal text content.

## Symbols

There are a handful of characters that occur quite frequently in printed English that are not easily typed on the keyboard. Some word processing programs automatically translate to these special characters from common substitutes that are more easily typed; however, most text editors don't do that. So it is often the case that in e-mail or SMS messages, or even web pages, more easily typed (but incorrect) characters are used in place of the appropriate symbols. 

Fortunately, most dialects of Markdown (including that supported by the kramdown parser) include some automatic translations to a few special symbols from substitute character sequences. These are listed below, along with use cases for the symbols. Whenever possible, the correct symbols should be used---whether through these Markdown translations, HTML entities, or other means.

Note that this list does not include mathematical symbols. These should be typed using $\rm\LaTeX$, as described in ["Mathematical expressions"](formatting.md#mathematical-expressions).

... (horizontal ellipsis)

: An ellipsis is used to indicate an omitted section of text, or an omitted portion of a list or sequence. (In conversational-style writing, it's also used to indicate a long pause---often in the middle of a sentence---or an incomplete thought or statement.) It's common to type 3 periods in place of an ellipsis (some style guides even prefer 3 periods---especially when using a fixed-width font); however, most modern fonts include an ellipsis character, with a width equal to that of the "M" character in that font.

: Conveniently, the substitute character sequence that kramdown translates to the ellipsis is, in fact, 3 consecutive periods (`...`). In general, avoid using more than 3 periods in a row, with no intervening spaces. For example, if the omitted text immediately follows a complete sentence, that sentence would end with a period (or other terminal punctuation), followed by a space, and then the ellipsis.

--- (em dash)

: The em dash (so named because it is as wide as the "M" character) sets off a word or clause from the surrounding text, to add emphasis or signal an interruption. It is often (in pairs) in place of parentheses, when the enclosed clause is not essential to the surrounding text, but is still more important than parentheses would typically indicate. It is the longest of the dash characters in common use. 

: kramdown automatically translates a sequence of 3 hyphen or minus characters (`---`) into an em dash. When an em dash follows some text on the same line, there should not be a space between the preceding text and the em dash. Similarly, when an em dash is followed by text on the same line, there should be no space between the em dash that the text that follows it.

-- (en dash)

: The en dash (which has the same width as "N") is used between the endpoints of a range of values (e.g. numbers, dates, times). 

: kramdown automatically translates a sequence of 2 hyphen characters (`--`) into an en dash. There should be no spaces immediately before or after the en dash.
