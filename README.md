# terraform-google-dataproc

## Usage

```
module "my-dataproc" {
  source = "github.com/bluekiri/terraform-google-dataproc"

  settings = {
    cluster_name = "my-cluster"
    project_id = "my-project-1234"
    
  }
}
```