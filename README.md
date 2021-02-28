# README

This project is for :
>Kaisen Linux | Documentation


**This project generates static html files in `doc` folder from markdown files in `md` directory**.
  
- `priv/assets/` directory contains css and kaisen-logo jpg.


## Requirements to build the documentation

- git
- erlang
- elixir

You can use the following script to install those tools via `asdf` manager : 

```bash
# you must have a sudo user
chmod +x install-requirements.sh && ./install-requirements.sh
```

```bash
# then restart your shell and enter the following command to install erlang and elixir via asdf
asdf plugin add erlang
asdf plugin add elixir
asdf install erlang latest
asdf install elixir latest
# asdf global elixir 1.11.3-otp-23
# asdg global erlang 23.2.5 
```

## How to build html documentation

- Open a terminal and enter : `mix docs`
- then run :

```bash
firefox doc/documentation.html`
```

## How to edit documentation

- Edit a `.md`file in `\md` directory.
- Save
- type in the terminal at the root dir of this project: `mix docs`
- `html doc` is generated in `doc` folder

## How to add a new file to the documentation

- Create a markdown file in `md\[category]` folder.
- There is 5 `[category]` folders:
    - infos
    - faq
    - start
    - tools
    - tutorials
- Edit your text with `markdown` syntax [More info](https://guides.github.com/features/mastering-markdown/).
- Save your .md file.
- Add an entry for your file in `mix.exs` in the `extras` section at the end like:  
```bash
"md/[category]/[name-of-your-file].md": [ title: "Title your want in the menu"]
```
- save and run `mix docs`
- html file are updated in `doc` folder. Copy to your webfolder.

- index is called documentation.md in md directory



## version

- started 13022021  



