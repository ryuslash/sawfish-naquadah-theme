(define naquadah:backgrounds '("#2e3436" "#0c191c"))
(define naquadah:rbackgrounds (reverse naquadah:backgrounds))
(define naquadah:foregrounds '("#555753" "#eeeeec"))

(define naquadah:transient-frame
  `(;; title border
    ((background . ,naquadah:rbackgrounds)
     (left-edge . -1)
     (right-edge . -1)
     (bottom-edge . -20)
     (height . 20))

    ;; close button
    ((background . ,naquadah:backgrounds)
     (foreground . ,naquadah:foregrounds)
     (right-edge . 0)
     (bottom-edge . -19)
     (width . 17)
     (height . 18)
     (text . "x")
     (x-justify . center)
     (y-justify . center)
     (class . close-button))

    ;; title
    ((background . ,naquadah:backgrounds)
     (foreground . "#f57900")
     (left-edge . 0)
     (right-edge . 16)
     (bottom-edge . -19)
     (height . 18)
     (text . ,window-name)
     (y-justify . center)
     (x-justify . 6)
     (class . title))))

;; frame layout
(define naquadah:frame
  `(;; border
    ((background . ,naquadah:backgrounds)
     (left-edge . -1)
     (right-edge . -1)
     (top-edge . -1)
     (bottom-edge . 0)
     (below-client . t)
     (class . left-border))

    ,@naquadah:transient-frame))

(add-frame-style 'naquadah
                 (lambda (w type)
                   (case type
                     ((default) naquadah:frame)
                     ((transient) naquadah:frame)
                     ((shaped) naquadah:transient-frame)
                     ((shaped-transient) naquadah:transient-frame))))
