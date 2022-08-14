local server = require("denco.lsp_server").setup_server("omnisharp", { "dotnet", "C:/omnisharp/OmniSharp.dll" })

server.document_config.default_config.analyze_open_documents_only = true
