; Drush Make file
;
; Use this file to build a full distribution including Drupal core and the
; "Drupalhagen" distribution using the following command...
;
; drush --no-patch-txt make build-dh_core.make <target directory>

api = 2
core = 7.x

projects[adapt_core][type] = 'module'
projects[adapt_core][subdir] = 'global'
projects[adapt_core][download][type] = 'git'
projects[adapt_core][download][url] = 'https://github.com/adaptdk/adapt_core.git'
projects[adapt_core][download][tag] = '1.5.6'

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
projects[campkitlite_core][subdir] = custom
projects[campkitlite_core][download][type] = git
projects[campkitlite_core][download][url] = git@github.com:drupaldanmark/campkitlite.git
projects[campkitlite_core][download][branch] = master

; Theme stuff

; https://www.drupal.org/project/mothership
projects[mothership][type] = theme
projects[mothership][version] = 2.10
projects[mothership][subdir] = contrib

projects[hagen2013][type] = theme
projects[hagen2013][download][type] = git
projects[hagen2013][download][url] = git@github.com:drupaldanmark/hagen2013.git
projects[hagen2013][download][branch] = master
projects[hagen2013][subdir] = custom

; UI stuff
projects[backports][version] = 1.0-alpha1
projects[backports][subdir] = contrib

projects[date_popup_authored][version] = 1.1
projects[date_popup_authored][subdir] = contrib

projects[save_draft][version] = 1.4
projects[save_draft][subdir] = contrib
