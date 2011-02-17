import os
import re

home = os.getenv('HOME')
browser = None
text_mode = None

def get_link_handler():
    import os
    import re

    text_mode = True
    browser   = "links \"%u\""

    if os.getenv("CANTO_graphical"):
        if os.getenv("CANTO_graphical") == 'yes':
            browser = "firefox \"%u\""
            text_mode = False
    else: 
        try:
            f = open('%s/.config/surfraw/conf' % home)
        except:
            return (browser, text_mode)
        else:
            for line in f.read():
                if re.search('SURFRAW_graphical', line):
                    if re.search('yes', line): 
                        text_mode = False
                        browser = "firefox \"%u\""
                    break
    return (browser, text_mode)

add("http://kerneltrap.org/node/feed")
add("http://codezen.org/canto/feeds/latest")
add("http://hackerne.ws/rss")
add("http://undeadly.org/cgi?action=rss")
add("http://undeadly.org/cgi?action=errata")

(browser, text_mode) = get_link_handler()
link_handler(browser, text=text_mode)
