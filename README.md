# Cheap/Free Wordpress Hosting

### Install

- Ansible
- Terraform

### Config

- Setup GCP Account for Free Trial / Always Free tier
- Setup GCLOUD SDK
- Create a Storage Bucket
- Change file `ansible/group_vars/all` - Change `server_hostname: NEEDS_TO_BE_SET` to use the static ip you have setup - Change `gcloud_bucket_name: NEEDS_TO_BE_SET` to use the bucket name you have created
- Change file `terraform/main` - Change `nat_ip = "NEEDS_TO_BE_SET"` to use the static ip you have setup

### Running

- cd to the `terraform` directory
- run `terraform init`
- run `terraform apply`

## Warning - USE AT OWN RISK!!!

- This could possibly incur charges, at this moment if you are apart of the always free tier and up to date this should not incur charges.
- Checkout the [GCP ALWAYS FREE TIER FAQ](https://cloud.google.com/free/docs/always-free-usage-limits)
