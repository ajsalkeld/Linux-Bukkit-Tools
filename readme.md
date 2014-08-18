Linux Bukkit Tools is not tested yet!
=====================================
I've written the code, but have not tested it yet. I'll confirm if it works or not later.

Install
----------
Download and unpack

`wget https://github.com/Salkey/Linux-Bukkit-Tools/archive/master.zip`

`unzip master.zip`

Run the installer

`sudo sh install.sh`
`Do you wish to install this program? (y/n) y`
`Do you have a Bukkit install already? `

Type `y` and enter the directory to the sh script which starts the server when prompted if you do. If you don't, type `n`.

`Where would you like Bukkit to be installed? /home/foo/bar`

(enter your prefered directory)
`All done! Start the Bukkit server with bkstart, stop it with bkstop and view the Bukkit shell with bkview. Have fun!`

If the installer isn't broken (shout at me if it is), then this should be it.

Basic Usage
-----------
To start the server, run the command `sudo bkstart`

To view Bukkit's command prompt, enter `sudo bkview`

To stop Bukkit, enter `sudo bkstop`

If you encounter an error, use `sudo bkstop -f` to forcefully terminate Bukkit along with the screen session.

That's it at the moment, more features will be added if asked for/dreampt up.

Also check out [Gormful](http://www.gormful.net/ "Gormful") for more of me, just in HTML format.