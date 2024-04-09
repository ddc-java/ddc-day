{% if site.assignment.url -%}
* Assignment link: <{{ site.assignment.url }}>
{% endif -%}
{% if site.assignment.format -%}
* Format: {{ site.assignment.format }}
{% endif -%}

{% if site.assignment.value.basic.pseudocode -%}
* Basic goal pseudocode: {{ site.assignment.value.basic.pseudocode }} points
{% endif -%}
{% if site.assignment.value.basic.implementation -%}
* Basic goal implementation: {{ site.assignment.value.basic.implementation }} points
{% endif -%}
{% if site.assignment.value.basic.tests -%}
* Basic goal unit tests: {{ site.assignment.value.basic.tests }} points
{% endif -%}

{% if site.assignment.value.stretch.pseudocode -%}
* Stretch goal pseudocode: {{ site.assignment.value.stretch.pseudocode }} points
{% endif -%}
{% if site.assignment.value.stretch.implementation -%}
* Stretch goal implementation: {{ site.assignment.value.stretch.implementation }} points
{% endif -%}
{% if site.assignment.value.stretch.tests -%}
* Stretch goal unit tests: {{ site.assignment.value.stretch.tests }} points
{% endif -%}

{% if site.assignment.value.extra.implementation -%}
* Extra credit implementation: {{ site.assignment.value.extra.implementation }} points
{% endif -%}
{% if site.assignment.value.extra.tests -%}
* Extra credit unit tests: {{ site.assignment.value.extra.tests }} points
{% endif -%}
