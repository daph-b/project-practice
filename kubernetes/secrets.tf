// API token for IEX cloud
resource "kubernetes_secret" "iex_cred" {
  metadata {
    name = "iex-cred"
    namespace = kubernetes_namespace.dev.metadata[0].name
  }
  data = {
    "token" = var.api_key
  }
} 


