#!/bin/bash

# TODO: Build a WordPress CLI installer

# Install Plugins
wp plugin install advanced-custom-fields
wp plugin activate advanced-custom-fields
echo ACF installed and activated!

wp plugin install wordfence
wp plugin activate wordfence
echo Wordfence installed and activated!

wp plugin install wordpress-seo
wp plugin activate wordpress-seo
echo Yoast installed and activated!

wp plugin install wp-super-cache
wp plugin activate wp-super-cache
echo SuperCache installed and activated!

wp plugin install classic-editor
wp plugin activate classic-editor
echo Gutenberg disabled [aka classic editor installed and activated]

# TODO: Find a way to clone the contact forms plugin
# TODO: Find a way to clone the mu-plugins
# TODO: Setup a couple of basic post/page placeholders

# Setup placeholder posts and pages
wp post generate --count=10 --post_type=post
wp post generate --count=10 --post_type=page

# Setup basic menus
wp menu create main-menu --porcelain

# TODO: See if pages can be assigned to the menu from wp cli
