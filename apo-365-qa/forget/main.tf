removed {
  from = terraform_data.gone

  lifecycle {
    destroy = false
  }
}
