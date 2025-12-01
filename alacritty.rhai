import "palettes" as palettes;



export let themes = #{
    catppuccin: #{
        macchiato: #{
            background: palettes::palettes.catppuccin.macchiato.base,
            foreground: palettes::palettes.catppuccin.macchiato.text,
            dim_foreground: palettes::palettes.catppuccin.macchiato.overlay1,
            bright_foreground: palettes::palettes.catppuccin.macchiato.text,

            // [colors.cursor]
            cursor_text: palettes::palettes.catppuccin.macchiato.base,
            cursor_cursor: palettes::palettes.catppuccin.macchiato.rosewater,

            // [colors.vi_mode_cursor]
            vi_mode_text: palettes::palettes.catppuccin.macchiato.base,
            vi_mode_cursor: palettes::palettes.catppuccin.macchiato.lavender,

            // [colors.normal]
            normal_black: palettes::palettes.catppuccin.macchiato.surface1,
            normal_red: palettes::palettes.catppuccin.macchiato.red,
            normal_green: palettes::palettes.catppuccin.macchiato.green,
            normal_yellow: palettes::palettes.catppuccin.macchiato.yellow,
            normal_blue: palettes::palettes.catppuccin.macchiato.blue,
            normal_magenta: palettes::palettes.catppuccin.macchiato.pink,
            normal_cyan: palettes::palettes.catppuccin.macchiato.teal,
            normal_white: palettes::palettes.catppuccin.macchiato.subtext1,

            // [colors.bright]
            bright_black: palettes::palettes.catppuccin.macchiato.surface2,
            bright_red: palettes::palettes.catppuccin.macchiato.red,
            bright_green: palettes::palettes.catppuccin.macchiato.green,
            bright_yellow: palettes::palettes.catppuccin.macchiato.yellow,
            bright_blue: palettes::palettes.catppuccin.macchiato.blue,
            bright_magenta: palettes::palettes.catppuccin.macchiato.pink,
            bright_cyan: palettes::palettes.catppuccin.macchiato.teal,
            bright_white: palettes::palettes.catppuccin.macchiato.subtext0,
        }
    }
};
