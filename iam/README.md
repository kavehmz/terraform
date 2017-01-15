# IAM

IAM is an account level change.

```bash
$ cd iam
$ terraform plan
# If it looks OK
$ terraform apply
```

It is better to set it as remote state.

```bash
$ cd iam
$ terraform remote config \
    -backend=s3 \
    -backend-config="bucket=$(terraform output remote_iam_state_bucket)" \
    -backend-config="key=iam/terraform.tfstate" \
    -backend-config="region=us-east-1"
```

After this point remote pull/push will sync the state with s3 remote bucket and plan/apply/.. commands will automatically use the remote state you setup.
