; Drush Make file
;
; Use this file to build a full distribution including Drupal core and the
; "Drupalhagen" distribution using the following command...
;
; drush --no-patch-txt make build-dh_core.make <target directory>

api = 2
core = 7.x

; https://www.drupal.org/project/markdown
projects[markdown][version] = 1.2
projects[markdown][subdir] = contrib
; https://www.drupal.org/project/panels_everywhere
projects[panels_everywhere][version] = 1.0-rc1
projects[panels_everywhere][subdir] = contrib
; https://www.drupal.org/project/simple_gmap
projects[simple_gmap][version] = 1.2
projects[simple_gmap][subdir] = contrib


projects[campkitlite_core][type] = module
projects[campkitlite_core][download][type] = git
projects[campkitlite_core][download][url] = git@github.com:drupaldanmark/campkitlite.git
projects[campkitlite_core][download][branch] = master


; The Panopoly Foundation
projects[panopoly_core][version] = 1.11
projects[panopoly_core][subdir] = panopoly
projects[panopoly_images][version] = 1.11
projects[panopoly_images][subdir] = panopoly
projects[panopoly_theme][version] = 1.11
projects[panopoly_theme][subdir] = panopoly
projects[panopoly_magic][version] = 1.11
projects[panopoly_magic][subdir] = panopoly
projects[panopoly_widgets][version] = 1.11
projects[panopoly_widgets][subdir] = panopoly
projects[panopoly_admin][version] = 1.11
projects[panopoly_admin][subdir] = panopoly
projects[panopoly_users][version] = 1.11
projects[panopoly_users][subdir] = panopoly
; The Panopoly Toolset
projects[panopoly_pages][version] = 1.11
projects[panopoly_pages][subdir] = panopoly
projects[panopoly_wysiwyg][version] = 1.11
projects[panopoly_wysiwyg][subdir] = panopoly
projects[panopoly_search][version] = 1.11
projects[panopoly_search][subdir] = panopoly

; https://www.drupal.org/node/1183418
projects[views][patch][] = http://drupal.org/files/issues/views-exposed_forms_ajax_support-1183418-72.patch

; Theme stuff

; https://www.drupal.org/project/mothership
projects[mothership][type] = theme
projects[mothership][version] = 2.10

projects[hagen2013][type] = theme
projects[hagen2013][download][type] = git
projects[hagen2013][download][url] = git@github.com:drupaldanmark/hagen2013.git
projects[hagen2013][download][branch] = master
