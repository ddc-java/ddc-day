---
title: Formatting Content
menu: Formatting
order: 50
description: "Formatting curriculum content (code, mathematical expressions, pseudocode, etc.)"
---

## Overview

It is assumed that the curriculum module author has significant Markdown experience already. Thus, the aim of this page is not to be a Markdown syntax reference. On the other hand, many types of content can be written in Markdown (or HTML) in a variety of ways---often with different outcomes in page layout and style. So the objective here is to present guidelines for several key content types, to encourage consistency across curriculum modules.

One general guideline, applicable to all of the rules that follow, is this:

> If an identical (and desirable) formatting result can be produced with either Markdown or HTML, the former should be used. In other words, content should be written using Markdown when possible, mixed Markdown &amp; HTML when necessary, and pure HTML as a last resort.

## Abbreviations

All but the most widely known abbreviations (e.g. HTML) should be defined _on first use,_ with the definition in italics; this definition should only appear once in the module, unless the module includes a glossary. In addition, a Markdown abbreviation should be defined, in every page that uses the abbreviation, to associate the definition (as tooltip text) with the abbreviation. The abbreviation syntax supported by the kramdown parser is 

```text
*[abbreviation]: definition
```

For example, we could write this Markdown:

```text
*[MVC]: Model-View-Controller
*[SoC]: Separation of Concerns 

_Model-View-Controller_ (MVC) is a software design pattern in which a system's code is divided into 3 related sets of components, addressing 3 concerns: maintaining the internal state (model); presenting one or more representations of the state to an external observer (view); responding to external events, passing relevant updates to the model (controller).

MVC is a more specific form of the general principle of _separation of concerns_ (SoC).
```

(Note that unlike a list item, the asterisk at the start of an abbreviation is not followed immediately by a space, but by the left bracket of the abbreviation.)

The above will be rendered as

> *[MVC]: Model-View-Controller
> *[SoC]: Separation of Concerns 
> 
> _Model-View-Controller_ (MVC) is a software design pattern in which a system's code is divided into 3 related sets of components, > addressing 3 concerns: maintaining the internal state (model); presenting one or more representations of the state to an external observer (view); responding to external events, passing relevant updates to the model (controller).
> 
> MVC is a more specific form of the general principle of _separation of concerns_ (SoC).
{:.render-example}

Note that the kramdown abbreviation syntax does not result in immediately rendered content; instead, defining a kramdown abbreviation results in the automatic attachment of a tooltip to every use of the abbreviation in the page. 

## Code fragments

When referenced, excerpted, or embedded in an instruction module, virtually all references to programmatic, markup, configuration, shell, or filesystem tokens (names or symbols of operators, classes, interfaces, methods, fields, variables, tables, columns, directories, files, elements, attributes, properties, commands, arguments, options, selectors, etc.) must be typographically distinct from the rest of the module text. Following widely used conventions, all of these should be displayed in a fixed-width (aka monospace) typeface. Not coincidentally, such typefaces are also widely used in shell programs, programming text editors, IDEs, etc.

Of course, knowing when to use a fixed-width font, and when not to, can be tricky, especially when we're writing curriculum for a programming course. A good rule of thumb is this:

> If the content in question is something that the user might type in a shell or a source code file, or if it is something that is expected to be displayed in a shell or console, it should be displayed in a fixed-width typeface, using (if feasible) syntax highlighting.

For example, consider this sentence: "One Git command that is a major source of confusion---and potential disaster---is git reset." In that sentence, the capitalized "Git" is the name of the software, and not a command the user might type at some point (or even a fragment of such a command). However, "git reset" is a Git command/subcommand pair, and is in fact something that would be typed in a shell. So the preferred rendering of that sentence would be

> One Git command that is a major source of confusion---and potential disaster---is `git reset`.
{:.render-example}

(Note that the period at the end of the sentence is part of the sentence itself, not part of the `git reset` command; thus, it is not in a fixed-width typeface.)

THe proper way to format these monospaced fragments is with Markdown [_code blocks_](#code-blocks) and [_inline code_](#inline-code); these are generally converted to HTML `<pre>` and `<code>` elements.

#### Inline code

Simple symbols, filenames, expressions, etc., that do not make up an entire statement, can be written as inline code, enclosed in backticks (<code>`</code>). (Note that a backtick is not the same as an apostrophe or single quote character.) For example,

```markdown
The first class of the Java standard library that most beginning programmers encounter is the `String` class.
```

is converted to HTML and rendered as

> The first class of the Java standard library that most beginning programmers encounter is the `String` class.
{:.render-example}

#### Code blocks

For classes, methods, or other multi-line code fragments---or even single-line fragments that comprise complete statements or complex expressions---use _fenced code blocks_, with language tags.

A fenced code block begins with a line containing 3 backticks, optionally (and immediately) followed by a language identifier; there must be nothing else on the line. Similarly, the block ends with a line containing 3 backticks _only_. 

**Important**: Java code blocks must conform to the [Google Java Style Guide](https://google.github.io/styleguide/javaguide.html). SQL code blocks must either conform to Simon Holywell's [SQL Style Guide](https://www.sqlstyle.guide/), or be formatted using the IntelliJ code format command for the relevant dialect. XML and JSON code blocks should be formatted using the IntelliJ code format command. (Of course, if the code block is presenting an example of undesirable naming or formatting, then this rule does not apply.)

For example, here's a simple Java method, written in a fenced code block: 

    ```java
    public static void main(String[] args) {
      System.out.println("Hello, world!");
    }
    ```

This will be rendered as

> ```java
> public static void main(String[] args) {
>   System.out.println("Hello, world!");
> }
> ```
{:.render-example}

Prior to the advent of the fenced code block in most Markdown dialects, there was another way to write a code block: If one or more lines of text is indented at least 4 spaces in from the current indent level (but without setting a new indent level via a list), that block would be converted to an HTML `<pre>` element. That approach still works; however, fenced code blocks with language identifiers should be used for this purpose whenever possible.

## Footnotes

The extended Markdown syntax supported by kramdown can be used for page-specific footnotes. For example,

```markdown
A link at the end of this sentence, displayed as a number (automatically generated), links to a footnote at the bottom of the page.[^footnote-example]

[^footnote-example]: A footnote is automatically displayed at the bottom of the page, no matter where the footnote definition appears.
```

will be displayed as

> A link at the end of this sentence, displayed as a number (automatically generated), links to a footnote at the bottom of the page.[^footnote-example]
{:.render-example}

[^footnote-example]: A footnote is automatically displayed at the bottom of the page, no matter where the footnote definition appears.

## Glossaries

If a curriculum module introduces several new terms, it should include a glossary section (possibly in a **Resources** page). This should be written as a definition list---an element intended for just this purpose. Glossary entries in a single list should always be in alphabetical order; however, it may be useful to have multiple glossary lists, organized by category or topic.

Even if a module includes a glossary, terms (including abbreviations) should be defined on first use; however, the inline definition given with the first use should generally be shorter than the one in the glossary.

The Markdown extensions supported by kramdown include support for definition lists. However, please note that the syntax for definition lists is quite different from that for ordered and unordered lists.

#### Example

A portion of a glossary of basic Git-related terms could be written as follows:

```markdown
Branch
: A named sub-tree of revisions within a repository. Every non-empty repository includes at least one branch (usually `master`). Changes to content in one branch do not directly affect content in other branches, unless/until those branches are merged.

Commit 
: A timestamped record of a set of changes (new files, deleted files, modified files) recorded in a repository.

Fork
: A copy of a repository from one GitHub (or BitBucket, GitLab, etc.) account to another account.

Git
: A distributed version control system (DVCS), originally developed to help manage the source code of the Linux kernel.

GitHub
: A service that hosts repositories online, easing propagation of changes between collaborators and providing a web-based interface for repository management and making simple content changes. 

Merge
: The act of incorporating new changes (commits) from one clone of a repository into another clone of the same repository, one branch of a repository into another brach of the same repository, or one forked repository (or the source of the fork) into another fork of the same repository (or the source of the fork).

Repository
: A collection of files (source code, documents, etc.) related to your project, in which you create and manage content.

Version control system (VCS)
: A system that records a history of changes to a file or set of files over time so that specific changes/versions can be reviewed and retrieved. 
```

The list above will be rendered as 

> Branch
> : A named sub-tree of revisions within a repository. Every non-empty repository includes at least one branch (usually `master`). Changes to content in one branch do not directly affect content in other branches, unless/until those branches are merged.
> 
> Commit 
> : A timestamped record of a set of changes (new files, deleted files, modified files) recorded in a repository.
> 
> Fork
> : A copy of a repository from one GitHub (or BitBucket, GitLab, etc.) account to another account.
> 
> Git
> : A distributed version control system (DVCS), originally developed to help manage the source code of the Linux kernel.
> 
> GitHub
> : A service that hosts repositories online, easing propagation of changes between collaborators and providing a web-based interface for repository management and making simple content changes. 
> 
> Merge
> : The act of incorporating new changes (commits) from one clone of a repository into another clone of the same repository, one branch of a repository into another brach of the same repository, or one forked repository (or the source of the fork) into another fork of the same repository (or the source of the fork).
> 
> Repository
> : A collection of files (source code, documents, etc.) related to your project, in which you create and manage content.
> 
> Version control system (VCS)
> : A system that records a history of changes to a file or set of files over time so that specific changes/versions can be reviewed and retrieved. 
{:.render-example}

## Links

The first reference to linked content (whether an attachment included in the module, another page in the module, or an external page or other resource) should use an inline or reference Markdown link. Subsequent references to the same content should not be links, except in one of the following cases:

* In a multi-page module with several references to external resources, there should either be a **Links** page, or a **Links** section on a **Resources** (or similarly named) page. Links to all external resources---whether previously linked or not---should be presented as a list here.

* In a single-page module, where the single page is relatively long and contains several references to external resources, there should be a **Links** section near the bottom of the page. Links to all external resources---whether previously linked or not---should be presented as a list here.

On internal links to non-HTML content (i.e. attachments) and all external links, this theme automatically displays a thumbnail, corresponding to the extension portion (if any) of the link destination. If this thumbnail should not be displayed, use a kramdown span _inline attribute list_ (IAL) specifying the `omit-thumbnail` class. For example, this Markdown includes an internal link to another page, an internal link to a non-HTML attachment, an external link with an automatic thumbnail, and an external link with the thumbnail omitted.

```markdown
* [Resources](resources.md) <!-- Inline link to internal HTML content, w/o thumbnail. -->
* [Deep Dive Coding logo](assets/images/ddc.png) <!-- Inline link to internal non-HTML content, w/ thumbnail. -->
* [Deep Dive Coding](https://deepdivecoding.com/) <!-- Inline link to external resource, w/ thumbnail. -->
* [CNM Ingenuity][]{:.omit-thumbnail} <!-- Reference link to external resource, w/o thumbnail. -->

[CNM Ingenuity]: https://cnmingenuity.org/
```

The above is rendered as

> * [Resources](resources.md) <!-- Inline link to internal HTML content, w/o thumbnail. -->
> * [Deep Dive Coding logo](assets/images/ddc.png) <!-- Inline link to internal non-HTML content, w/ thumbnail. -->
> * [Deep Dive Coding](https://deepdivecoding.com/) <!-- Inline link to external resource, w/ thumbnail. -->
> * [CNM Ingenuity][]{:.omit-thumbnail} <!-- Reference link to external resource, w/o thumbnail. -->
{:.render-example}

[CNM Ingenuity]: https://cnmingenuity.org/

If the `omit-thumbnail` class is used on a link displayed in a list of links (e.g. in a **Links** section), it's recommended to include not only a standard Markdown link (specified with the `[…](…)` syntax), but also an _autolink_ (enclosed with `<…>`), so that the destination URL is clearly displayed. For example,

```markdown
* [Deep Dive Coding Java+Android Bootcamp Curriculum Theme](https://github.com/ddc-java/ddc-day/){:.omit-thumbnail} (<https://github.com/ddc-java/ddc-day/>{:.omit-thumbnail})
```

will be rendered as

> * [Deep Dive Coding Java+Android Bootcamp Curriculum Theme](https://github.com/ddc-java/ddc-day/){:.omit-thumbnail} (<https://github.com/ddc-java/ddc-day/>{:.omit-thumbnail})
{:.render-example}

## Mathematical expressions

When the site content includes mathematical expressions, the approach used for displaying them is largely a matter of aim: 

* When the intention is to show a computation as expressed in code of a specific programming language, a code block (or inline code statement) should be used.

* If mathematical equations, formula derivations---or even simple but non-programming-language-specific computations---are needed, mathematical notation should be used. For this purposes, this theme supports the use of $\rm\LaTeX$ (LaTeX) expressions embedded in Markdown or HTML content. These will be interpreted and rendered in the browser by the MathJax JavaScript library.

In any case, mathematical expressions should not be written as plain text, without any typographical distinction from the rest of the content. In particular, mathematical symbols (e.g. Greek letters such as $\pi$ or $\Sigma$, or other symbols or operators such as $\in$ or $\infty$) must not be "spelled out" in English in the text, unless one or more of these conditions hold:

* It is done for the purpose of naming and explaining the individual symbols or operators (e.g. "$\Sigma$, the upper-case Greek letter sigma, is used to denote the sum of terms in a sequence.").

* It's done to re-state a mathematical expression in words, to provide additional explanation. 

* It's used as a programmatic symbol, in which case it should be in inline code or a code block (for example, `Math.PI`).

### Modes

#### Display (block)

The LaTeX _display_ mode, where one or more LaTeX expressions are displayed on one or more lines, with no non-LaTeX content on those lines, is invoked by enclosing a block of LaTeX code between `$$` delimiters. The opening and closing `$$` must be on their own lines. 

For example, to show the _quadratic equation_ in display mode, we might write

```tex
$$
x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
$$
```

which will be rendered as 

> $$
> x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
> $$
{:.render-example}

#### Inline 

Simple mathematical expressions may also be written inline, using `$…$`. For example, `$c^2 = a^2 + b^2$` will be rendered as $c^2 = a^2 + b^2$. Note that a number of LaTeX environments---particularly for arranging multiple expressions together---are not supported in inline mode.

### Labels

#### Automatic

The _equation_ environment can be used to generate equation numbers and use them to label mathematical expressions automatically, by enclosing an expression with `\begin{equation} … \end{equation}`. For example, we can write _Euler's formula_, using the LaTeX equation environment, as 

```tex
$$
\begin{equation} e^{ix} = \cos x + i \sin x \end{equation}
$$
```

This is rendered with an automatically generated equation number:

> $$
> \begin{equation} e^{ix} = \cos x + i \sin x \end{equation}
> $$
{:.render-example}

By default, numbering starts at 1 for the first use of `\begin{equation} … \end{equation}` in a page.

#### Manual

Use the `\tag{…}` macro to mark an equation with an explicity specified number or label. For example, we might write the _Euler's identity_ special case of [Euler's formula (above)](#mjx-eqn-1), where $x = \pi$, as 

```tex
$$
\tag{1a} e^{i\pi} + 1 = 0
$$
```

This will be rendered as

> $$
> \tag{1a} e^{i\pi} + 1 = 0
> $$
{:.render-example}

### Links

#### LaTeX 

To include a reference to a numbered or labeled equation in text, we can use the LaTeX `\label{…}` macro to define a referenced equation, then `\eqref{…}` to reference it in text. Note that the references may precede or follow the definitions. For example, we could write the following combination of Markdown and LaTeX.

```tex
The _logistic map_ equation, shown in $\eqref{logistic map}$, is one of the simplest examples of a non-linear dynamic equation.

$$
\begin{equation} x_{n + 1} = r x_n \left( 1 - x_n \right) \label{logistic map} \end{equation}
$$
```

This is rendered as

> The _logistic map_ equation, shown in $\eqref{logistic map}$, is one of the simplest examples of a non-linear dynamic equation.
> 
> $$
> \begin{equation} x_{n + 1} = r x_n \left( 1 - x_n \right) \label{logistic map} \end{equation}
> $$
{:.render-example}

#### Markdown

As seen above, the combination of `\label{…}` and `\eqref{…}` results in MathJax inserting a link to the labeled formula. However, the text of the link is always the autogenerated number or explicitly specified tag, enclosed in parentheses: `\eqref{…}` doesn't allow us to specify other text or image to be used in the link; to do that, we need to use HTML or Markdown links. Fortunately, numbered or tagged equations are automatically given HTML `id` attributes by the MathJax processor; this attribute can be used as (among other things) the anchor for intra- and inter-document links in Markdown or HTML.

If the `\label{…}` macro is used then the label forms the basis of the `id`; otherwise, the generated number or explicitly specified tag is used. In any case, the `id` attribute value is `mjx-eqn-`, followed by the label, number, or tag, with any whitespaces replaced by an underscore (`_`).

The following Markdown text includes links to the 3 equations above.

```markdown
* [Euler's formula](#mjx-eqn-1)
* [Euler's identity](#mjx-eqn-1a)
* [Logistic map](#mjx-eqn-logistic_map)
```

This is rendered as

> * [Euler's formula](#mjx-eqn-1)
> * [Euler's identity](#mjx-eqn-1a)
> * [Logistic map](#mjx-eqn-logistic_map)
{:.render-example}

## Pseudocode

Pseudocode included in a module should be formatted using an ordered (numbered) or unordered (bullet) list, with nested lists as appropriate. Use the indentation structure of nested lists to provide visual and logical structure to the pseudocode.

Use inline LaTeX, LaTeX blocks, inline code, and code blocks as appropriate. However, when using LaTeX or code blocks, be sure to respect the current indentation of the enclosing list, so that the list structure isn't broken (e.g. the numbering in an ordered list restarted). 

#### Example

What follows is annotated pseudocode for a binary search of an array of integers. Since the algorithm is not specific to Java, the pseudocode doesn't use Java code, but does use mathematical notation.

First, here is the Markdown code, with inline LaTex:

```markdown
**Given:**

* $D$ is array to be searched, $D = (d_0, d_1, \ldots, d_{n - 1})$.

* $D$ is in sorted order---that is, $d_i \le d_j, \forall i < j$.
    
* $v$ is value to search for: 

    * If $v$ is in $D$, its position must be returned. 
    * If $v$ is _not_ in $D$, $(-p - 1)$ must be returned, where insertion of $v$ at position $p$ would preserve the sort order.

**To find $v$ in $D$:**

1. $l \gets 0$. 

    ($l$ is the lower inclusive bound of search range.)

2. $u \gets n$. 
    
    ($l$ is the upper exclusive bound of search range.)

3. While $l < u$:

    1. $m \gets \left \lfloor \frac{l + u}{2} \right \rfloor$. 
    
        ($m$ is the midpoint of search range.)
    
    2. If $d_m = v$,
    
        * return $m$;
        
            (Done: $v$ is found at position $m$.)
        
        otherwise, if $d_m > v$,
        
        * $u \gets m$;
        
            ($d_m$ is too high, so updated search range should end at $m$.)
        
        otherwise,
        
        * $l \gets m + 1$.
        
            ($d_m$ is too low, so updated search range should start at $m + 1$.)
        
4. Return $(-u - 1)$.

    ($v$ is not in $D$, but inserting $v$ at position $u$ would preserve the sorted order.)
```

Now, the rendered output:

> **Given:**
> 
> * $D$ is array to be searched, $D = (d_0, d_1, \ldots, d_{n - 1})$.
> 
> * $D$ is in sorted order---that is, $d_i \le d_j, \forall i < j$.
>     
> * $v$ is value to search for: 
> 
>     * If $v$ is in $D$, its position must be returned. 
>     * If $v$ is _not_ in $D$, $(-p - 1)$ must be returned, where insertion of $v$ at position $p$ would preserve the sort order.
> 
> **To find $v$ in $D$:**
> 
> 1. $l \gets 0$. 
> 
>     ($l$ is the lower inclusive bound of search range.)
> 
> 2. $u \gets n$. 
>     
>     ($l$ is the upper exclusive bound of search range.)
> 
> 3. While $l < u$:
> 
>     1. $m \gets \left \lfloor \frac{l + u}{2} \right \rfloor$. 
>     
>         ($m$ is the midpoint of search range.)
>     
>     2. If $d_m = v$,
>     
>         * return $m$;
>         
>             (Done: $v$ is found at position $m$.)
>         
>         otherwise, if $d_m > v$,
>         
>         * $u \gets m$;
>         
>             ($d_m$ is too high, so updated search range should end at $m$.)
>         
>         otherwise,
>         
>         * $l \gets m + 1$.
>         
>             ($d_m$ is too low, so updated search range should start at $m + 1$.)
>         
> 4. Return $(-u - 1)$.
> 
>     ($v$ is not in $D$, but inserting $v$ at position $u$ would preserve the sorted order.)
{:.render-example}

## Test cases

Test cases should be written using tables, with clear and concise column headers indicating inputs, expected outputs, and expected exceptions. The guidelines for [code fragments](#code-fragments) apply here: input and output values should be formatted as Java expressions, using inline code.

Inline code Markdown tables are easy to write, and usually work well for this purpose. However, if a table cell needs to contain a block element, that's not directly supported in Markdown; HTML may be required, or a combination of Markdown, HTML, and kramdown options.

#### Example

The following Markdown creates a table of test cases for one of the practical exam problems used in the bootcamp:

```markdown
| `hours` | `minutes` | Expected return value of `hourHandRadians( hours, minutes)` | Expected return value of `minuteHandRadians( minutes)` |
|:---:|:---:|:---------------:|:---------------:|
| `0` | `0` | `1.57079632679` | `1.57079632679` |
| `3` | `15` | `6.152285613280012` | `0` |
| `12` | `30` | `1.3089969389957474` | `4.71238898038469` |
| `19` | `42` | `3.822271061867582` | `3.4557519189487724` |
```

The above Markdown is rendered as

> | `hours` | `minutes` | Expected return value of `hourHandRadians(hours, minutes)` | Expected return value of `minuteHandRadians(minutes)` |
> |:---:|:---:|:---------------:|:---------------:|
> | `0` | `0` | `1.57079632679` | `1.57079632679` |
> | `3` | `15` | `6.152285613280012` | `0` |
> | `12` | `30` | `1.3089969389957474` | `4.71238898038469` |
> | `19` | `42` | `3.822271061867582` | `3.4557519189487724` |
{:.render-example}

## UI controls

When referencing UI controls (menu commands, window titles, button labels, field labels, etc.) in curriculum module text, the static labels/names of those controls should be shown in bold type. Additionally, hierachical commands (such as menus with submenus) should be written with a forward slash between the components. 

For example, if the instructions you're writing direct the student to change the IntelliJ settings to use the non-modal commit interface, you might write something like

```markdown
1. Use the **File/Settings** command to open the IntelliJ **Settings** window.

2. Select the **Version Control/Commit** settings from the left sidebar of the **Settings** window.
 
3. Enable (by checking the corresponding checkbox) the **Use non-modal commit interface** setting.
```

The above Markdown will be rendered as

> 1. Use the **File/Settings** command to open the IntelliJ **Settings** window.
>
> 2. Select the **Version Control/Commit** settings from the left sidebar of the **Settings** window.
> 
> 3. Enable (by checking the corresponding checkbox) the **Use non-modal commit interface** setting.
{:.render-example}

The use of screen captures (to clarify actions to be taken in a program's UI) is encouraged.
