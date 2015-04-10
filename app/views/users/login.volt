<h1>Login</h1>

<form method="post">
<p>
Username {{ text_field('username')}}
</p>
<p>
Password {{ password_field('password')}}
</p>
<p>
{{ submit_button('Login') }}
</p>
</form>