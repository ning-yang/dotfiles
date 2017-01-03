## Apps

- Markdown Editor: [Typora](http://www.typora.io/)
- Window Management: [spectacle](https://www.spectacleapp.com/)
- Terminal: [iterm2](https://www.iterm2.com)
- brew install tree, the_silver_searcher
- Sublime: launch from terminal - ```ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl```

## Config
- sublime
```json
{
	"always_show_minimap_viewport": true,
	"bold_folder_labels": true,
	"color_scheme": "Packages/Material Theme/schemes/Material-Theme.tmTheme",
	"font_size": 12,
	"ignored_packages":
	[
		"Vintage"
	],
	"indent_guide_options":
	[
		"draw_normal",
		"draw_active"
	],
	"line_padding_bottom": 2,
	"line_padding_top": 2,
	"material_theme_big_fileicons": true,
	"material_theme_bold_tab": true,
	"material_theme_bullet_tree_indicator": true,
	"material_theme_compact_sidebar": true,
	"material_theme_contrast_mode": true,
	"material_theme_disable_folder_animation": true,
	"material_theme_panel_separator": true,
	"material_theme_small_statusbar": true,
	"material_theme_tabs_autowidth": true,
	"material_theme_tabs_separator": true,
	"overlay_scroll_bars": "enabled",
	"theme": "Material-Theme.sublime-theme",
	"translate_tabs_to_spaces": true,
	"word_wrap": true
}

Package Control.sublime-settings:

{
        "bootstrapped": true,
        "in_process_packages":
        [
        ],
        "installed_packages":
        [
                "Anaconda",
                "Colorsublime",
                "Compare Side-By-Side",
                "FileDiffs",
                "FTPSync",
                "Markdown Preview",
                "MarkdownEditing",
                "Material Theme",
                "Package Control",
                "Pretty JSON",
                "SideBarEnhancements",
                "Virtualenv"
        ]
}
```

sublime.package.Anacoda.python.settings:
```
{
    // editor options
    "draw_white_space": "all",

    // tabs and whitespace
    "auto_indent": true,
    // "rulers": [79],
    "smart_indent": true,
    "tab_size": 4,
    "trim_automatic_white_space": true,
    "use_tab_stops": true,
    // "word_wrap": true,
    // "wrap_width": 120,
    "translateTabsToSpaces": true
}
```
