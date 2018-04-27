# frozen_string_literal: true

chef_version '>= 12.6.0'
name 'sprout-base'
maintainer 'Pivotal Labs'
maintainer_email 'sprout-maintainers@googlegroups.com'
issues_url 'https://github.com/pivotal-sprout/sprout-base/issues'
source_url 'https://github.com/pivotal-sprout/sprout-base'
license 'MIT'
description 'A handful of things every Sprout recipe needs'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.6.0'
supports 'mac_os_x'
depends 'homebrew'
