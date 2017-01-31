# Terraform
[![Build Status](https://travis-ci.org/kavehmz/terraform_dev.svg?branch=master)](https://travis-ci.org/kavehmz/terraform_dev)

# Init

Create an access key for user "init" and setup your [terraform](https://www.terraform.io/intro/getting-started/install.html).

# Strcuture

```text
|-- dev # starting point for dev environemnt. It will use common files in /lib.
|-- lib # common code shared between environemnts will come here. There are called as terraform modules.
|   `-- aws
|-- pager_duty # 3rd party setup
`-- production starting point for production environemnt. It will use common files in /lib.
```