<div id="widget">
    {{ elements.getLinks() }}
    {{ partial('links/index') }}
</div>


<div id="widget">
    {{ elements.getCategories() }}
    {{ partial('categories/index') }}
</div>

<div id="widget">
    <h1>Random number</h1>
    <p><?php
            $numbers = range(1, 54);
            shuffle($numbers);
            foreach ($numbers as $number) {
                echo "$number ";
            } ?>
    </p>
</div>


<!-- Adsense -->
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- sth -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-4168569111107713"
     data-ad-slot="9536238366"
     data-ad-format="auto"></ins>
<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>
<!-- END OF Adsense -->