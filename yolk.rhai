import "alacritty" as alacritty;
import "hypr" as hypr;

export let themes = #{
    alacritty: alacritty::themes.catppuccin.macchiato,
    hypr: hypr::themes.catppuccin.macchiato,

};
export let eggs = #{
    alacritty: #{
        targets: #{
            "alacritty.toml": "~/.config/alacritty/alacritty.toml",
            "alacritty_theme.toml": "~/.config/alacritty/alacritty_theme.toml"
        },
        main_file: "alacritty.toml"
    },
    hypr: #{
        targets: #{
            "hyprland.conf": "~/.config/hypr/hyprland.conf",
            "themes/theme.conf": "~/.config/hypr/themes/theme.conf",
            "hypridle.conf": "~/.config/hypr/hypridle.conf",
            "hyprlock.conf": "~/.config/hypr/hyprlock.conf",
            "hyprpaper.conf": "~/.config/hypr/hyprpaper.conf",
            "walls.jpg": "~/.config/hypr/walls.jpg",
        },
        main_file: "hyprland.conf",
    }
};

fn after_equal(new_value) {
    let pattern = "^(\\s*\\w+\\s*=\\s*)([^#\\n]*)([#].*)?$";
    let replacement = "${1}" + new_value + "${3}";
    let text = get_yolk_text();
    regex_replace(pattern, text, replacement)

}



fn after_rgb_equal(new_rgb_value) {
    let pattern = "^(\\s*\\w+\\s*=\\s*rgb\\()([^)]*)(\\).*)$";

    let replacement = "${1}" + new_rgb_value + "${3}";

    let text = get_yolk_text();
    regex_replace(pattern, text, replacement)
}
