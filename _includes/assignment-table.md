# Assignment Breakdown

{% marginnote 'tab1' '*Table 1*: List of required course tasks' %}

| **Task** | **Components** | **%** | **Due** |  
| :------- | :------------- | ----: | -----------: |
{% for ass in site.data.assignments %}| {{ ass.category }} | {{ ass.components }} | {{ ass.percent }} | {% if ass.shortdue %}{{ ass.shortdue }}{% else %}N/A{% endif %} |  
{% endfor %}  
