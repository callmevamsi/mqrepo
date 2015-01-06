package 'unzip' do
action :install
end

script "install_mq_app" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
  wget https://s3.amazonaws.com/vamsi_pc/mq.zip  
  unzip mq.zip
  nohup java -Xmx6g -jar ./mq/com.mqidentity.sff.jar &
  EOH
end
