(TeX-add-style-hook
 "pres_quasincompact3d"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "linkcolor=red" "urlcolor=blue")))
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "./figures/nonisotherm_initcond"
    "./figures/jet"
    "beamer"
    "beamer10"
    "graphicx"
    "subcaption"
    "natbib"
    "tikz"
    "pgfplots"
    "nicefrac"
    "epstopdf"
    "booktabs"
    "multimedia")
   (TeX-add-symbols
    '("orderof" 1)
    '("vgrad" 1)
    '("vdiv" 1)
    '("vvect" 1)
    '("Dtrans" 1)
    '("dtrans" 1)
    "quasincompact"
    "incompact"
    "density"
    "velocity"
    "vvelocity"
    "pressure"
    "viscstress"
    "vviscstress"
    "temperature"
    "Reynolds"
    "Prandtl"
    "visc"
    "identity"
    "poissiter"
    "massfrac"
    "Schmidt"
    "diffcoeff"
    "subrule")
   (LaTeX-add-labels
    "fig:grav-driven"
    "fig:scaling"
    "fig:non-iso_init-cond"
    "fig:jet")
   (LaTeX-add-bibliographies
    "/home/paul/Documents/Postdoc.bib"))
 :latex)

