require 'spec_helper'

describe 'workstation::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  #
  it 'creates an motd file' do
    expect(file '/etc/motd').to exist
  end
  
  it 'creates an motd file with the correct content' do
    expect(file('/etc/motd').content).to contain /property/i
  end
  
  # describe file('/etc/passwd') do
  #   it { should exist }
  # end

  it 'installs tree' do
    expect(package 'tree').to be_installed
  end

  it 'installs git' do
    expect(package 'git').to be_installed
  end

  it 'installs vim' do
    expect(package 'vim-enhanced').to be_installed
  end
  
  it 'installs emacs' do
    expect(package 'emacs').to be_installed
  end
end
