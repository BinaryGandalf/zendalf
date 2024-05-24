# Zendalf

A lightweight fork of the Emacs [zenburn-theme](https://github.com/bbatsov/zenburn-emacs) with intended support for graphical frames only.

The theme is not available on any package repositories. Therefore install by either manually downloading the theme file or use one of Emacs built-in package VC functions.

```
;; like e.g. use-package
(use-package zendalf-theme
  :vc (:url "https://github.com/NumericalGandalf/zendalf.git")
  :config (load-theme 'zendalf t))
```

## Preview

![zendalf-theme](https://i.postimg.cc/tCxwx1MD/zendalf-theme.png)
