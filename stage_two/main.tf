resource "null_resource" "local"{
    provisioner "local-exec" {
      command = "vagrant up --provision"

    }
}