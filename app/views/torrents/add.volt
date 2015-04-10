<h1>Add Torrent</h1>

<form method=post>
<p>
Title {{ text_field('title') }}
</p>
<p>
Description {{ text_area('description') }}
</p>
<p>
MagnetURL {{ text_area('link') }}
</p>
<p>
{{ submit_button('Save') }}
</p>

</form>