## Righteous
A righteous dark theme for Emacs, inspired by Acme/Solarized themes.

![Screenshot](./screenshot.jpg)

## Installing

copy `righteous-theme.el` to the `~/.config/emacs/themes` and put the following in your Emacs `init.el`:

```elisp
(add-to-list 'custom-theme-load-path (expand-file-name "~/.config/emacs/themes")
(load-theme 'righteous t)
```

Enjoy ;)
