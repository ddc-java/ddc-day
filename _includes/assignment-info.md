{% if site.assignment.url -%}
* Assignment link: <{{ site.assignment.url }}>
{% endif -%}
{% if site.assignment.format -%}
* Format: {{ site.assignment.format }}
{% endif -%}

{% if site.assignment.value.basic.implementation -%}
* Basic implementation: {{ site.assignment.value.basic.implementation }} points
{% endif -%}
{% if site.assignment.value.basic.tests -%}
* Basic unit tests: {{ site.assignment.value.basic.tests }} points
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
