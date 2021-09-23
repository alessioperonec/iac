resource "aws_ecrpublic_repository" "ecrpublic" {
  repository_name = "prodalsv1"

  catalog_data {
    about_text        = "Public Images"
    architectures     = ["x86-64"]
    description       = "Description"
    operating_systems = ["Linux"]
    usage_text        = "For Public use only"
  }
}