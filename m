Subject: Selecting libraries for the SDK
To: poky@lists.yoctoproject.org
From: macphyter@gmail.com
X-Originating-Location: South Jordan, Utah, US (98.202.75.79)
X-Originating-Platform: Windows Firefox 72
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 17 Jan 2020 00:27:27 -0800
Message-ID: <3UNh.1579249647788730408.uBJb@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pweucudmqDVV6gm69pg8"

--pweucudmqDVV6gm69pg8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I've recently been thrust into an intense project with an insane deadline (=
shocking, I know) and I've had to quickly get up to speed building images w=
ith Yocto.=C2=A0 I've managed to overcome most issues with lots of trial an=
d error... and googling, and now I'm reasonably confident in my abilities, =
but there's one thing I've been unable to figure out.

I have one or two developers that need to build outside of the yocto image=
 build, so it makes sense to create an SDK for them to use.=C2=A0 When I cr=
eate the SDK, it appears to be missing many libraries that exist in my full=
 image build.=C2=A0 These are mostly dev libraries that are needed to compi=
le apps for the system.=C2=A0 Even common libraries like glib-2.0 are missi=
ng. I've struggled to figure out how the Yocto build selects these when pop=
ulating the SKD, and I can't seem to figure it out.

Incidentally, the platform I'm building for is very similar to the Qualcom=
m RB3 robotics dev kit from Thundercomm, and I have a copy of their SDK whi=
ch contains most of the libraries I need.=C2=A0 I can use their SDK to buil=
d much of what I need, but there are a few libraries missing from theirs as=
 well.=C2=A0 I suspect the Qualcomm image build process is a little more co=
mplicated than most other platforms, which would explain why I can't seem t=
o find the help I need on Google.

The bottom line, I just need someone to point me in the right direction re=
garding the SDK population, and how I can select libraries from my existing=
 build to be included in the SDK.=C2=A0 Thanks.

--pweucudmqDVV6gm69pg8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I've recently been thrust into an intense project with an insane deadline (=
shocking, I know) and I've had to quickly get up to speed building images w=
ith Yocto.&nbsp; I've managed to overcome most issues with lots of trial an=
d error... and googling, and now I'm reasonably confident in my abilities, =
but there's one thing I've been unable to figure out.<br /><br />I have one=
 or two developers that need to build outside of the yocto image build, so =
it makes sense to create an SDK for them to use.&nbsp; When I create the SD=
K, it appears to be missing many libraries that exist in my full image buil=
d.&nbsp; These are mostly dev libraries that are needed to compile apps for=
 the system.&nbsp; Even common libraries like glib-2.0 are missing. I've st=
ruggled to figure out how the Yocto build selects these when populating the=
 SKD, and I can't seem to figure it out.<br /><br />Incidentally, the platf=
orm I'm building for is very similar to the Qualcomm RB3 robotics dev kit f=
rom Thundercomm, and I have a copy of their SDK which contains most of the =
libraries I need.&nbsp; I can use their SDK to build much of what I need, b=
ut there are a few libraries missing from theirs as well.&nbsp; I suspect t=
he Qualcomm image build process is a little more complicated than most othe=
r platforms, which would explain why I can't seem to find the help I need o=
n Google.<br /><br />The bottom line, I just need someone to point me in th=
e right direction regarding the SDK population, and how I can select librar=
ies from my existing build to be included in the SDK.&nbsp; Thanks.

--pweucudmqDVV6gm69pg8--
