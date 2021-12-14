require 'spec_helper'

#パッケージがインストールされているか確認する
describe package('git') do
  it { should be_installed }
end   

#nginxのログが存在しているか確認
describe file('/var/log/nginx') do
  it { should exist }
end


#nginxのテスト
describe package('nginx'), :if => os[:family] == 'amazon' do
 it { should be_installed }
end

#ポート80ポート解放チェック
describe port(80) do
  it { should be_listening }
end
