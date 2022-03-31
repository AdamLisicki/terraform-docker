# Terraform module for running dockerized application

Datails about this module are located in directory <i>terraform-module</i> in [<i>README.md</i>](terraform-module/README.md) file. 

## How to run this module

In directory <i>terraform-docker</i> execute the following commands:

1. <code>sudo terraform init</code>
2. <code>sudo terraform plan</code>
3. <code>sudo terraform apply</code> Note: If you want to change default value of variables type instead: <code>sudo terraform apply <b>-var="var1=value1" -             var="var2=value2"<b></code>
  
## Testing
  
Before testing you have to type this command <code>sudo chmod 666 /var/run/docker.sock</code> to grant the appropriate permissions otherwise the tests will fail.
  
To run the tests you need to go to <i>/testing/test</i> and type command <code>go test -v nginx_test.go</code>.

## Makefile
  
The Makefile is located in the webapp folder. 
  
The Makefile builds and publishes the image to the Docker Hub.
