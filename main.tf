module "file_generator" {
  # Richiama il modulo finale via Git
  source = "git::https://github.com/danielescattaglia-byte/tf-module.git?ref=1.0.0"

  # Costruisce il percorso e il contenuto passandoli al modulo finale
  file_path = "${path.root}/generated_${var.app_name}_v2.txt"
  content   = "Log Generato per: ${var.app_name}\nMessaggio: ${var.message}"
}
