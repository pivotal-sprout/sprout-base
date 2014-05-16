include_attribute "sprout-base::home"

node.default['bash_it'] ={
  'enabled' => true,
  'enabled_plugins' => {
    'aliases'    => %w[general],
    'completion' => %w[defaults git],
    'plugins'    => %w[ssh]
  },
  'custom_plugins' => {
      "sprout-base" => %w[
        bash_it/custom/disable_ctrl-s_output_control.bash
        bash_it/custom/enable_ctrl-o_history_execution.bash
        bash_it/custom/ensure_usr_local_bin_first.bash
        bash_it/custom/add_user_initials_to_git_prompt_info.bash
      ]
  },
  'theme' => 'bobby',
  'dir' => ::File.expand_path(".bash_it", node['sprout']['home']),
  'bashrc_path' => ::File.expand_path(".bash_profile", node['sprout']['home']),
  'repository' => 'http://github.com/revans/bash-it.git'
}
