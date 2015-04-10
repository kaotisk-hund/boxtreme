<h1>Categories</h1>

{% for category in categories %}
{{ link_to('categories/view/'~ category.id, category.category) }}
{% endfor %}
