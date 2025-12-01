// helix.rhai
import "palettes" as palettes;

export let themes = #{
    catppuccin: #{
        macchiato: #{
            // Основные акцентные цвета
            color1: palettes::palettes.catppuccin.macchiato.rosewater,
            color2: palettes::palettes.catppuccin.macchiato.flamingo,
            color3: palettes::palettes.catppuccin.macchiato.pink,
            color4: palettes::palettes.catppuccin.macchiato.mauve,
            color5: palettes::palettes.catppuccin.macchiato.red,
            color6: palettes::palettes.catppuccin.macchiato.maroon,
            color7: palettes::palettes.catppuccin.macchiato.peach,
            color8: palettes::palettes.catppuccin.macchiato.yellow,
            color9: palettes::palettes.catppuccin.macchiato.green,
            color10: palettes::palettes.catppuccin.macchiato.teal,
            color11: palettes::palettes.catppuccin.macchiato.sky,
            color12: palettes::palettes.catppuccin.macchiato.sapphire,
            color13: palettes::palettes.catppuccin.macchiato.blue,
            color14: palettes::palettes.catppuccin.macchiato.lavender,

            // Текст
            text: palettes::palettes.catppuccin.macchiato.text,
            text_secondary: palettes::palettes.catppuccin.macchiato.subtext1,
            text_tertiary: palettes::palettes.catppuccin.macchiato.subtext0,

            // Overlay цвета
            overlay1: palettes::palettes.catppuccin.macchiato.overlay2,
            overlay2: palettes::palettes.catppuccin.macchiato.overlay1,
            overlay3: palettes::palettes.catppuccin.macchiato.overlay0,

            // Surface цвета
            surface1: palettes::palettes.catppuccin.macchiato.surface0,
            surface2: palettes::palettes.catppuccin.macchiato.surface1,
            surface3: palettes::palettes.catppuccin.macchiato.surface2,

            // Основные
            background: palettes::palettes.catppuccin.macchiato.base,
            surface: palettes::palettes.catppuccin.macchiato.mantle,
            shadow: palettes::palettes.catppuccin.macchiato.crust,

            // Кастомные цвета для курсоров
            cursorline: "303347",
            cursor_secondary: "b6a6a7",
            cursor_select: "8b91bf",
            cursor_normal: "b6a6a7",
            cursor_insert: "80a57a"
        }
    }
}
