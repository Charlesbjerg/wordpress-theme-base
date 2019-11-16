<?php

/**
 * TODO: Remove all the boilerplate code from blankslate
 * TODO: Setup helper functions that are always used
 * TODO: Setup theme to mirror a normal build
 * 		 - Setup posts/pages/loops correcly
 * 		 - Add in pagination and breadcrumbs
 */

// File Includes
include_once('core/helper-functions.php');
include_once('core/custom-post-types.php');
include_once('core/wp-api-extend.php');

function initial_theme_setup() {

	// Add theme support for title and featured image
	add_theme_support('title-tag');
	add_theme_support('post-thumbnails');
	add_theme_support('html5', array(
		'search-form',
		'gallery',
		'caption',
	));

	// Setup theme menus
	register_nav_menus(array(
		'main-menu' => esc_html__('Main Menu', 'wordpress-base-theme'),
		'footer-left' => esc_html__('Footer Left Menu', 'wordpress-base-theme'),
		'footer-middle' => esc_html__('Footer Middle Menu', 'wordpress-base-theme'),
		'footer-right' => esc_html__('Footer Right Menu', 'wordpress-base-theme'),
	));
	
}
add_action('after_setup_theme', 'initial_theme_setup');
