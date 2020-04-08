#!/bin/bash

# get page and all linked content
# he -p will get you all the required elements to view the site correctly 
# (css, images, etc). 
# The -k will change all links (to include those for CSS & images) to 
# allow you to view the page offline as it appeared online.
# -H spans all domains; that is even cdn'ed images will get downloaded
wget -p -k -Poutput -H https://www.linkedin.com/pulse/3d-kanban-peter-merel/ 

# pandoc does a nice job of coverting to markdown,
# but I ahve not gotten it to include imagery in its download.
pandoc -s -r html https://www.linkedin.com/pulse/3d-kanban-peter-merel/ -o ./output/3d-kanban.markdown