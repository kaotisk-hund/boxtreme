<h1>Links</h1>
<ul>
{% for link in links %}
<li>{{ link_to(link.link, link.title) }}</li>
{% endfor %}
</ul>
