return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      local ls = require("luasnip")

      -- Snippets para matemática LaTeX em Markdown
      ls.add_snippets("markdown", {
        -- Básicos
        ls.parser.parse_snippet({ trig = "im", name = "Math inline" }, "$$1$ $0"),
        ls.parser.parse_snippet({ trig = "dm", name = "Display math" }, "$$\n$1\n$$ $0"),

        -- Operadores
        ls.parser.parse_snippet({ trig = "fr", name = "Fraction" }, "\\frac{$1}{$2} $0"),
        ls.parser.parse_snippet({ trig = "sqrt", name = "Square root" }, "\\sqrt{$1} $0"),
        ls.parser.parse_snippet({ trig = "nrt", name = "Nth root" }, "\\sqrt[$1]{$2} $0"),
        ls.parser.parse_snippet({ trig = "sum", name = "Summation" }, "\\sum_{$1}^{$2} $0"),
        ls.parser.parse_snippet({ trig = "int", name = "Integral" }, "\\int_{$1}^{$2} $0"),
        ls.parser.parse_snippet({ trig = "oint", name = "Contour integral" }, "\\oint $0"),
        ls.parser.parse_snippet({ trig = "lim", name = "Limit" }, "\\lim_{$1 \\to $2} $0"),
        ls.parser.parse_snippet({ trig = "prod", name = "Product" }, "\\prod_{$1}^{$2} $0"),
        ls.parser.parse_snippet({ trig = "pm", name = "Plus minus" }, "\\pm $0"),
        ls.parser.parse_snippet({ trig = "mp", name = "Minus plus" }, "\\mp $0"),

        -- Setas
        ls.parser.parse_snippet({ trig = "->", name = "Right arrow" }, "\\to $0"),
        ls.parser.parse_snippet({ trig = "=>", name = "Implies" }, "\\implies $0"),
        ls.parser.parse_snippet({ trig = "<=>", name = "Iff" }, "\\iff $0"),
        ls.parser.parse_snippet({ trig = "|->", name = "Maps to" }, "\\mapsto $0"),
        ls.parser.parse_snippet({ trig = "<-", name = "Left arrow" }, "\\leftarrow $0"),
        ls.parser.parse_snippet({ trig = "->>", name = "Two right arrows" }, "\\rightarrowtail $0"),

        -- Gregos
        ls.parser.parse_snippet({ trig = "alpha", name = "Alpha" }, "\\alpha $0"),
        ls.parser.parse_snippet({ trig = "beta", name = "Beta" }, "\\beta $0"),
        ls.parser.parse_snippet({ trig = "gamma", name = "Gamma" }, "\\gamma $0"),
        ls.parser.parse_snippet({ trig = "delta", name = "Delta" }, "\\delta $0"),
        ls.parser.parse_snippet({ trig = "theta", name = "Theta" }, "\\theta $0"),

        -- Matrizes/Vetores
        ls.parser.parse_snippet({ trig = "mat2", name = "2x2 Matrix" },
          "\\begin{pmatrix}\n$1 & $2 \\\\\n$3 & $4\n\\end{pmatrix} $0"),
        ls.parser.parse_snippet({ trig = "mat3", name = "3x3 Matrix" },
          "\\begin{pmatrix}\n$1 & $2 & $3 \\\\\n$4 & $5 & $6 \\\\\n$7 & $8 & $9\n\\end{pmatrix} $0"),
        ls.parser.parse_snippet({ trig = "vec", name = "Vector" }, "\\vec{$1} $0"),

        -- Comparadores
        ls.parser.parse_snippet({ trig = "==", name = "Equals" }, "= $0"),
        ls.parser.parse_snippet({ trig = "!=", name = "Not equal" }, "\\neq $0"),
        ls.parser.parse_snippet({ trig = "===", name = "Identical" }, "\\equiv $0"),
        ls.parser.parse_snippet({ trig = "<=", name = "Less or equal" }, "\\leq $0"),
        ls.parser.parse_snippet({ trig = ">=", name = "Greater or equal" }, "\\geq $0"),
        ls.parser.parse_snippet({ trig = "<<", name = "Much less" }, "\\ll $0"),
        ls.parser.parse_snippet({ trig = ">>", name = "Much greater" }, "\\gg $0"),

        -- Especiais
        ls.parser.parse_snippet({ trig = "inf", name = "Infinity" }, "\\infty $0"),
        ls.parser.parse_snippet({ trig = "partial", name = "Partial derivative" }, "\\partial $0"),
        ls.parser.parse_snippet({ trig = "nabla", name = "Nabla" }, "\\nabla $0"),

        ls.parser.parse_snippet({ trig = "bbN", name = "Natural numbers" }, "\\mathbb{N} $0"),
        ls.parser.parse_snippet({ trig = "bbZ", name = "Integers" }, "\\mathbb{Z} $0"),
        ls.parser.parse_snippet({ trig = "bbQ", name = "Rationals" }, "\\mathbb{Q} $0"),
        ls.parser.parse_snippet({ trig = "bbR", name = "Reals" }, "\\mathbb{R} $0"),
        ls.parser.parse_snippet({ trig = "bbC", name = "Complex" }, "\\mathbb{C} $0"),
        ls.parser.parse_snippet({ trig = "bbA", name = "Custom bbA" }, "\\mathbb{A} $0"),
        ls.parser.parse_snippet({ trig = "bbB", name = "Custom bbB" }, "\\mathbb{B} $0"),

        -- Outros estilos de fonte matemática
        ls.parser.parse_snippet({ trig = "calA", name = "Calligraphic A" }, "\\mathcal{A} $0"),
        ls.parser.parse_snippet({ trig = "calB", name = "Calligraphic B" }, "\\mathcal{B} $0"),
        ls.parser.parse_snippet({ trig = "scrA", name = "Script A" }, "\\mathscr{A} $0"),

        -- Símbolos de conjuntos
        ls.parser.parse_snippet({ trig = "empty", name = "Empty set" }, "\\varnothing $0"),
        ls.parser.parse_snippet({ trig = "in", name = "Element of" }, "\\in $0"),
        ls.parser.parse_snippet({ trig = "notin", name = "Not in" }, "\\notin $0"),
        ls.parser.parse_snippet({ trig = "subset", name = "Subset" }, "\\subset $0"),
        ls.parser.parse_snippet({ trig = "subseteq", name = "Subseteq" }, "\\subseteq $0"),


        -- Ambientes
        ls.parser.parse_snippet({ trig = "align", name = "Align environment" }, "\\begin{align*}\n$1\n\\end{align*} $0")
      })
    end,
  },
}
