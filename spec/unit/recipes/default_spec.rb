require 'spec_helper'

describe 'test::default on Ubuntu 16.04' do
  cached(:chef_run) do
    ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '16.04').converge(described_recipe)
  end

  it 'converges successfully' do
    expect { :chef_run }.to_not raise_error
  end
end