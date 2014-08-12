# vim: sts=2 ts=2 sw=2 ai et

{% for cronname,cronjob in pillar['crontab'].iteritems() %}
{{ cronname }}:
  cron.present:
    {% for attr,value in pillar['crontab'][cronname].iteritems() -%}
    - {{attr}}: '{{ value }}'
    {% endfor -%}
{% endfor %}
