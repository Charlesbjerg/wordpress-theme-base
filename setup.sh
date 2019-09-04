#!/bin/bash

# TODO: Build a WordPress CLI installer
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

# If not available gloablly, will need to run commands as php wp-cli.phar

# Install Plugins
wp plugin install advanced-custom-fields --activate
echo ACF installed and activated!

wp plugin install wordfence --activate
echo Wordfence installed and activated!

wp plugin install wordpress-seo --activate
echo Yoast installed and activated!

wp plugin install wp-super-cache --activate
echo SuperCache installed and activated!

wp plugin install classic-editor --activate
echo Gutenberg disabled [aka classic editor installed and activated]

# TODO: Find a way to clone the contact forms plugin
# TODO: Find a way to clone the mu-plugins

# Setup placeholder posts and pages
#wp post generate --count=10 --post_type=post
#wp post generate --count=10 --post_type=page

# Setup basic menus
#menuId=`wp menu create main-menu-3 --porcelain`
#echo Menu created with id: $menuId

postIds=`wp post generate --count=3 --post_type=post`
echo Posts Generated


# TODO: See if pages can be assigned to the menu from wp cli
