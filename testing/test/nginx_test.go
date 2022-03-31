package test

import (
  "fmt"
  "time"
  http_helper "github.com/gruntwork-io/terratest/modules/http-helper"
  "testing"
  "github.com/gruntwork-io/terratest/modules/terraform"
)

func TestTerraformExample(t *testing.T){

  terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{

    TerraformDir: "../examples/hello_world_nginx",

    Vars: map[string]interface{}{
      "image": "adamlisicki/hello_world_nginx",
      "name": "hello_world",
      "port": 8082,
    },

  })
  
  terraform.InitAndApply(t, terraformOptions)

  defer terraform.Destroy(t, terraformOptions)

  port := terraform.Output(t, terraformOptions, "port")

  url := fmt.Sprintf("http://localhost:%s", port)

  http_helper.HttpGetWithRetry(t, url, nil, 200, "<html>\n<head>\n<title>Hello World!</title>\n</head>\n<body>\n<h1>Hello World!</h1>\n</body>\n</html>", 30, 5*time.Second)
}

