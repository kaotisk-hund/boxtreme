<h1>Torrents</h1>

{% for torrent in torrents %}
	<h4>{{ link_to(torrent.link,torrent.title) }}</h4>
	<p>
	{{ torrent.description }}
	</p>
{% endfor %}

<p>
{{ link_to('torrents/add', 'Add torrent') }}
</p>