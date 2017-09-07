#!/usr/bin/env python
# https://github.com/Chaosteil/dotfiles/tree/master/polybar/.config/polybar

import json
import urllib
import urllib.parse
import urllib.request
import os


def main():
    try:
        with open(os.path.join(
                os.path.expanduser("~"),
                '.config',
                'polybar',
                'city')) as f:
            city = f.readline().strip()
        with open(os.path.join(
                os.path.expanduser("~"),
                '.config',
                'polybar',
                'weather.json')) as f:
            api_key = json.load(f)['api_key']
    except:
        return ''

    try:
        data = urllib.parse.urlencode({'q': city, 'appid': api_key})
        weather = json.loads(urllib.request.urlopen(
            'http://api.openweathermap.org/data/2.5/weather?' + data)
            .read())
        desc = weather['weather'][0]['description'].capitalize()
        temp = int(float(weather['main']['temp']) - 272.15)
        return '{}, {}°C'.format(desc, temp)
    except:
        return ''


if __name__ == "__main__":
    print(main())
