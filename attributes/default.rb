node.default['ruby_build']['upgrade'] = true

ruby_version = '2.2.2'
node.default['rbenv']['rubies'] = [ ruby_version ]
node.default['rbenv']['global'] = ruby_version

node.default['rbenv']['gems'][ruby_version] = [
  { name: 'ohai' },
  { name: 'chef' },
  { name: 'bundler', version: '1.15.1' }
]
