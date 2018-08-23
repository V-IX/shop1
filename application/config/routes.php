<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'home';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['catalog/index'] = 'catalog/index';
$route['catalog/index/(:num)'] = 'catalog/index/$3';

$route['catalog(/[a-z0-9-_/]+)?'] = 'catalog/view/$1';


//$route['catalog/(:any)'] = 'catalog/view/$2';
$route['catalog/(:any)/(:num)'] = 'catalog/view/$3';

$route['product/ajaxSend'] = 'product/ajaxSend';
$route['product/(:any)'] = 'product/index/$2';

$route['order/(:any)'] = 'order/index/$2';

$route['news/index'] = 'news/index';
$route['news/index/(:num)'] = 'news/index/$3';
$route['news/(:any)'] = 'news/view/$2';

$route['articles/index'] = 'articles/index';
$route['articles/index/(:num)'] = 'articles/index/$3';
$route['articles/(:any)'] = 'articles/view/$2';

$route['mfrs/index'] = 'mfrs/index';
$route['mfrs/index/(:num)'] = 'mfrs/index/$3';
$route['mfrs/(:any)'] = 'mfrs/view/$2';

$route['pages/(:any)'] = 'pages/index/$2';

/* 404 */

$__admin = false;
$uri = isset($_SERVER['REQUEST_URI']) ? explode('/', $_SERVER['REQUEST_URI']) : '';
if(array_key_exists(1, $uri) and $uri[1] == 'admin') $__admin = true;

$route['404_override'] = $__admin === false ? 'errors/index' : '';
