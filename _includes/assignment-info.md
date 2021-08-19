{% if site.assignment.url -%}
* Assignment link: <{{ site.assignment.url }}>
* Format: {{ site.assignment.format | default: "Gradle Java project" }}
{%- endif %}

{% if site.assignment.value.basic -%}
{% if site.assignment.value.basic.implementation -%}
* Basic implementation: {{ site.assignment.value.basic.implementation }} points
{% endif -%}
{% if site.assignment.value.basic.tests -%}
* Basic unit tests: {{ site.assignment.value.basic.tests }} points
{% endif -%}
{% else -%}
* Basic problem: None
{% endif -%}
{% if site.assignment.value.extra -%}
{% if site.assignment.value.extra.implementation -%}
* Extra credit implementation: {{ site.assignment.value.extra.implementation }} points
{% endif -%}
{% if site.assignment.value.extra.tests -%}
* Extra credit unit tests: {{ site.assignment.value.extra.tests }} points
{% endif -%}
{% else -%}
* Extra credit: None
{% endif %}
