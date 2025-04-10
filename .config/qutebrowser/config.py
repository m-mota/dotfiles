import catppuccin

config.load_autoconfig(True)
config.set('colors.webpage.darkmode.enabled', True)
catppuccin.setup(c, 'mocha', True)

c.fonts.hints = f'10pt Iosevka Nerd Font Mono'
c.fonts.statusbar = f'10pt Iosevka Nerd Font Mono'
c.fonts.downloads = f'10pt Iosevka Nerd Font Mono'
c.fonts.contextmenu = f'10pt Iosevka Nerd Font Mono'
c.fonts.tabs.selected = f'10pt Iosevka Nerd Font Mono'
c.fonts.tabs.unselected = f'10pt Iosevka Nerd Font Mono'
c.fonts.completion.entry = f'10pt Iosevka Nerd Font Mono'
c.fonts.completion.category = f'10pt Iosevka Nerd Font Mono'

config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
config.set('content.cookies.accept', 'all', 'devtools://*')

config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://accounts.google.com/*')

config.set('content.images', True, 'chrome-devtools://*')
config.set('content.images', True, 'devtools://*')

config.set('content.javascript.enabled', True, 'chrome-devtools://*')
config.set('content.javascript.enabled', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')

config.set('content.local_content_can_access_remote_urls', True, 'file:///home/hysan/.local/share/qutebrowser/userscripts/*')
config.set('content.local_content_can_access_file_urls', False, 'file:///home/hysan/.local/share/qutebrowser/userscripts/*')
