<!DOCTYPE html>
<html lang="en">
    <head>
   		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    	<title>{{ site_title.data }}</title>
    	<!-- CSS elements are loaded here -->
                {{ stylesheet_link('css/normalize.css') }}
                {{ stylesheet_link('css/foundation.css') }}
                {{ stylesheet_link('foundation-icons/foundation-icons.css') }}
                {{ stylesheet_link('css/custom.css') }}

		
		<!-- Head scripts here -->
		{{ javascript_include('js/vendor/modernizr.js') }}
		<!-- Favicon here -->
		<link rel="icon" type="image/ico" href="../images/favicon.ico"/>

    </head>
    <body>
        <div id="body">
        
        <!-- Top bar -->
	    <nav class="top-bar" data-topbar>
	        <ul class="title-area">
	        <li class="name">
	            <h1><a>{{ site_name.data }}</a></h1>
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
			<!-- Links -->
			<li>{{ link_to('links', 'Links') }}</li>
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

        <!-- Main content -->
        <div id="container" class="row">
            <!--    Body-->
            <div id="content" class="small-12 large-12 columns">
                {{ content() }}
            </div>
            <!--    Side bar
            <div id="sidebar" class="small-4 large-4 columns">
            
                
                
		
                
            </div>-->
            
            <?php var_dump($_SESSION); ?>
        </div>

        <!-- Footer -->
        <?php //include 'gui/footer.php'; ?>
        </div>

        {{ javascript_include('js/foundation/foundation.js') }}
        {{ javascript_include('js/foundation/foundation.tab.js') }}
        {{ javascript_include('js/foundation/foundation.topbar.js') }}
        {{ javascript_include('js/vendor/jquery.js') }}
        {{ javascript_include('js/foundation.min.js') }}


        <script>
            $(document).foundation();
        </script>
    </body>
</html>
