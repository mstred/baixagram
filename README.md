baixagram
=========

_...a tiny photo downloader for Instagram_

That was such a funny idea that came up when I was talking with [@vanessasmaartin] (https://twitter.com/vanessasmaartin) at work these days. She's an addicted user of the [popular app] (https://instagram.com) for taking fancy filtered pics and posting to her favorite social media.

It was made up based on the simple task of downloading a photo for a link on a web browser. Instagram's web app doesn't offer a easy way to download, leaving the user to pick the image URL on the webpage source (and that's an awful and tedious work, considering a lot of photos).

I didn't search for a solution and I think that maybe something like this should already exists. So I wanted to make one, just for fun.

Initially, the app is provided on a Ruby script (needs Nokogiri), which works just like this:

```bash
$ ruby baixagram.rb <instagram_photo_link_1> <instagram_photo_link_2>
```

But I think of doing a web app for truly easing the use.

*PS.: this is a open source software under construction. It may have a lot of bugs and must be improved.*
