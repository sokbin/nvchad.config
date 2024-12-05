return{
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sorting = {
        priority_weight = 2,
        comparators = {
          cmp.config.compare.locality,
          cmp.config.compare.recently_used,
          cmp.config.compare.offset,
          cmp.config.compare.order,
          function(entry1, entry2)
            local kind1 = entry1:get_kind()
            local kind2 = entry2:get_kind()
            if kind1 == cmp.lsp.CompletionItemKind.Snippet then
              return true
            elseif kind2 == cmp.lsp.CompletionItemKind.Snippet then
              return false
            end
          end,
          cmp.config.compare.sort_text,
          cmp.config.compare.length,
          cmp.config.compare.exact,
        },
      }
    end,
  },
}
