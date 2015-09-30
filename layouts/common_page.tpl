<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.language_code }}" lang="{{ page.language_code }}">
<head>
{% include "Head" %} 
  <title>{{ page.site_title }} &raquo; {{page.title}}</title>
</head>
<body>
{% include "Header" %}
<div id="container" class="content-hyphenate">
	<div id="contentBG">
  <div id="content">
   <div id="body" class="left">
    <div class="text">
                                    <div class="text-inner clearfix" data-search-indexing-allowed="true">
     {% content %}
                                    </div>
    </div>
   </div>
   {% include "Sidebar" %}
   <div class="clearer">
   </div>
   {% include "Footer" %}
  </div>
	</div>
</div>
  {% include "JS" %}
</body>
</html>