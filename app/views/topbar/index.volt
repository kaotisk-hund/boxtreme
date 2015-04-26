{{ elements.getSiteName() }}
<!-- Top bar -->
<nav class="top-bar" data-topbar>
    <ul class="title-area">
        <li class="name">
            <h1><a>{{ sitename }}</a></h1>
        </li>
        <li class="toggle-topbar menu-icon"><a href="#">Menu</a></li>
    </ul>
    <section class="top-bar-section">

        <!-- Right Nav Section -->
        <ul class="right">
            <li>{{ link_to('users', 'User') }}</li>
            <li>{{ link_to('settings', 'Settings') }}</li>
            <li>{{ link_to('about', 'About') }}</li>
        </ul>

        <!-- Left Nav Section -->
        <ul class="left">

            <li>{{ link_to('','Home') }}</li>
            <!-- Categories -->
            <li>{{ link_to('categories', 'Categories') }}</li>

            <!-- Torrents -->
            <li class="has-dropdown">{{ link_to('torrents','Torrents')}}
                <ul class="dropdown">
                    <li>{{ link_to('torrents/browse','Browse')}}</li>
                    <li>{{ link_to('torrents/add','Add')}}</li>
                </ul>
            </li>


            <!-- Posts -->
            <li>{{ link_to('posts','Posts') }}
                <!-- Utilities -->
            </li>
            <li class="has-dropdown"><a>Utilities</a>
                <ul class="dropdown"><li>{{ link_to('apply','Apply') }}</li></ul>
            </li>
        </ul>
    </section>
</nav>