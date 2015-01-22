<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="{{ page.language_code }}">
<head>
{% include "Head" %} 
{{ blog.rss_link }}
</head>
<body>
{% include "Header" %}
<div id="container">
	<div id="contentBG">
  <div id="content">
   <div id="body" class="left">
    <div class="text">
                                 <div class="text-inner">
     
     <h1>{{ page.title }}</h1>
     
     <div class="date left">
      
       <div class="dd">
        {{ article.created_at | format_date:"%d" }}
       </div>
       <div class="mm">
        {{ article.created_at | format_date:"%b" }}
       </div>
      
     </div>
     <div class="clearfix">
      <h2>{% editable article.title plain="true" %}</h2>
      <div class="data">{{ article.author.name }}, <a href="{{ article.url }}#comments">{{ "comments" |lc }}: <span class="edy-site-blog-comments-count">{{ article.comments_count }}</span></a></div>
       <div class="excerpt" data-search-indexing-allowed="true">{% editable article.excerpt %}</div>
       <div data-search-indexing-allowed="true">{% editable article.body %}</div>
       
       {% if editmode %}
        <div class="cfx article-tags">
            <div class="article-tag-icon"></div>
            {% editable article.tags %}
        </div>
      {% else %}
        {% unless article.tags == empty %}
            <div class="cfx article-tags">
                <div class="article-tag-icon"></div>
                {% for tag in article.tags %}
                    <a href="{{ article.page.url }}/tagged/{{ tag.path }}">{{ tag.name }}</a>{% unless forloop.last %}, {% endunless %}
                {% endfor %}
            </div>
        {% endunless %}
      {% endif %}
     </div>
          
     <div id="comments">
     
       <div class="hr"><h4>{{ "comments_for_count" |lc }}: <span class="edy-site-blog-comments-count">{{ article.comments_count }}</span></h4></div>
     
      {% for comment in article.comments %}
      <p class="edy-site-blog-comment">{{ comment.body_html }}
        <br /><span class="data2">{{ comment.author }}, {{ comment.created_at | format_date:"long" }}</span>{% removebutton %}</p>
      <br />
      {% endfor %}
      
      <div id="commentsAdd">    
       <div class="hr2">
        <h4>{{ "add_a_comment" |lc }}</h4>
       </div>
       {% commentform %}
        {% unless comment.valid? %}<div class="formtitle left"></div>
        <div class="right"><ul>
        {% for error in comment.errors %}
        <li style="text-align:left;">{{ error | lc }}</li>
        {% endfor %}
        </div></ul></div>
        <div class="clearer"></div>	{% endunless %}       
        <div class="formtitle left">{{ "name" |lc }}:</div>
        <div class="right"><input type="text" class="textbox" name="comment[author]" value="{{comment.author}}" /></div>
        <div class="clearer"></div>	
         
        <div class="formtitle left">{{ "email" |lc }}:</div>
        <div class="right"><input type="text" class="textbox" name="comment[author_email]" value="{{comment.author_email}}" /></div>
        <div class="clearer"></div>	
         
        <div class="formtitle left">{{ "comment" |lc }}:</div>
        <div class="right"><textarea rows="10" cols="50" name="comment[body]">{{comment.body}}</textarea></div>
        <div class="clearer"></div>
        <div class="add"><input type="submit" class="submit" value="{{"submit"|lc}}" /></div>
        <div class="clearer"></div>
       {% endcommentform %}
      </div>
     </div>	
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