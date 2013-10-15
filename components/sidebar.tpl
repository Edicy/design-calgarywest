   <div id="sidebar" class="right">
     {% for article in site.latest_articles limit:1 %}
     <div class="news">
    <h2>{{"latest_news"|lc}}</h2>
     
    {% for article in site.latest_4_articles %}
    <p><strong>{{ article.created_at | date:"%d.%m" }}</strong><a href="{{ article.url }}" class="none">{{ article.title | truncate:50 }}</a></p>
    <div class="clearer"></div>
    {% endfor %}
       </div>
     {% endfor %}
{% if site.search.enabled %}
<div id="search">
<form action="" class="edys-search">
<div><input type="text" id="onpage_search" class="edys-search-input" placeholder="{{ "search"|lc }}" /></div></form>
</div>{% endif %}
</div>