# Vim Plugin Updater and Installer

A simple way to update and install your Vim plugins using Bash scripts.

Requires a Ruby and Git installation.

*These scripts require that you are using a default pathogen.vim installation or your Vim plugins are within the directory* 
<code>~/.vim/bundle</code>.

**Installation**

Install directly into the ~/.vim directory.

<code>cd ~/.vim && \
git clone https://github.com/danhoying/vim_plugin_updater_installer.git</code>

**Usage**

Run the script <code>ruby update_list.rb</code>. This creates a text file <code>plugin_list.txt</code> that contains a URL list of the remote repository locations of your Vim plugins. This file is useful as a backup list of all of your plugins and is used by the installation script.

Running <code>bash update_plugins</code> will pull all of your plugin repositories from Github. This script also updates the <code>plugin_list.txt</code> file automatically.

To install your Vim plugins, run <code>bash install_plugins</code>.  This will create the <code>~/.vim/bundle</code> directory if it doesn't already exist.