<!DOCTYPE html>
<html lang="en">
    <head>
   		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

        {{ get_title() }}
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
            {{ elements.getSiteName() }}
            {{ partial('topbar/index') }}

           <!-- Main content -->
           <div id="container" class="row">
           <!--    Body-->
           <div id="main" class="small-8 medium-8 large-8 columns">
            <div id="content">
                    {{ content() }}
                </div>
            </div>
            <!--    Side bar -->
            <div id="sidebar" class="small-4 medium-4 large-4 columns">
                {{ partial('sidebar/index') }}
            </div>
        </div>




        </div>
       <!-- Footer -->

            {{ partial('footer/index') }}




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
