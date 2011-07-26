Return-Path: <cahoshing@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2467A4C801DA
	for <poky@yoctoproject.org>; Tue, 26 Jul 2011 09:45:09 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyi20 with SMTP id 20so883269iyi.35
	for <poky@yoctoproject.org>; Tue, 26 Jul 2011 07:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=iXFFm4X4fewMVml11hvla6wOk9sgIhak1QHsF1mAFN4=;
	b=ITCGxPhIS2Ae+J8DgvmRRUNOh08AaCpExXdKyZpjS4t/yzI0R2vOXKeZ6AToQYf9Es
	zN+48A60EKo4OCK2UnUztjh90tGImc60w0raCH5tYfmIhhBPKpv3YQvskPo1WgqbIL40
	MWFhJpnOtL7hIlrcmzuHfHnQtRvRRA8i476uo=
MIME-Version: 1.0
Received: by 10.231.53.81 with SMTP id l17mr5850723ibg.166.1311691506987; Tue,
	26 Jul 2011 07:45:06 -0700 (PDT)
Received: by 10.231.114.97 with HTTP; Tue, 26 Jul 2011 07:45:06 -0700 (PDT)
Date: Tue, 26 Jul 2011 20:15:06 +0530
Message-ID: <CAMTw45D1+q6RU4ohtd1pQecpj6ti3KxyfjZGXb-06Tq_2X8D8Q@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: Error in Python modules dependency for UFW package
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Jul 2011 14:45:09 -0000
Content-Type: multipart/alternative; boundary=00221532c8fc5431f904a8f9fa87

--00221532c8fc5431f904a8f9fa87
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am trying to pull UFW package in poky for sandybrige machine.
I have written a recipe for it and also it is building successfully.
But when I run the binary ufw (after installing the rootfs) I get error
related to python Modules.
(Adding to this I have added python in depends in ufw recipe.)
Error  getting in python modules are for : getttext ,locale,codecs,encodings

The error is follows :
      ImportError: No module named gettext

(same for the said other files)

These files come from python-codecs pacakge which is described in
 recipe-devtools/python/python-2.6-manifest.inc

I have tried including python-codecs in my image recipe as below :
IMAGE_INSTALL = "... python python-codecs ..."
But I get error in building do_rootfs as follows  :
Collected errors:
|  * satisfy_dependencies_for: Cannot satisfy the following dependencies for
python-codecs:
|  * python-lang *
|  * opkg_install_cmd: Cannot install package python-codecs.

After this I tried to include those files in python-core package itself by
editing  python_2.6.6.bb
(I included following line)
FILES_${PN}-core += "${libdir}/python${PYTHON_MAJMIN}/*"
from above line python-core should include all the files in my rootfs .But
still I am not getting the above python-codecs files in it.

I have checked the source for python
i.ebuild/tmp/work/atom-poky-linux/python-2.6.6-nk1.1/image/usr/lib/python2.6
folder the python-codecs files are present in it , and also after
installing rootfs I am not getting these files so I checked in
build/tmp/work/atom-poky-linux/python-2.6.6-nk1.1/packages-split/python-core/usr/lib/python2.6
,here these files are not present ( may be so my  ufw binary is not working
)

So please can you guide me where I am getting wrong or am I missing
something.

Regards
Chinmaya

--00221532c8fc5431f904a8f9fa87
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am trying to pull UFW package in =
poky for sandybrige machine.</div><div>I have written a recipe for it and a=
lso it is building successfully.</div><div>But when I run the binary ufw (a=
fter installing the rootfs) I get error related to python Modules.</div>
<div>(Adding to this I have added python in depends in ufw recipe.)=A0</div=
><div>Error =A0getting in python modules are for : getttext ,locale,codecs,=
encodings =A0</div><div>The error is follows :=A0</div><div>=A0 =A0 =A0 Imp=
ortError: No module named gettext=A0</div>
<div><br></div><div>(same for the said other files)</div><div><br></div><di=
v>These files come from python-codecs pacakge which is described in =A0reci=
pe-devtools/python/python-2.6-manifest.inc=A0</div><div><br></div><div>I ha=
ve tried including python-codecs in my image recipe as below :</div>
<div>IMAGE_INSTALL =3D &quot;... python python-codecs ...&quot;=A0</div><di=
v>But I get error in building do_rootfs as follows =A0:</div><div>Collected=
 errors:</div><div><div>| =A0* satisfy_dependencies_for: Cannot satisfy the=
 following dependencies for python-codecs:</div>
<div>| =A0* <span class=3D"Apple-tab-span" style=3D"white-space:pre">	</spa=
n>python-lang *</div><div>| =A0* opkg_install_cmd: Cannot install package p=
ython-codecs.</div></div><div><br></div><div>After this I tried to include =
those files in python-core package itself by editing=A0=A0<a href=3D"http:/=
/python_2.6.6.bb">python_2.6.6.bb</a>=A0</div>
<div>(I included following line)=A0</div><div>FILES_${PN}-core +=3D &quot;$=
{libdir}/python${PYTHON_MAJMIN}/*&quot;=A0</div><div>from above line python=
-core should include all the files in my rootfs .But still I am not getting=
 the above python-codecs files in it.</div>
<div><br></div><div>I have checked the source for python i.e<font class=3D"=
Apple-style-span" face=3D"&#39;courier new&#39;, monospace"> build/tmp/work=
/atom-poky-linux/python-2.6.6-nk1.1/image/usr/lib/python2.6</font> =A0folde=
r the python-codecs files are present in it , and also after installing roo=
tfs I am not getting these files so I checked in=A0=A0<font class=3D"Apple-=
style-span" face=3D"&#39;courier new&#39;, monospace">build/tmp/work/atom-p=
oky-linux/python-2.6.6-nk1.1/packages-split/python-core/usr/lib/python2.6 ,=
</font><font class=3D"Apple-style-span" face=3D"arial, helvetica, sans-seri=
f">here these files are not present=A0( may be so my =A0ufw binary is not w=
orking ) =A0</font></div>
<div><font class=3D"Apple-style-span" face=3D"&#39;courier new&#39;, monosp=
ace"><br></font></div><div><font class=3D"Apple-style-span" face=3D"arial, =
helvetica, sans-serif">So please can you guide me where I am getting wrong =
or am I missing something.</font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, helvetica, sans-serif"=
><br></font></div><div><font class=3D"Apple-style-span" face=3D"arial, helv=
etica, sans-serif">Regards</font></div><div><font class=3D"Apple-style-span=
" face=3D"arial, helvetica, sans-serif">Chinmaya</font></div>
</div>

--00221532c8fc5431f904a8f9fa87--
