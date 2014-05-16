require 'spec_helper'

describe package('apache2-mpm-prefork') do
  it { should be_installed }
end

describe service('apache2') do
  it { should be_enabled   }
  it { should be_running   }
end

describe port(80) do
  it { should be_listening }
end

describe file('/etc/apache2/sites-available/example') do
  it { should be_file }
  its(:content) { should match /ServerName localhost/ }
end
