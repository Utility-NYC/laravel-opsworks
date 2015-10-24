node[:deploy].each do |application, deploy|
  script "bootstrap_permissions" do
    interpreter "bash"
    user "root"
    cwd "#{deploy[:deploy_to]}/current/bootstrap"
    code <<-EOH
    chmod -R 777 cache
    EOH
  end
end