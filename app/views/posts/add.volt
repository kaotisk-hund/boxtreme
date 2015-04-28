<h1> ADD POST </h1>

<form method=post>
    <p>Title {{ text_field('title') }}</p>
    <p>Content {{ text_area('content') }}</p>
    <p>Public {{ check_field('public','y') }}</p>

    <p>{{ submit_button('Save') }}</p>
</form>