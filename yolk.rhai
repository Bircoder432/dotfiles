import "alacritty" as alacritty;

export let themes = #{
    alacritty: alacritty::themes.catppuccin.macchiato,
};
export let eggs = #{
    alacritty: #{
        targets: #{
            "alacritty.toml": "~/.config/alacritty/alacritty.toml",
            "alacritty_theme.toml": "~/.config/alacritty/alacritty_theme.toml"
        },
        main_file: "alacritty.toml"
    }
};
