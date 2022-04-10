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
{% assign stretch_implementation = site.assignment.value.extra.implementation | default: site.assignment.value.stretch.implementation %}
{% assign stretch_tests = site.assignment.value.extra.tests | default: site.assignment.value.stretch.tests %}
{% assign stretch_value = site.assignment.value.extra.implementation | default: site.assignment.value.stretch.implementation %}
{% if stretch_implementation or stretch_tests -%}
{% if stretch_implementation -%}
* Stretch goal implementation: {{ stretch_implementation }} points
{% endif -%}
{% if stretch_tests -%}
* Stretch goal unit tests: {{ stretch_tests }} points
{% endif -%}
{% else -%}
* Stretch goals: None
{% endif %}
