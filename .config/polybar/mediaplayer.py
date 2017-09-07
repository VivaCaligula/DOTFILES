#!/usr/bin/python
# https://github.com/Chaosteil/dotfiles/tree/master/polybar/.config/polybar

import dbus


def main():
    try:
        session_bus = dbus.SessionBus()
        spotify_bus = session_bus.get_object("org.mpris.MediaPlayer2.spotify",
                                             "/org/mpris/MediaPlayer2")
        spotify_properties = dbus.Interface(spotify_bus,
                                            "org.freedesktop.DBus.Properties")
        metadata = spotify_properties.Get("org.mpris.MediaPlayer2.Player",
                                          "Metadata")

        print("{} - {}".format(
            metadata["xesam:artist"][0],
            metadata["xesam:title"]))
    except:
        print("")


if __name__ == "__main__":
    main()
