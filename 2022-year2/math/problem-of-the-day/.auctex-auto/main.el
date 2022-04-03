(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("exam" "12pt" "answers")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "margin=1in" "a4paper") ("newtxmath" "cmintegrals" "cmbraces")))
   (TeX-run-style-hooks
    "latex2e"
    "exam"
    "exam12"
    "geometry"
    "newtxmath"
    "ebgaramond-maths"
    "amsmath"
    "amsthm"
    "amssymb"
    "siunitx"
    "tikz"
    "setspace"
    "cancel"))
 :latex)

