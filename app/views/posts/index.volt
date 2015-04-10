<h1>Posts</h1>
<div id="post">
{% for post in posts %}
<h3>{{ link_to('posts/view/'~ post.id ,post.title) }}</h3>
<small>{{ post.date }}</small>
<p>Uploaded by {{ post.user_id }}</p>
<div id="post-content">
	<p>{{ post.content }}</p>
</div>
<div id="category">
	<p>{{ post.category_id }}</p>
</div>

{% endfor %}
</div>
