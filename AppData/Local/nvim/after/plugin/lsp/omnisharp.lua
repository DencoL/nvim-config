require("denco.lsp_server").setup_server(
    "omnisharp",
    { "dotnet", "C:/omnisharp/OmniSharp.dll" },
    { analyze_open_documents_only = true },
    false)
