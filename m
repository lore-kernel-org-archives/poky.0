Subject: Line 4 of warrior branch poky/meta/recipes-connectivity/bluez5/bluez5/init (. /etc/init.d/functions) causing "No such file or directory" error
To: poky@lists.yoctoproject.org
From: "Christopher McClellan" <christopher.mcclellan95@gmail.com>
X-Originating-Location: Valencia, California, US (198.72.131.105)
X-Originating-Platform: Windows Firefox 76
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 21 May 2020 12:15:49 -0700
Message-ID: <o4s2.1590088549318109484.o2Sr@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="l7cJZ5IJ22ae9xfHJiHr"

--l7cJZ5IJ22ae9xfHJiHr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I recently migrated a project from the sumo branch to the warrior branch an=
d the following piece of code (poky/meta/recipes-connectivity/bluez5/bluez5=
/init) is giving me a "/etc/init.d/functions: No such file or directory" er=
ror:

>=20
>=20
>=20
> # Source function library
>=20
> . /etc/init.d/functions

I do not use this directory for my starting scripts and removing this line=
 makes my project work normally (sumo branch doesn't have this line). Is th=
ere a way I can accomplish this same effect without directly modifying the =
dependency?

--l7cJZ5IJ22ae9xfHJiHr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I recently migrated a project from the sumo branch to the warrior branch=
 and the following piece of code (poky/meta/recipes-connectivity/bluez5/blu=
ez5/init) is giving me a "/etc/init.d/functions: No such file or directory"=
 error:</p>
<blockquote>
<p># Source function library</p>
. /etc/init.d/functions</blockquote>
I do not use this directory for my starting scripts and removing this line=
 makes my project work normally (sumo branch doesn't have this line). Is th=
ere a way I can accomplish this same effect without directly modifying the =
dependency?

--l7cJZ5IJ22ae9xfHJiHr--
