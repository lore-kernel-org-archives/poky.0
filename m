Subject: Building core-image-minimal fails
To: poky@lists.yoctoproject.org
From: gnemas@gmail.com
X-Originating-Location: Fairfax, Virginia, US (68.100.253.88)
X-Originating-Platform: Linux Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 07 May 2021 16:08:55 -0700
Message-ID: <xhBQ.1620428935778891624.YkUE@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="AWvnx1AmrUYKxWfpLfVA"

--AWvnx1AmrUYKxWfpLfVA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am new to Yocto. I thought a good way to start would be to try to build a=
 stock image. The "core-image-minimal" recipe seemed loke a good choice. Ho=
wever, it did not go well. The build ends in an error (see below).

Here are the steps I took.

sudo yum install <Centos 7 package list shown in Yocto Reference Manual>

git clone -b hardknott git://git.yoctoproject.org/poky.git
cd poky

# My host is a Centos 7 machine, so I installed the buildtools SDK
scripts/install-buildtools
. buildtools/environment-setup-x86_64-pokysdk-linux

. oe-init-build-env

bitbake core-image-minimal

After a couple of hours, the build terminated with an error:

ERROR: Task (virtual:native:/data/poky/meta/recipes-graphics/mesa/mesa_21.=
0.1.bb:do_compile) failed with exit code '1'

Poking around in tmp I found the file tmp/log/cooker/qemux86-64/console-la=
test.log

This file contained the actual compilation error that caused the build fai=
lure:

mesa-21.0.1/src/gallium/auxiliary/hud/hud_sensors_temp.c:47:10: fatal erro=
r: sensors/sensors.h: No such file or directory

How can I fix this? Should I been choosing a different recipe? I am surpri=
sed that what is supposed to be a minimal bootable image has a 3D graphics =
library (mesa) in it. I am also surprised that a 3D graphics library needs =
access to a sensors library.

Any help appreciated.

Thanks,

Gregg

--AWvnx1AmrUYKxWfpLfVA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I am new to Yocto. I thought a good way to start would be to try to bu=
ild a stock image. The "core-image-minimal" recipe seemed loke a good choic=
e. However, it did not go well. The build ends in an error (see below).</di=
v>
<div>&nbsp;</div>
<div>Here are the steps I took.</div>
<div>&nbsp;</div>
<div><span style=3D"font-family: 'lucida grande';">&nbsp; &nbsp; sudo yum =
install &lt;Centos 7 package list shown in Yocto Reference Manual&gt;</span=
></div>
<div>&nbsp;</div>
<div><span style=3D"font-family: 'lucida grande';">&nbsp; &nbsp; git clone=
 -b hardknott git://git.yoctoproject.org/poky.git</span></div>
<div><span style=3D"font-family: 'lucida grande';">&nbsp; &nbsp; cd poky</=
span></div>
<div><br /><span style=3D"font-family: 'lucida grande';">&nbsp; &nbsp; # M=
y host is a Centos 7 machine, so I installed the buildtools SDK</span></div=
>
<div><span style=3D"font-family: 'lucida grande';">&nbsp; &nbsp; scripts/i=
nstall-buildtools</span></div>
<div><span style=3D"font-family: 'lucida grande';">&nbsp; &nbsp; . buildto=
ols/environment-setup-x86_64-pokysdk-linux</span></div>
<div>&nbsp;</div>
<div><span style=3D"font-family: 'lucida grande';">&nbsp; &nbsp; . oe-init=
-build-env</span></div>
<div>&nbsp;</div>
<div><span style=3D"font-family: 'lucida grande';">&nbsp; &nbsp; bitbake c=
ore-image-minimal</span></div>
<div>&nbsp;</div>
<div>After a couple of hours, the build terminated with an error:</div>
<div>&nbsp;</div>
<div>ERROR: Task (virtual:native:/data/poky/meta/recipes-graphics/mesa/mes=
a_21.0.1.bb:do_compile) failed with exit code '1'</div>
<div>&nbsp;</div>
<div>Poking around in tmp I found the file tmp/log/cooker/qemux86-64/conso=
le-latest.log</div>
<div>&nbsp;</div>
<div>This file contained the actual compilation error that caused the buil=
d failure:</div>
<div>&nbsp;</div>
<div>mesa-21.0.1/src/gallium/auxiliary/hud/hud_sensors_temp.c:47:10: fatal=
 error: sensors/sensors.h: No such file or directory</div>
<div>&nbsp;</div>
<div>How can I fix this? Should I been choosing a different recipe? I am s=
urprised that what is supposed to be a minimal bootable image has a 3D grap=
hics library (mesa) in it. I am also surprised that a 3D graphics library n=
eeds access to a sensors library.</div>
<div><br />Any help appreciated.<br /><br /></div>
<div>Thanks,</div>
<div>&nbsp;</div>
<div>Gregg</div>
<div>&nbsp;</div>

--AWvnx1AmrUYKxWfpLfVA--
