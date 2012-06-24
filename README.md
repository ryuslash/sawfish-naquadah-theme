# Naquadah theme for sawfish

This is an adaptation of Julien Danjou's
[Naquadah](http://git.naquadah.org/?p=naquadah-theme.git;a=summary)
theme.

## Usage

In order to use this theme, put it into one of the directories in
your `theme-load-path` in its own folder. For example:

    ~/.sawfish/themes/naquadah

And then, in your `~/.sawfish/rc` file you set it as the default frame
style:

    (setq default-frame-style 'naquadah)

Or you use any other method of your choosing, such as the customize
interface.

## Features

  - Very lightweight, doesn't use any images.
  - Shows the title bar at the bottom of the windows.
  - Very small and simple, easy to see what's going on.

## Possible caveats

  - Very simplistic, doesn't have minimize, maximize or menu buttons
    in the title bar, just the title and a close button.
  - Shows the title bar at the bottom of the windows.
