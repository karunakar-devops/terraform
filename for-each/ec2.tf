resource "aws_instance" "expense" {
    for_each = var.instance_names # each.key and each.value
    ami = data.aws_ami.ami-info.id
    instance_type = each.key == "db" ? each.value : each.value
    vpc_security_group_ids = ["sg-055ca458a0ec09ee1"]
  


tags = {
    Name = each.key
    module = each.key
}

}
