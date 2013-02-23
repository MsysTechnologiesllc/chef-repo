include Opscode::Cloudstack::Admin
action :setup do
    response = send_request(new_resource.admin_api_endpoint,
    {
        "command" => "createZone",
        "name" => new_resource.name,
        "networktype" => new_resource.network_type,
        "localstorageenabled" => new_resource.local_storage_enabled,
        "dns1" => new_resource.dns1,
        "dns2" => new_resource.dns2,
        "internaldns1" => new_resource.internal_dns,
        "securitygroupenabled" => new_resource.security_group_enabled,
        "guestcidraddress" => new_resource.guest_cidr_address
    }) 
    
    node.set['zone']['id'] = response['zone']['id']
    node.save unless Chef::Config[:solo]
end

action :enable do
end
