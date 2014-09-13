name              'optchef-rbenv'

maintainer        'OptimisDev. Ops.'
maintainer_email  'ops@optimiscorp.com'

description       'Installs/Configures rbenv system wide.'
long_description  'This recipe is a simple wrapper for version/gem configuration.'

version           '2.1.2'

supports          'ubuntu'

depends           'ruby_build'
depends           'rbenv', '~> 0.7.3'
