crontab-formula
===============
script know any values from state
<pre>
{% for attr,value in pillar['crontab'][cronname].iteritems() -%}
    - {{attr}}: '{{ value }}'
</pre>
