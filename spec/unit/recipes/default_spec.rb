require 'chefspec'
require 'chefspec/berkshelf'

describe 'optchef-rbenv::default' do
  let(:chef_run) do
    ChefSpec::Runner.new do |node|
      node.set['rbenv']['install_pkgs'] = [ 'git-core', 'grep' ]
    end.converge described_recipe
  end

  it 'should include the ruby build recipe' do
    expect(chef_run).to include_recipe 'ruby_build'
  end

  it 'should perform a system wide rbenv install' do
    expect(chef_run).to include_recipe 'rbenv::system'
  end
end
