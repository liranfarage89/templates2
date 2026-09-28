dollar_escape  = "prefix $${SomeVar} suffix"
percent_escape = "%%{if true}yes%%{endif}"
nested         = { key = ["$${Inner}"] }
heredoc        = <<EOT
line $${x}
EOT
