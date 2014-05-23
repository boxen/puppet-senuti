require 'spec_helper'

describe 'senuti' do
  describe 'default' do
    it do
      should contain_package('Senuti').with({
        :provider => 'compressed_app',
        :source   => 'https://www.fadingred.com/files/senuti/senuti_1.2.9.zip',
      })
    end
  end

  describe 'specified default version' do
    let (:params) {{:version => '1.2.9'}}
    it do
      should contain_package('Senuti').with({
        :provider => 'compressed_app',
        :source   => 'https://www.fadingred.com/files/senuti/senuti_1.2.9.zip',
      })
    end
  end

  describe 'specified alternate version' do
    let (:params) {{:version => '1.3.0'}}
    it do
      should contain_package('Senuti').with({
        :provider => 'compressed_app',
        :source   => 'https://www.fadingred.com/files/senuti/senuti_1.3.0.zip',
      })
    end
  end
end
