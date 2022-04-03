(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("exam" "12pt" "answers")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "margin=1in" "a4paper") ("mathdesign" "urw-garamond") ("fontenc" "T1")))
   (TeX-run-style-hooks
    "latex2e"
    "exam"
    "exam12"
    "geometry"
    "mathdesign"
    "fontenc"
    "amsmath"
    "amssymb"
    "amsthm"
    "siunitx"
    "tikz"
    "setspace"
    "cancel"))
 :latex)

