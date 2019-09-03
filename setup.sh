#!/bin/bash

# User
# user="--allow-root"

# Install Plugins
wp plugin install advanced-custom-fields
wp plugin activate advanced-custom-fields
#echo ACF installed and activated!

wp plugin install wordfence
wp plugin activate wordfence
#echo Wordfence installed and activated!

wp plugin install wordpress-seo
wp plugin activate wordpress-seo
#echo Yoast installed and activated!

wp plugin install wp-super-cache
wp plugin activate wp-super-cache
#echo SuperCache installed and activated!

wp plugin install classic-editor
wp plugin activate classic-editor
#echo Gutenberg disabled [aka classic editor installed and activated]