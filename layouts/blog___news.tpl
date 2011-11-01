<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="et">
<head>
{% include "Head" %} 
{{ blog.rss_link }}
  <title>{{site.name}} &raquo; {{page.title}}</title>
</head>
<body>
{% include "Header" %}
<div id="container">
	<div id="contentBG">
  <div id="content">
   <div id="body" class="left">
    <div class="blog text">
       <div class="text-inner">
    
      {% addbutton class="add-article" %}
         
       <h1>{{ page.title }}</h1>
                                              
     {% for article in articles %}
     <div class="date left">
     
       <div class="dd">
        {{ article.created_at | format_date:"%d" }}
       </div>
       <div class="mm">
        {{ article.created_at | format_date:"%b" }}
       </div>
      
     </div>
     <div class="clearfix">
      <h2><a href="{{ article.url }}" class="none">{{ article.title }}</a></h2>
      <div class="data">{{ article.author.name }}, <a href="{{ article.url }}#comments">{{ "comments" |lc }}: {{ article.comments_count }}</a></div>
      {{ article.excerpt }} <a href="{{ article.url }}">{{ "read_more" |lc }}...</a>
      <br /><br />
     </div>
     <div class="clearer"></div>
     {% endfor %}	
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
{% unless editmode %}{{ site.analytics }}{% endunless %} 
  {% include "JS" %}
</body>
</html>