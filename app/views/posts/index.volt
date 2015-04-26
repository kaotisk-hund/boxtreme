<h1>Posts</h1>

{% for post in posts %}
    <div id="post">

<h2>{{ link_to('posts/view/'~ post.id ,post.title) }}</h3>



<div id="post-content">
	<p>{{ post.content }}</p>
</div>
<div id="category">
	<span>{{ post.category_id }}</span>
    <span>{{ post.user_id }}</span>
    <span>{{ post.date }}</span>
</div>
    </div>
{% endfor %}

