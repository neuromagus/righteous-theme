## Righteous
A righteous dark theme for Emacs, inspired by Acme/Solarized themes.

### Emacs
![Screenshot](./screenshot-emacs.jpg)

## Installing

Copy `righteous-theme.el` to the `~/.config/emacs/themes` and add in `init.el`:

```elisp
(add-to-list 'custom-theme-load-path "~/.config/emacs/themes")
(load-theme 'righteous t)
```

## Add a minimal theme for Joe (jmacs) editor

copy `joe/righteous.jcf` to the `~/.joe/colors/` and add in `~/.jmacrc`:

```bash
-colors righteous
```

### Joe (jmacs)
![Screenshot](./screenshot-joe.jpg)

Enjoy ;)
