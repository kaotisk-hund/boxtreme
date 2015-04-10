<h1>Register</h1>
<form method="post">
<p>
Name {{ text_field('name') }}
</p>
<p>
Username {{ text_field('username') }}
</p>
<p>
Password {{ password_field('password') }}
</p>
<p>
Email {{ email_field('email') }}
</p>
<p>
{{ submit_button('Register') }}
</p>
</form>

