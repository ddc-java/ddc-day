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
{% if site.assignment.value.extra | default: site.assignment.value.stretch -%}
{% if site.assignment.value.extra.implementation  | default: site.assignment.value.stretch.implementation -%}
* Stretch goal implementation: {{ site.assignment.value.extra.implementation  | default: site.assignment.value.stretch.implementation }} points
{% endif -%}
{% if site.assignment.value.extra.tests  | default: site.assignment.value.stretch.tests -%}
* Stretch goal unit tests: {{ site.assignment.value.extra.tests  | default: site.assignment.value.stretch.tests }} points
{% endif -%}
{% else -%}
* Stretch goals: None
{% endif %}
