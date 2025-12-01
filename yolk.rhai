import "alacritty" as alacritty;
import "hypr" as hypr;
import "wofi" as wofi;
import "helix" as helix;

export let themes = #{
    alacritty: alacritty::themes.catppuccin.macchiato,
    hypr: hypr::themes.catppuccin.macchiato,
    wofi: wofi::themes.catppuccin.macchiato,
    helix: helix::themes.catppuccin.macchiato,

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
        main_file: "themes/theme.conf",
    },
    wofi: #{
        targets: #{
            "config": "~/.config/wofi/config",
            "style.css": "~/.config/wofi/style.css",
        },
        main_file: "config"
    },
    helix: #{
        targets: #{
            "config.toml": "~/.config/helix/config.toml",
            "themes/themes.toml": "~/.config/helix/themes/themes.toml"
        },
        main_file: "config.toml"
    }
};
