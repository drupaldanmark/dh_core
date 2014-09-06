<?php
/**
 * @file dh_core.profile
 */

/**
 * Implements hook_install_tasks().
 *
 * Note, these tasks run after the "Configure site" step (where the admin
 * password is set).
 */
function dh_core_install_tasks($install_state){
  // Add custom tasks to the tasks array.
  $tasks = array();
  // Add the Panopoly App Server to the Installation Process (OPTIONAL)
  //
  // Panopoly leverages the Apps module to enable the many apps that create
  // magic with Panopoly. In order to get this working in your install profile,
  // you need to include the following code to your profile's
  // hook_install_tasks().
  //[STARTERKIT_APPS]require_once(drupal_get_path('module', 'apps') . '/apps.profile.inc');
  //[STARTERKIT_APPS]$tasks = $tasks + apps_profile_install_tasks($install_state, array('machine name' => 'panopoly', 'default apps' => array('panopoly_demo')));
  require_once(drupal_get_path('module', 'apps') . '/apps.profile.inc');
  $tasks = $tasks + apps_profile_install_tasks($install_state, array(
      'machine name' => 'panopoly',
      'default apps' => array('panopoly_demo')
  ));

  return $tasks;
}

/**
 * Implements hook_install_tasks_alter()
 */
function dh_core_install_tasks_alter(&$tasks, $install_state){
  // Magically go one level deeper in solving years of dependency problems.
  //
  // Panopoly improves the dependency checking of the core installer which helps
  // simplify sub-profiles. In order to get both of these working in your
  // install profile, you need to include the following code to your profile's
  // hook_install_tasks_alter().
  require_once(drupal_get_path('module', 'panopoly_core') . '/panopoly_core.profile.inc');
  $tasks['install_load_profile']['function'] = 'panopoly_core_install_load_profile';
}
