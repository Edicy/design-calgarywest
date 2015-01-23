<div id="headerBG" class="content-hyphenate">
<div id="header">
  <div class="titletop"></div>
  <div id="title">
       <div id="lang">
     {% if editmode %}
    <ul id="langmenu">
        {% for language in site.languages %}
             <li><a href="{{ language.url }}" {% if language.selected? %}class="active"{% endif %}>{{ language.title }}</a></li>
        {% endfor %}
        <li>{%languageadd%}</li>
    </ul>
{% else %}
    {% if site.has_many_languages? %}
        <ul id="langmenu">
            {% for language in site.languages %}
                 <li><a href="{{ language.url }}" {% if language.selected? %}class="active"{% endif %}>{{ language.title }}</a></li>
            {% endfor %}
        </ul>
    {% endif %}
{% endif %}
   </div>
   <div class="L"><h1 class="clearfix">{% editable site.header %}</h1></div>
   <div class="clearer"></div>
  </div>
  <div class="hr"></div>
  <div id="mainmenu">
   <ul>
    {% unless site.root_item.hidden? %}<li><a href="{{ site.root_item.url }}"{% if site.root_item.current? %} class="active"{% endif %}>{{site.root_item.title}}</a></li>{% endunless %}
    {% for item in site.visible_menuitems %}
    <li{% unless item.translated? %} class="untranslated"{% endunless %}><a href="{{ item.url }}" {% unless item.translated? %}class="fci-editor-menuadd"{% endunless %} {% if item.selected? %} class="active"{% endif %}>{{ item.title }}</a></li>
    {% endfor %}
    {% if editmode %}<li>{% menubtn site.hidden_menuitems %}</li><li>{% menuadd %}</li>{% endif %}
   </ul>
  </div>
  {% for item in site.all_menuitems %}
  {% if item.selected? %}
{% if editmode %}
  <div class="clearer">
   <div class="clearerwhite"></div>
  </div>
  <div class="menuHR"></div>
  <div id="submenu"><ul>{% for level2 in item.visible_children %}
   <li{% unless level2.translated? %} class="untranslated"{% endunless %}><a href="{{ level2.url }}" {% unless level2.translated? %}class="fci-editor-menuadd"{% endunless %} {% if level2.selected? %} class="active"{% endif %}>{{ level2.title }}</a></li>
   {% endfor %}
          <li>{% menubtn item.hidden_children %}</li>
<li>{% menuadd parent="item" %}</li>
   </ul>
  </div>
{% else %}
{% if item.children? %}
  <div class="clearer">
   <div class="clearerwhite"></div>
  </div>
  <div class="menuHR"></div>
  <div id="submenu"><p>{% for level2 in item.all_children %}
   <a href="{{ level2.url }}"{% if level2.selected? %} class="active"{% endif %}>{{ level2.title }}</a>
   {% endfor %}
   </p>
  </div>
{% endif %}
{% endif %}
  {% endif %}
  {% endfor %}
  <div class="clearer"></div>
  <div class="hr"></div>
</div>
</div>