## TMUX Open File nvim

A plugin that creates a tmux binding to copy the currently selected panes content, filter out anything that isn't a file path, pass the file paths to fzf, then open the file path in your default $EDITOR. Currently, this plugin does not work in copy mode and will still only select the current panes output at the current cursor position (not the position of the cursor in copy mode).

![example](https://github.com/user-attachments/assets/27fb7fc5-1d46-4d42-a109-05a9a3541383)

### Installing

#### TPM

Using TPM, add the following lines to your ~/.tmux.conf:

```bash
set -g @plugin 'Peter-McKinney/tmux-open-file-nvim'
```

Use `prefix + I` to install the plugin which should also source your ~/.tmux.conf but just in case: `prefix + :source ~/.tmux.conf`

Make sure to have your editor environment variable set to neovim:

```bash
export EDITOR='nvim'
```

Please make sure that fzf is installed by following the directions over at: https://github.com/junegunn/fzf


### Usage

#### Capture the output visible in the current pane: 

The default binding uses `o` so `prefix + o` will run the process to find files in the current pane output. A new horizontal pane will be opened to the right of the current pane. The pane visible text will be sent to `fzf -m` multi select mode so that multiple files may be selected and sent to the $EDITOR.

#### Capture the entire history of the current pane:

The default binding uses `O` so `prefix + O` will run the above process for the entire history of the pane.
