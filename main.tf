module "s3_internal" {
  # Richiama il modulo finale tramite Git
  source = "git::https://github.com/org/terraform-aws-s3.git?ref=v1.0.0"

  # Costruisce il nome del bucket usando le variabili ricevute dal wrapper
  bucket_name = "company-${var.app_name}-${var.environment}-data"
  
  tags = {
    ManagedBy = "Terraform-Wrapper"
    Env       = var.environment
  }
}