# Motion detection using Raspberry PI, motion, and Dropbox API

1. `motion` should be installed, you also should give all permissions and be able to run daemon – there is plenty of information in the Web about it.
2. `uploader.rb` takes care of uploading snapshots to Dropbox and *DROPBOX_ACCESS_TOKEN* environment variable should be set. This won't work if you want to use `motion` as a daemon and you should find workarounds by yourself (like hard-code env variables or read them from somewhere in filesystem).
3. `motion.conf` should be placed where it belongs, it's usually `/etc/motion/motion.conf`. My version of config uses a bit more gentle motion detection and picture dumping than default settings in order to avoid 9000 pictures per second (3000px threshold, 1 frame per second) and also improved quality of images (100% of JPEG quality and 1280x720 resolution). Log level is set to DBG so useful information could be obtained. Dropbox uploading is triggered on `on_picture_save` event and you will likely want to change script location to preferred one.

Have fun!

more descriptive info will appear eventually (hope so)
