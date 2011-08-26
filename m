Return-Path: <vsailub4u@gmail.com>
Received: from mail-pz0-f43.google.com (mail-pz0-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35C68E00320
	for <poky@yoctoproject.org>; Fri, 26 Aug 2011 00:46:52 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk1 with SMTP id 1so4545553pzk.16
	for <poky@yoctoproject.org>; Fri, 26 Aug 2011 00:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=DZBfcrhWp1Ym7xHULRiLYiYCU55RM52ilbDK/CBVQrQ=;
	b=UaHwdinJ1vHnaK3HW7m1IWurmL65isgwXK98LU1W5kYetK4pAM/mNVKMbFWfQhAIbT
	lOBhXx6qzJ9HbGOEoDU9Qh5Tv+fT46Jve7SZeWmN7oihg9z6FAVQo3MtcreTJrl1lA65
	jv+/xYAFuZW81+GP20MSnqHhO7cAh1Q/nJAQk=
MIME-Version: 1.0
Received: by 10.142.172.21 with SMTP id u21mr25140wfe.79.1314344811945; Fri,
	26 Aug 2011 00:46:51 -0700 (PDT)
Received: by 10.142.172.5 with HTTP; Fri, 26 Aug 2011 00:46:51 -0700 (PDT)
Date: Fri, 26 Aug 2011 13:16:51 +0530
Message-ID: <CAFt-cow0ydmqp576rY+ArxqTZRm3Pf46_ku_6eGOYLwxFjqTCg@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: poky@yoctoproject.org
Subject: Configuration error while pulling krb5 package
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
X-List-Received-Date: Fri, 26 Aug 2011 07:46:52 -0000
X-Groupsio-MsgNum: 6879
Content-Type: multipart/mixed; boundary=000e0cd20992a0de7004ab63bf24

--000e0cd20992a0de7004ab63bf24
Content-Type: multipart/alternative; boundary=000e0cd20992a0de6904ab63bf22

--000e0cd20992a0de6904ab63bf22
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am pulling krb5 package from openembedded to poky.
I am building the poky source on "remotes/origin/1.1_M3"  branch for
"sugarbay" machine.

I am facing an error in configuration.



-------------

ERROR: Function 'do_configure' failed (see
/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/temp/log.do_configure.6813
for further information)
ERROR: Logfile of failure stored in:
/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/temp/log.do_configure.6813
Log data follows:
| automake (GNU automake) 1.11.1
| Copyright (C) 2009 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later <
http://gnu.org/licenses/gpl-2.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|
| Written by Tom Tromey <tromey@redhat.com>
|        and Alexandre Duret-Lutz <adl@gnu.org>.
| AUTOV is 1.11
| NOTE: Executing autoreconf --verbose --install --force --exclude=autopoint
-I
/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src/util/
-I/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
-I
/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src//aclocal-copy/
| autoreconf: Entering directory `.'
| autoreconf: configure.in: not using Gettext
| autoreconf: running: aclocal -I
/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src/util/
-I
/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
-I
/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src//aclocal-copy/
-I
/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src/util/
-I
/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
-I
/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src//aclocal-copy/
--force --warnings=cross
| aclocal: unknown warning category `cross'
| configure.in:15: *error: AC_LANG_COMPILER: unknown language: _AC_LANG*
| ../../lib/autoconf/lang.m4:330: AC_LANG_COMPILER_REQUIRE is expanded
from...
| ../../lib/autoconf/lang.m4:373: AC_LANG_PREPROC_REQUIRE is expanded
from...
| ../../lib/autoconf/lang.m4:382: AC_REQUIRE_CPP is expanded from...
| configure.in:15: the top level
| autom4te:
/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/sysroots/x86_64-linux/usr/bin/m4
failed with exit status: 1
| aclocal:
/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/sysroots/x86_64-linux/usr/bin/autom4te
failed with exit status: 1
| autoreconf: aclocal failed with exit status: 1
| ERROR: autoreconf execution failed.
| ERROR: Function 'do_configure' failed (see
/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/temp/log.do_configure.6813
for further information)
NOTE: package krb5-1.6.3-r6: task do_configure: Failed
ERROR: Task 863
(/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/meta/recipes-support/krb/
krb5_1.6.3.bb, do_configure) failed with exit code '1'




I am sending the *krb5_1.6.3.bb , log.do_configure *and* run.do_configure
files.*
Please find the attached files.

Can anyone please tell me how to track this error and what is the reason for
this error??


-- 
Thanks & Regards,
SAI

--000e0cd20992a0de6904ab63bf22
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div><div>I am pulling krb5 package from openembedded to =
poky.</div><div>I am building the poky source on &quot;remotes/origin/1.1_M=
3&quot; =A0branch for &quot;sugarbay&quot; machine.</div><div><br></div><di=
v>


I am facing an error in configuration.</div><div><br></div><div><br></div><=
div><br></div><div>-------------</div><div><br></div><div><div>ERROR: Funct=
ion &#39;do_configure&#39; failed (see /home/sailaja/poky/gigabyte/yocto-su=
garbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/temp/log.do_conf=
igure.6813 for further information)</div>


<div>ERROR: Logfile of failure stored in: /home/sailaja/poky/gigabyte/yocto=
-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/temp/log.do_c=
onfigure.6813</div><div>Log data follows:</div><div>| automake (GNU automak=
e) 1.11.1</div>


<div>| Copyright (C) 2009 Free Software Foundation, Inc.</div><div>| Licens=
e GPLv2+: GNU GPL version 2 or later &lt;<a href=3D"http://gnu.org/licenses=
/gpl-2.0.html" target=3D"_blank">http://gnu.org/licenses/gpl-2.0.html</a>&g=
t;</div>

<div>| This is free software: you are free to change and redistribute it.</=
div>
<div>| There is NO WARRANTY, to the extent permitted by law.</div><div>|=A0=
</div><div>| Written by Tom Tromey &lt;<a href=3D"mailto:tromey@redhat.com"=
 target=3D"_blank">tromey@redhat.com</a>&gt;</div><div>| =A0 =A0 =A0 =A0and=
 Alexandre Duret-Lutz &lt;<a href=3D"mailto:adl@gnu.org" target=3D"_blank">=
adl@gnu.org</a>&gt;.</div>


<div>| AUTOV is 1.11</div><div>| NOTE: Executing autoreconf --verbose --ins=
tall --force --exclude=3Dautopoint -I /home/sailaja/poky/gigabyte/yocto-sug=
arbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src/ut=
il/ -I/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/sysroots/x8=
6_64-linux/usr/share/aclocal-1.11 -I /home/sailaja/poky/gigabyte/yocto-suga=
rbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src//ac=
local-copy/</div>


<div>| autoreconf: Entering directory `.&#39;</div><div>| autoreconf: <a hr=
ef=3D"http://configure.in" target=3D"_blank">configure.in</a>: not using Ge=
ttext</div><div>| autoreconf: running: aclocal -I /home/sailaja/poky/gigaby=
te/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/krb5-=
1.6.3/src/util/ -I /home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tm=
p/sysroots/x86_64-linux/usr/share/aclocal-1.11 -I /home/sailaja/poky/gigaby=
te/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/krb5-=
1.6.3/src//aclocal-copy/ -I /home/sailaja/poky/gigabyte/yocto-sugarbay/poky=
/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src/util/ -I /ho=
me/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/sysroots/x86_64-linu=
x/usr/share/aclocal-1.11 -I /home/sailaja/poky/gigabyte/yocto-sugarbay/poky=
/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src//aclocal-cop=
y/ --force --warnings=3Dcross</div>


<div>| aclocal: unknown warning category `cross&#39;</div><div>| <a href=3D=
"http://configure.in:15" target=3D"_blank">configure.in:15</a>: <b><i>error=
: AC_LANG_COMPILER: unknown language: _AC_LANG</i></b></div><div>| ../../li=
b/autoconf/lang.m4:330: AC_LANG_COMPILER_REQUIRE is expanded from...</div>


<div>| ../../lib/autoconf/lang.m4:373: AC_LANG_PREPROC_REQUIRE is expanded =
from...</div><div>| ../../lib/autoconf/lang.m4:382: AC_REQUIRE_CPP is expan=
ded from...</div><div>| <a href=3D"http://configure.in:15" target=3D"_blank=
">configure.in:15</a>: the top level</div>


<div>| autom4te: /home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/=
sysroots/x86_64-linux/usr/bin/m4 failed with exit status: 1</div><div>| acl=
ocal: /home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/sysroots/x8=
6_64-linux/usr/bin/autom4te failed with exit status: 1</div>


<div>| autoreconf: aclocal failed with exit status: 1</div><div>| ERROR: au=
toreconf execution failed.</div><div>| ERROR: Function &#39;do_configure&#3=
9; failed (see /home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/wo=
rk/x86_64-poky-linux/krb5-1.6.3-r6/temp/log.do_configure.6813 for further i=
nformation)</div>


<div>NOTE: package krb5-1.6.3-r6: task do_configure: Failed</div><div>ERROR=
: Task 863 (/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/meta/recipes-su=
pport/krb/<a href=3D"http://krb5_1.6.3.bb" target=3D"_blank">krb5_1.6.3.bb<=
/a>, do_configure) failed with exit code &#39;1&#39;</div>


</div><div><br></div><div><br></div><div><br></div><div><br></div><div><spa=
n style=3D"border-collapse:collapse;font-family:arial, sans-serif;font-size=
:13px"><div>I am sending the=A0<i><a href=3D"http://krb5_1.6.3.bb/" style=
=3D"color:rgb(0, 0, 204)" target=3D"_blank">krb5_1.6.3.bb</a>=A0, log.do_co=
nfigure=A0</i>and<i>=A0run.do_configure files.</i></div>

<div>Please find the attached files.</div><div><br></div><div>Can anyone pl=
ease tell me how to track this error and what is the reason for this error?=
?</div></span></div><div><br></div><div><br></div>-- <br>Thanks &amp; Regar=
ds,<br>

SAI<br><br>
</div>

--000e0cd20992a0de6904ab63bf22--

--000e0cd20992a0de7004ab63bf24
Content-Type: application/octet-stream; name="log.do_configure.18024"
Content-Disposition: attachment; filename="log.do_configure.18024"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_grsuuz3j0

YXV0b21ha2UgKEdOVSBhdXRvbWFrZSkgMS4xMS4xCkNvcHlyaWdodCAoQykgMjAwOSBGcmVlIFNv
ZnR3YXJlIEZvdW5kYXRpb24sIEluYy4KTGljZW5zZSBHUEx2Mis6IEdOVSBHUEwgdmVyc2lvbiAy
IG9yIGxhdGVyIDxodHRwOi8vZ251Lm9yZy9saWNlbnNlcy9ncGwtMi4wLmh0bWw+ClRoaXMgaXMg
ZnJlZSBzb2Z0d2FyZTogeW91IGFyZSBmcmVlIHRvIGNoYW5nZSBhbmQgcmVkaXN0cmlidXRlIGl0
LgpUaGVyZSBpcyBOTyBXQVJSQU5UWSwgdG8gdGhlIGV4dGVudCBwZXJtaXR0ZWQgYnkgbGF3LgoK
V3JpdHRlbiBieSBUb20gVHJvbWV5IDx0cm9tZXlAcmVkaGF0LmNvbT4KICAgICAgIGFuZCBBbGV4
YW5kcmUgRHVyZXQtTHV0eiA8YWRsQGdudS5vcmc+LgpBVVRPViBpcyAxLjExCk5PVEU6IEV4ZWN1
dGluZyBhdXRvcmVjb25mIC0tdmVyYm9zZSAtLWluc3RhbGwgLS1mb3JjZSAtLWV4Y2x1ZGU9YXV0
b3BvaW50IC1JIC9ob21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0by1zdWdhcmJheS9wb2t5
L2J1aWxkL3RtcC93b3JrL3g4Nl82NC1wb2t5LWxpbnV4L2tyYjUtMS42LjMtcjYva3JiNS0xLjYu
My9zcmMvdXRpbC8gLUkvaG9tZS9zYWlsYWphL3Bva3kvZ2lnYWJ5dGUveW9jdG8tc3VnYXJiYXkv
cG9reS9idWlsZC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9zaGFyZS9hY2xvY2FsLTEu
MTEgLUkgL2hvbWUvc2FpbGFqYS9wb2t5L2dpZ2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kvYnVp
bGQvdG1wL3dvcmsveDg2XzY0LXBva3ktbGludXgva3JiNS0xLjYuMy1yNi9rcmI1LTEuNi4zL3Ny
Yy8vYWNsb2NhbC1jb3B5LwphdXRvcmVjb25mOiBFbnRlcmluZyBkaXJlY3RvcnkgYC4nCmF1dG9y
ZWNvbmY6IGNvbmZpZ3VyZS5pbjogbm90IHVzaW5nIEdldHRleHQKYXV0b3JlY29uZjogcnVubmlu
ZzogYWNsb2NhbCAtSSAvaG9tZS9zYWlsYWphL3Bva3kvZ2lnYWJ5dGUveW9jdG8tc3VnYXJiYXkv
cG9reS9idWlsZC90bXAvd29yay94ODZfNjQtcG9reS1saW51eC9rcmI1LTEuNi4zLXI2L2tyYjUt
MS42LjMvc3JjL3V0aWwvIC1JIC9ob21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0by1zdWdh
cmJheS9wb2t5L2J1aWxkL3RtcC9zeXNyb290cy94ODZfNjQtbGludXgvdXNyL3NoYXJlL2FjbG9j
YWwtMS4xMSAtSSAvaG9tZS9zYWlsYWphL3Bva3kvZ2lnYWJ5dGUveW9jdG8tc3VnYXJiYXkvcG9r
eS9idWlsZC90bXAvd29yay94ODZfNjQtcG9reS1saW51eC9rcmI1LTEuNi4zLXI2L2tyYjUtMS42
LjMvc3JjLy9hY2xvY2FsLWNvcHkvIC1JIC9ob21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0
by1zdWdhcmJheS9wb2t5L2J1aWxkL3RtcC93b3JrL3g4Nl82NC1wb2t5LWxpbnV4L2tyYjUtMS42
LjMtcjYva3JiNS0xLjYuMy9zcmMvdXRpbC8gLUkgL2hvbWUvc2FpbGFqYS9wb2t5L2dpZ2FieXRl
L3lvY3RvLXN1Z2FyYmF5L3Bva3kvYnVpbGQvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3Iv
c2hhcmUvYWNsb2NhbC0xLjExIC1JIC9ob21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0by1z
dWdhcmJheS9wb2t5L2J1aWxkL3RtcC93b3JrL3g4Nl82NC1wb2t5LWxpbnV4L2tyYjUtMS42LjMt
cjYva3JiNS0xLjYuMy9zcmMvL2FjbG9jYWwtY29weS8gLS1mb3JjZSAtLXdhcm5pbmdzPWNyb3Nz
IAphY2xvY2FsOiB1bmtub3duIHdhcm5pbmcgY2F0ZWdvcnkgYGNyb3NzJwpjb25maWd1cmUuaW46
MTU6IGVycm9yOiBBQ19MQU5HX0NPTVBJTEVSOiB1bmtub3duIGxhbmd1YWdlOiBfQUNfTEFORwou
Li8uLi9saWIvYXV0b2NvbmYvbGFuZy5tNDozMzA6IEFDX0xBTkdfQ09NUElMRVJfUkVRVUlSRSBp
cyBleHBhbmRlZCBmcm9tLi4uCi4uLy4uL2xpYi9hdXRvY29uZi9sYW5nLm00OjM3MzogQUNfTEFO
R19QUkVQUk9DX1JFUVVJUkUgaXMgZXhwYW5kZWQgZnJvbS4uLgouLi8uLi9saWIvYXV0b2NvbmYv
bGFuZy5tNDozODI6IEFDX1JFUVVJUkVfQ1BQIGlzIGV4cGFuZGVkIGZyb20uLi4KY29uZmlndXJl
LmluOjE1OiB0aGUgdG9wIGxldmVsCkVSUk9SOiBGdW5jdGlvbiAnZG9fY29uZmlndXJlJyBmYWls
ZWQgKHNlZSAvaG9tZS9zYWlsYWphL3Bva3kvZ2lnYWJ5dGUveW9jdG8tc3VnYXJiYXkvcG9reS9i
dWlsZC90bXAvd29yay94ODZfNjQtcG9reS1saW51eC9rcmI1LTEuNi4zLXI2L3RlbXAvbG9nLmRv
X2NvbmZpZ3VyZS4xODAyNCBmb3IgZnVydGhlciBpbmZvcm1hdGlvbikKYXV0b200dGU6IC9ob21l
L3NhaWxhamEvcG9reS9naQ==

--000e0cd20992a0de7004ab63bf24
Content-Type: application/octet-stream; name="run.do_configure.18024"
Content-Disposition: attachment; filename="run.do_configure.18024"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_grsuvl5u1

IyEvYmluL3NoIC1lCmV4cG9ydCBsb2NhbHN0YXRlZGlyPSIvdmFyIgpleHBvcnQgcHJlZml4PSIv
dXNyIgpleHBvcnQgU1RBR0lOR19TSVBESVI9Ii9ob21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95
b2N0by1zdWdhcmJheS9wb2t5L2J1aWxkL3RtcC9zeXNyb290cy94ODZfNjQtbGludXgvdXNyL3No
YXJlL3NpcCIKZXhwb3J0IExEPSJ4ODZfNjQtcG9reS1saW51eC1sZCAtLXN5c3Jvb3Q9L2hvbWUv
c2FpbGFqYS9wb2t5L2dpZ2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kvYnVpbGQvdG1wL3N5c3Jv
b3RzL3N1Z2FyYmF5IgpleHBvcnQgcGFsbXRvcGRpcj0iL3Vzci9saWIvb3BpZSIKZXhwb3J0IFJB
TkxJQj0ieDg2XzY0LXBva3ktbGludXgtcmFubGliIgpleHBvcnQgQ1hYPSJ4ODZfNjQtcG9reS1s
aW51eC1nKysgICAtbTY0IC0tc3lzcm9vdD0vaG9tZS9zYWlsYWphL3Bva3kvZ2lnYWJ5dGUveW9j
dG8tc3VnYXJiYXkvcG9reS9idWlsZC90bXAvc3lzcm9vdHMvc3VnYXJiYXkiCmV4cG9ydCBzZXJ2
aWNlZGlyPSIvc3J2IgpleHBvcnQgUEtHX0NPTkZJR19ESVNBQkxFX1VOSU5TVEFMTEVEPSJ5ZXMi
CmV4cG9ydCBOTT0ieDg2XzY0LXBva3ktbGludXgtbm0iCmV4cG9ydCBVU0VSPSJzYWlsYWphIgpl
eHBvcnQgUVBFRElSPSIvaG9tZS9zYWlsYWphL3Bva3kvZ2lnYWJ5dGUveW9jdG8tc3VnYXJiYXkv
cG9reS9idWlsZC90bXAvc3lzcm9vdHMvc3VnYXJiYXkiCmV4cG9ydCBCVUlMRF9DRkxBR1M9Ii1p
c3lzdGVtL2hvbWUvc2FpbGFqYS9wb2t5L2dpZ2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kvYnVp
bGQvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvaW5jbHVkZSAtTzIgLXBpcGUiCmV4cG9y
dCBDUFA9Ing4Nl82NC1wb2t5LWxpbnV4LWdjYyAtRSAtLXN5c3Jvb3Q9L2hvbWUvc2FpbGFqYS9w
b2t5L2dpZ2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kvYnVpbGQvdG1wL3N5c3Jvb3RzL3N1Z2Fy
YmF5IgpleHBvcnQgQ09ORklHX1NJVEU9Ii9ob21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0
by1zdWdhcmJheS9wb2t5L21ldGEvc2l0ZS9lbmRpYW4tbGl0dGxlIC9ob21lL3NhaWxhamEvcG9r
eS9naWdhYnl0ZS95b2N0by1zdWdhcmJheS9wb2t5L21ldGEvc2l0ZS9jb21tb24tbGludXggL2hv
bWUvc2FpbGFqYS9wb2t5L2dpZ2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kvbWV0YS9zaXRlL2Nv
bW1vbi1nbGliYyAvaG9tZS9zYWlsYWphL3Bva3kvZ2lnYWJ5dGUveW9jdG8tc3VnYXJiYXkvcG9r
eS9tZXRhL3NpdGUveDg2XzY0LWxpbnV4IC9ob21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0
by1zdWdhcmJheS9wb2t5L21ldGEvc2l0ZS9jb21tb24gL2hvbWUvc2FpbGFqYS9wb2t5L2dpZ2Fi
eXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kvYnVpbGQvdG1wL3N5c3Jvb3RzL3N1Z2FyYmF5L3Vzci9z
aGFyZS94ODZfNjQtcG9reS1saW51eF9jb25maWdfc2l0ZS5kL2VnbGliY19jb25maWcgL2hvbWUv
c2FpbGFqYS9wb2t5L2dpZ2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kvYnVpbGQvdG1wL3N5c3Jv
b3RzL3N1Z2FyYmF5L3Vzci9zaGFyZS94ODZfNjQtcG9reS1saW51eF9jb25maWdfc2l0ZS5kL3ps
aWJfY29uZmlnIC9ob21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0by1zdWdhcmJheS9wb2t5
L2J1aWxkL3RtcC9zeXNyb290cy9zdWdhcmJheS91c3Ivc2hhcmUveDg2XzY0LXBva3ktbGludXhf
Y29uZmlnX3NpdGUuZC9uY3Vyc2VzX2NvbmZpZyIKZXhwb3J0IExPR05BTUU9InNhaWxhamEiCmV4
cG9ydCBTVFJJUD0ieDg2XzY0LXBva3ktbGludXgtc3RyaXAiCmV4cG9ydCBkYXRhZGlyPSIvdXNy
L3NoYXJlIgpleHBvcnQgUEtHX0NPTkZJR19TWVNST09UX0RJUj0iL2hvbWUvc2FpbGFqYS9wb2t5
L2dpZ2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kvYnVpbGQvdG1wL3N5c3Jvb3RzL3N1Z2FyYmF5
IgpleHBvcnQgYmluZGlyPSIvdXNyL2JpbiIKZXhwb3J0IG1hbmRpcj0iL3Vzci9zaGFyZS9tYW4i
CmV4cG9ydCBQQVRDSF9HRVQ9IjAiCmV4cG9ydCBMREZMQUdTPSItV2wsLU8xIC1scHRocmVhZCIK
ZXhwb3J0IE1BS0U9Im1ha2UiCmV4cG9ydCBpbmZvZGlyPSIvdXNyL3NoYXJlL2luZm8iCmV4cG9y
dCBQS0dfQ09ORklHX1BBVEg9Ii9ob21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0by1zdWdh
cmJheS9wb2t5L2J1aWxkL3RtcC9zeXNyb290cy9zdWdhcmJheS8vdXNyL2xpYi9wa2djb25maWc6
L2hvbWUvc2FpbGFqYS9wb2t5L2dpZ2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kvYnVpbGQvdG1w
L3N5c3Jvb3RzL3N1Z2FyYmF5L3Vzci9zaGFyZS9wa2djb25maWciCmV4cG9ydCBBUz0ieDg2XzY0
LXBva3ktbGludXgtYXMiCmV4cG9ydCBBUj0ieDg2XzY0LXBva3ktbGludXgtYXIiCmV4cG9ydCBl
eGVjX3ByZWZpeD0iL3VzciIKZXhwb3J0IGJhc2VfbGliZGlyPSIvbGliIgpleHBvcnQgUEFUSD0i
L2hvbWUvc2FpbGFqYS9wb2t5L2dpZ2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kvYnVpbGQvdG1w
L3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvYmluL3g4Nl82NC1wb2t5LWxpbnV4Oi9ob21lL3Nh
aWxhamEvcG9reS9naWdhYnl0ZS95b2N0by1zdWdhcmJheS9wb2t5L2J1aWxkL3RtcC9zeXNyb290
cy9zdWdhcmJheS91c3IvYmluL2Nyb3Nzc2NyaXB0czovaG9tZS9zYWlsYWphL3Bva3kvZ2lnYWJ5
dGUveW9jdG8tc3VnYXJiYXkvcG9reS9idWlsZC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vz
ci9zYmluOi9ob21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0by1zdWdhcmJheS9wb2t5L2J1
aWxkL3RtcC9zeXNyb290cy94ODZfNjQtbGludXgvdXNyL2JpbjovaG9tZS9zYWlsYWphL3Bva3kv
Z2lnYWJ5dGUveW9jdG8tc3VnYXJiYXkvcG9reS9idWlsZC90bXAvc3lzcm9vdHMveDg2XzY0LWxp
bnV4L3NiaW46L2hvbWUvc2FpbGFqYS9wb2t5L2dpZ2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kv
YnVpbGQvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC8vYmluOi9ob21lL3NhaWxhamEvcG9reS9n
aWdhYnl0ZS95b2N0by1zdWdhcmJheS9wb2t5L3NjcmlwdHM6L2hvbWUvc2FpbGFqYS9wb2t5L2dp
Z2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kvYml0YmFrZS9iaW4vOi91c3IvbG9jYWwvc2Jpbjov
dXNyL2xvY2FsL2JpbjovdXNyL3NiaW46L3Vzci9iaW46L3NiaW46L2JpbjovdXNyL2dhbWVzOi9o
b21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0by1zdWdhcmJheS9wb2t5L3NjcmlwdHMiCmV4
cG9ydCBCVUlMRF9BUj0iYXIiCmV4cG9ydCBsaWJkaXI9Ii91c3IvbGliIgpleHBvcnQgcGFsbXF0
ZGlyPSIvdXNyL2xpYi9vcGllIgpleHBvcnQgQlVJTERfQ0M9ImdjYyIKZXhwb3J0IEJVSUxEX0NY
WD0iZysrIgpleHBvcnQgQlVJTERfTERGTEFHUz0iLUwvaG9tZS9zYWlsYWphL3Bva3kvZ2lnYWJ5
dGUveW9jdG8tc3VnYXJiYXkvcG9reS9idWlsZC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vz
ci9saWIgLVdsLC1ycGF0aC1saW5rLC9ob21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0by1z
dWdhcmJheS9wb2t5L2J1aWxkL3RtcC9zeXNyb290cy94ODZfNjQtbGludXgvdXNyL2xpYiAtV2ws
LXJwYXRoLC9ob21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0by1zdWdhcmJheS9wb2t5L2J1
aWxkL3RtcC9zeXNyb290cy94ODZfNjQtbGludXgvdXNyL2xpYiAtV2wsLU8xIgpleHBvcnQgQlVJ
TERfQ0NMRD0iZ2NjIgpleHBvcnQgQ0M9Ing4Nl82NC1wb2t5LWxpbnV4LWdjYyAgIC1tNjQgLS1z
eXNyb290PS9ob21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0by1zdWdhcmJheS9wb2t5L2J1
aWxkL3RtcC9zeXNyb290cy9zdWdhcmJheSIKZXhwb3J0IE9CSkNPUFk9Ing4Nl82NC1wb2t5LWxp
bnV4LW9iamNvcHkiCmV4cG9ydCBMQ19BTEw9IkMiCmV4cG9ydCBQS0dfQ09ORklHX0RJUj0iL2hv
bWUvc2FpbGFqYS9wb2t5L2dpZ2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kvYnVpbGQvdG1wL3N5
c3Jvb3RzL3N1Z2FyYmF5Ly91c3IvbGliL3BrZ2NvbmZpZyIKZXhwb3J0IENDTEQ9Ing4Nl82NC1w
b2t5LWxpbnV4LWdjYyAgIC1tNjQgLS1zeXNyb290PS9ob21lL3NhaWxhamEvcG9reS9naWdhYnl0
ZS95b2N0by1zdWdhcmJheS9wb2t5L2J1aWxkL3RtcC9zeXNyb290cy9zdWdhcmJheSIKZXhwb3J0
IGJhc2VfYmluZGlyPSIvYmluIgpleHBvcnQgUEtHX0NPTkZJR19MSUJESVI9Ii9ob21lL3NhaWxh
amEvcG9reS9naWdhYnl0ZS95b2N0by1zdWdhcmJheS9wb2t5L2J1aWxkL3RtcC9zeXNyb290cy9z
dWdhcmJheS8vdXNyL2xpYi9wa2djb25maWciCmV4cG9ydCBzYmluZGlyPSIvdXNyL3NiaW4iCmV4
cG9ydCBDRkxBR1M9Ii1PMiAtcGlwZSAtZyAtZmVsaW1pbmF0ZS11bnVzZWQtZGVidWctdHlwZXMg
LURERVNUUlVDVE9SX0FUVFJfV09SS1M9MSAtSS9ob21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95
b2N0by1zdWdhcmJheS9wb2t5L2J1aWxkL3RtcC9zeXNyb290cy9zdWdhcmJheS91c3IvaW5jbHVk
ZS9ldCIKZXhwb3J0IENYWEZMQUdTPSItTzIgLXBpcGUgLWcgLWZlbGltaW5hdGUtdW51c2VkLWRl
YnVnLXR5cGVzIC1mcGVybWlzc2l2ZSAtZnZpc2liaWxpdHktaW5saW5lcy1oaWRkZW4iCmV4cG9y
dCBPUElFRElSPSIvaG9tZS9zYWlsYWphL3Bva3kvZ2lnYWJ5dGUveW9jdG8tc3VnYXJiYXkvcG9r
eS9idWlsZC90bXAvc3lzcm9vdHMvc3VnYXJiYXkiCmV4cG9ydCBCVUlMRF9DUFA9ImNwcCIKZXhw
b3J0IGRvY2Rpcj0iL3Vzci9zaGFyZS9kb2MiCmV4cG9ydCBUQVJHRVRfTERGTEFHUz0iLVdsLC1P
MSIKZXhwb3J0IFRFUk09Inh0ZXJtIgpleHBvcnQgQlVJTERfQ1hYRkxBR1M9Ii1pc3lzdGVtL2hv
bWUvc2FpbGFqYS9wb2t5L2dpZ2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kvYnVpbGQvdG1wL3N5
c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvaW5jbHVkZSAtTzIgLXBpcGUgLWZwZXJtaXNzaXZlIgpl
eHBvcnQgSE9NRT0iL2hvbWUvc2FpbGFqYSIKZXhwb3J0IEJBVENIPSJ5ZXMiCnVuc2V0IE1BQ0hJ
TkUKZXhwb3J0IEJVSUxEX1NUUklQPSJzdHJpcCIKZXhwb3J0IGxpYmV4ZWNkaXI9Ii91c3IvbGli
ZXhlYyIKZXhwb3J0IFRBUkdFVF9DWFhGTEFHUz0iLU8yIC1waXBlIC1nIC1mZWxpbWluYXRlLXVu
dXNlZC1kZWJ1Zy10eXBlcyAtZnBlcm1pc3NpdmUiCmV4cG9ydCBpbmNsdWRlZGlyPSIvdXNyL2lu
Y2x1ZGUiCmV4cG9ydCBCVUlMRF9MRD0ibGQiCmV4cG9ydCBvbGRpbmNsdWRlZGlyPSIvdXNyL2lu
Y2x1ZGUiCmV4cG9ydCBRTUFLRV9NS1NQRUNfUEFUSD0iL2hvbWUvc2FpbGFqYS9wb2t5L2dpZ2Fi
eXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kvYnVpbGQvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91
c3Ivc2hhcmUvcW1ha2UiCmV4cG9ydCBCVUlMRF9SQU5MSUI9InJhbmxpYiIKZXhwb3J0IHNoYXJl
ZHN0YXRlZGlyPSIvY29tIgpleHBvcnQgQlVJTERfTk09Im5tIgpleHBvcnQgQlVJTERfRjc3PSJn
NzciCmV4cG9ydCBGNzc9Ing4Nl82NC1wb2t5LWxpbnV4LWc3NyAgIC1tNjQgLS1zeXNyb290PS9o
b21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0by1zdWdhcmJheS9wb2t5L2J1aWxkL3RtcC9z
eXNyb290cy9zdWdhcmJheSIKZXhwb3J0IFFURElSPSIvaG9tZS9zYWlsYWphL3Bva3kvZ2lnYWJ5
dGUveW9jdG8tc3VnYXJiYXkvcG9reS9idWlsZC90bXAvc3lzcm9vdHMvc3VnYXJiYXkvcXQyIgpl
eHBvcnQgU0hFTExDTURTPSJiYXNoIgp1bnNldCBUQVJHRVRfQVJDSApleHBvcnQgQ0NBQ0hFX0RJ
Uj0iL2hvbWUvc2FpbGFqYS9wb2t5L2dpZ2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kvYnVpbGQv
dG1wL2NjYWNoZS94ODZfNjQtcG9reS1saW51eC9rcmI1IgpleHBvcnQgc3lzY29uZmRpcj0iL2V0
YyIKZXhwb3J0IFNIRUxMPSIvYmluL2Jhc2giCmV4cG9ydCBiYXNlX3NiaW5kaXI9Ii9zYmluIgpl
eHBvcnQgQlVJTERfQ1BQRkxBR1M9Ii1pc3lzdGVtL2hvbWUvc2FpbGFqYS9wb2t5L2dpZ2FieXRl
L3lvY3RvLXN1Z2FyYmF5L3Bva3kvYnVpbGQvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3Iv
aW5jbHVkZSIKZXhwb3J0IFVTRVJOQU1FPSJzYWlsYWphIgpleHBvcnQgU1RBR0lOR19JRExESVI9
Ii9ob21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0by1zdWdhcmJheS9wb2t5L2J1aWxkL3Rt
cC9zeXNyb290cy9zdWdhcmJheS91c3Ivc2hhcmUvaWRsIgpleHBvcnQgVEFSR0VUX0NGTEFHUz0i
LU8yIC1waXBlIC1nIC1mZWxpbWluYXRlLXVudXNlZC1kZWJ1Zy10eXBlcyIKZXhwb3J0IE9CSkRV
TVA9Ing4Nl82NC1wb2t5LWxpbnV4LW9iamR1bXAiCnVuc2V0IERJU1RSTwpkb19jb25maWd1cmUo
KSB7CglhdXRvdG9vbHNfZG9fY29uZmlndXJlCgp9CgphdXRvdG9vbHNfZG9fY29uZmlndXJlKCkg
ewoJY2FzZSBrcmI1IGluCglhdXRvY29uZiopCgk7OwoJYXV0b21ha2UqKQoJOzsKCSopCgkJIyBX
QVJOSU5HOiBncm9zcyBoYWNrIGZvbGxvd3M6CgkJIyBBbiBhdXRvdG9vbHMgYnVpbHQgcGFja2Fn
ZSBnZW5lcmFsbHkgbmVlZHMgdGhlc2Ugc2NyaXB0cywgaG93ZXZlciBvbmx5CgkJIyBhdXRvbWFr
ZSBvciBsaWJ0b29saXplIGFjdHVhbGx5IGluc3RhbGwgdGhlIGN1cnJlbnQgdmVyc2lvbnMgb2Yg
dGhlbS4KCQkjIFRoaXMgaXMgYSBwcm9ibGVtIGluIGJ1aWxkcyB0aGF0IGRvIG5vdCB1c2UgbGli
dG9vbCBvciBhdXRvbWFrZSwgaW4gdGhlIGNhc2UKCQkjIHdoZXJlIHdlIC1uZWVkLSB0aGUgbGF0
ZXN0IHZlcnNpb24gb2YgdGhlc2Ugc2NyaXB0cy4gIGUuZy4gcnVubmluZyBhIGJ1aWxkCgkJIyBm
b3IgYSBwYWNrYWdlIHdob3NlIGF1dG90b29scyBhcmUgb2xkLCBvbiBhbiB4ODZfNjQgbWFjaGlu
ZSwgd2hpY2ggdGhlIG9sZAoJCSMgY29uZmlnLnN1YiBkb2VzIG5vdCBzdXBwb3J0LiAgV29yayBh
cm91bmQgdGhpcyBieSBpbnN0YWxsaW5nIHRoZW0gbWFudWFsbHkKCQkjIHJlZ2FyZGxlc3MuCgkJ
KCBmb3IgYWMgaW4gYGZpbmQgL2hvbWUvc2FpbGFqYS9wb2t5L2dpZ2FieXRlL3lvY3RvLXN1Z2Fy
YmF5L3Bva3kvYnVpbGQvdG1wL3dvcmsveDg2XzY0LXBva3ktbGludXgva3JiNS0xLjYuMy1yNi9r
cmI1LTEuNi4zL3NyYy8gLW5hbWUgY29uZmlndXJlLmluIC1vIC1uYW1lIGNvbmZpZ3VyZS5hY2A7
IGRvCgkJCXJtIC1mIGBkaXJuYW1lICRhY2AvY29uZmlndXJlCgkJCWRvbmUgKQoJCWlmIFsgLWUg
L2hvbWUvc2FpbGFqYS9wb2t5L2dpZ2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kvYnVpbGQvdG1w
L3dvcmsveDg2XzY0LXBva3ktbGludXgva3JiNS0xLjYuMy1yNi9rcmI1LTEuNi4zL3NyYy8vY29u
ZmlndXJlLmluIC1vIC1lIC9ob21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0by1zdWdhcmJh
eS9wb2t5L2J1aWxkL3RtcC93b3JrL3g4Nl82NC1wb2t5LWxpbnV4L2tyYjUtMS42LjMtcjYva3Ji
NS0xLjYuMy9zcmMvL2NvbmZpZ3VyZS5hYyBdOyB0aGVuCgkJCW9sZGRpcj1gcHdkYAoJCQljZCAv
aG9tZS9zYWlsYWphL3Bva3kvZ2lnYWJ5dGUveW9jdG8tc3VnYXJiYXkvcG9reS9idWlsZC90bXAv
d29yay94ODZfNjQtcG9reS1saW51eC9rcmI1LTEuNi4zLXI2L2tyYjUtMS42LjMvc3JjLwoJCQlp
ZiBbIHgiZGVmYXVsdCIgPSB4ZGVmYXVsdCBdOyB0aGVuCgkJCQlhY3BhdGhzPQoJCQkJZm9yIGkg
aW4gYGZpbmQgL2hvbWUvc2FpbGFqYS9wb2t5L2dpZ2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kv
YnVpbGQvdG1wL3dvcmsveDg2XzY0LXBva3ktbGludXgva3JiNS0xLjYuMy1yNi9rcmI1LTEuNi4z
L3NyYy8gLW1heGRlcHRoIDIgLW5hbWUgXCoubTR8Z3JlcCAtdiAnYWNsb2NhbC5tNCd8IFwKCQkJ
CQlncmVwIC12ICdhY2luY2x1ZGUubTQnIHwgc2VkIC1lICdzLFwoLiovXCkuKiQsXDEsJ3xzb3J0
IC11YDsgZG8KCQkJCQlhY3BhdGhzPSIkYWNwYXRocyAtSSAkaSIKCQkJCWRvbmUKCQkJZWxzZQoJ
CQkJYWNwYXRocz0iZGVmYXVsdCIKCQkJZmkKCQkJQVVUT1Y9YGF1dG9tYWtlIC0tdmVyc2lvbiB8
aGVhZCAtbiAxIHxzZWQgInMvLiogLy87cy9cLlswLTldXCskLy8iYAoJCQlhdXRvbWFrZSAtLXZl
cnNpb24KCQkJZWNobyAiQVVUT1YgaXMgJEFVVE9WIgoJCQlpZiBbIC1kIC9ob21lL3NhaWxhamEv
cG9reS9naWdhYnl0ZS95b2N0by1zdWdhcmJheS9wb2t5L2J1aWxkL3RtcC9zeXNyb290cy94ODZf
NjQtbGludXgvdXNyL3NoYXJlL2FjbG9jYWwtJEFVVE9WIF07IHRoZW4KCQkJCWFjcGF0aHM9IiRh
Y3BhdGhzIC1JL2hvbWUvc2FpbGFqYS9wb2t5L2dpZ2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kv
YnVpbGQvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3Ivc2hhcmUvYWNsb2NhbC0kQVVUT1Yi
CgkJCWZpCgkJCSMgVGhlIGFjbG9jYWwgZGlyZWN0b3J5IGNvdWxkIGdldCBtb2RpZmllZCBieSBv
dGhlciBwcm9jZXNzZXMKCQkJIyB1bmluc3RhbGxpbmcgZGF0YSBmcm9tIHRoZSBzeXNyb290LiBT
ZWUgWW9jdG8gIzg2MSBmb3IgZGV0YWlscy4KCQkJIyBXZSBhdm9pZCB0aGlzIGJ5IHRha2luZyBh
IGNvcHkgaGVyZSBhbmQgdGhlbiBmaWxlcyBjYW5ub3QgZGlzYXBwZWFyLgoJCQlpZiBbIC1kIC9o
b21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0by1zdWdhcmJheS9wb2t5L2J1aWxkL3RtcC9z
eXNyb290cy9zdWdhcmJheS91c3Ivc2hhcmUvYWNsb2NhbCBdOyB0aGVuCgkJCQlta2RpciAtcCAv
aG9tZS9zYWlsYWphL3Bva3kvZ2lnYWJ5dGUveW9jdG8tc3VnYXJiYXkvcG9reS9idWlsZC90bXAv
d29yay94ODZfNjQtcG9reS1saW51eC9rcmI1LTEuNi4zLXI2L2tyYjUtMS42LjMvc3JjLy9hY2xv
Y2FsLWNvcHkvCgkJCQljcCAvaG9tZS9zYWlsYWphL3Bva3kvZ2lnYWJ5dGUveW9jdG8tc3VnYXJi
YXkvcG9reS9idWlsZC90bXAvc3lzcm9vdHMvc3VnYXJiYXkvdXNyL3NoYXJlL2FjbG9jYWwvKiAv
aG9tZS9zYWlsYWphL3Bva3kvZ2lnYWJ5dGUveW9jdG8tc3VnYXJiYXkvcG9reS9idWlsZC90bXAv
d29yay94ODZfNjQtcG9reS1saW51eC9rcmI1LTEuNi4zLXI2L2tyYjUtMS42LjMvc3JjLy9hY2xv
Y2FsLWNvcHkvCgkJCQlhY3BhdGhzPSIkYWNwYXRocyAtSSAvaG9tZS9zYWlsYWphL3Bva3kvZ2ln
YWJ5dGUveW9jdG8tc3VnYXJiYXkvcG9reS9idWlsZC90bXAvd29yay94ODZfNjQtcG9reS1saW51
eC9rcmI1LTEuNi4zLXI2L2tyYjUtMS42LjMvc3JjLy9hY2xvY2FsLWNvcHkvIgoJCQlmaQoJCQkj
IGF1dG9yZWNvbmYgaXMgdG9vIHNoeSB0byBvdmVyd3JpdGUgYWNsb2NhbC5tNCBpZiBpdCBkb2Vz
bid0IGxvb2sKCQkJIyBsaWtlIGl0IHdhcyBhdXRvLWdlbmVyYXRlZC4gIFdvcmsgYXJvdW5kIHRo
aXMgYnkgYmxvd2luZyBpdCBhd2F5CgkJCSMgYnkgaGFuZCwgdW5sZXNzIHRoZSBwYWNrYWdlIHNw
ZWNpZmljYWxseSBhc2tlZCBub3QgdG8gcnVuIGFjbG9jYWwuCgkJCWlmICEgZWNobyAtLWV4Y2x1
ZGU9YXV0b3BvaW50IHwgZ3JlcCAtcSAiYWNsb2NhbCI7IHRoZW4KCQkJCXJtIC1mIGFjbG9jYWwu
bTQKCQkJZmkKCQkJaWYgWyAtZSBjb25maWd1cmUuaW4gXTsgdGhlbgoJCQkgIENPTkZJR1VSRV9B
Qz1jb25maWd1cmUuaW4KCQkJZWxzZQoJCQkgIENPTkZJR1VSRV9BQz1jb25maWd1cmUuYWMKCQkJ
ZmkKCQkJaWYgISBlY2hvICAgLS13aXRob3V0LXRjbCBrcmI1X2N2X2F0dHJfY29uc3RydWN0b3Jf
ZGVzdHJ1Y3Rvcj15ZXMgYWNfY3ZfZnVuY19yZWdjb21wPXllcyAgICAgICAgICAgICAgICAgICBh
Y19jdl9wcmludGZfcG9zaXRpb25hbD15ZXMgYWNfY3ZfZmlsZV9fZXRjX2Vudmlyb25tZW50PXll
cyAgICAgICAgICAgICAgICAgICBhY19jdl9maWxlX19ldGNfVElNRVpPTkU9bm8gLS13aXRoLXN5
c3RlbS1ldGkgd2l0aC1saWJ0b29sICAtLWVuYWJsZS1ubHMgfCBncmVwIC1xICJcLVwtZGlzYWJs
ZS1ubHMiOyB0aGVuCgkJCSAgaWYgZ3JlcCAiXltbOnNwYWNlOl1dKkFNX0dMSUJfR05VX0dFVFRF
WFQiICRDT05GSUdVUkVfQUMgPi9kZXYvbnVsbDsgdGhlbgoJCQkgICAgaWYgZ3JlcCAic2VkLipQ
T1RGSUxFUyIgJENPTkZJR1VSRV9BQyA+L2Rldi9udWxsOyB0aGVuCgkJCSAgICAgIDogZG8gbm90
aGluZyAtLSB3ZSBzdGlsbCBoYXZlIGFuIG9sZCB1bm1vZGlmaWVkIGNvbmZpZ3VyZS5hYwoJCQkg
ICAgZWxzZQoJCQkgICAgICBiYm5vdGUgRXhlY3V0aW5nIGdsaWItZ2V0dGV4dGl6ZSAtLWZvcmNl
IC0tY29weQoJCQkgICAgICBlY2hvICJubyIgfCBnbGliLWdldHRleHRpemUgLS1mb3JjZSAtLWNv
cHkKCQkJICAgIGZpCgkJCSAgZWxzZSBpZiBncmVwICJeW1s6c3BhY2U6XV0qQU1fR05VX0dFVFRF
WFQiICRDT05GSUdVUkVfQUMgPi9kZXYvbnVsbDsgdGhlbgoJCQkgICAgY3AgL2hvbWUvc2FpbGFq
YS9wb2t5L2dpZ2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kvYnVpbGQvdG1wL3N5c3Jvb3RzL3N1
Z2FyYmF5L3Vzci9zaGFyZS9nZXR0ZXh0L2NvbmZpZy5ycGF0aCAvaG9tZS9zYWlsYWphL3Bva3kv
Z2lnYWJ5dGUveW9jdG8tc3VnYXJiYXkvcG9reS9idWlsZC90bXAvd29yay94ODZfNjQtcG9reS1s
aW51eC9rcmI1LTEuNi4zLXI2L2tyYjUtMS42LjMvc3JjLy8KCQkJICBmaQoJCQlmaQoJCQlmaQoJ
CQlta2RpciAtcCBtNAoJCQlpZiBncmVwICJeW1s6c3BhY2U6XV0qW0FJXVtDVF1fUFJPR19JTlRM
VE9PTCIgJENPTkZJR1VSRV9BQyA+L2Rldi9udWxsOyB0aGVuCgkJCSAgYmJub3RlIEV4ZWN1dGlu
ZyBpbnRsdG9vbGl6ZSAtLWNvcHkgLS1mb3JjZSAtLWF1dG9tYWtlCgkJCSAgaW50bHRvb2xpemUg
LS1jb3B5IC0tZm9yY2UgLS1hdXRvbWFrZQoJCQlmaQoJCQliYm5vdGUgRXhlY3V0aW5nIGF1dG9y
ZWNvbmYgLS12ZXJib3NlIC0taW5zdGFsbCAtLWZvcmNlIC0tZXhjbHVkZT1hdXRvcG9pbnQgJGFj
cGF0aHMKCQkJYXV0b3JlY29uZiAtV2Nyb3NzIC0tdmVyYm9zZSAtLWluc3RhbGwgLS1mb3JjZSAt
LWV4Y2x1ZGU9YXV0b3BvaW50ICRhY3BhdGhzIHx8IGJiZmF0YWwgImF1dG9yZWNvbmYgZXhlY3V0
aW9uIGZhaWxlZC4iCgkJCWNkICRvbGRkaXIKCQlmaQoJOzsKCWVzYWMKCWlmIFsgLWUgL2hvbWUv
c2FpbGFqYS9wb2t5L2dpZ2FieXRlL3lvY3RvLXN1Z2FyYmF5L3Bva3kvYnVpbGQvdG1wL3dvcmsv
eDg2XzY0LXBva3ktbGludXgva3JiNS0xLjYuMy1yNi9rcmI1LTEuNi4zL3NyYy8vY29uZmlndXJl
IF07IHRoZW4KCQlvZV9ydW5jb25mCgllbHNlCgkJYmJub3RlICJub3RoaW5nIHRvIGNvbmZpZ3Vy
ZSIKCWZpCgp9CgpiYmZhdGFsKCkgewoJZWNobyAiRVJST1I6ICQqIgoJZXhpdCAxCgp9CgpiYm5v
dGUoKSB7CgllY2hvICJOT1RFOiAkKiIKCn0KCm9lX3J1bmNvbmYoKSB7CglpZiBbIC14IC9ob21l
L3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0by1zdWdhcmJheS9wb2t5L2J1aWxkL3RtcC93b3Jr
L3g4Nl82NC1wb2t5LWxpbnV4L2tyYjUtMS42LjMtcjYva3JiNS0xLjYuMy9zcmMvL2NvbmZpZ3Vy
ZSBdIDsgdGhlbgoJCWNmZ2NtZD0iL2hvbWUvc2FpbGFqYS9wb2t5L2dpZ2FieXRlL3lvY3RvLXN1
Z2FyYmF5L3Bva3kvYnVpbGQvdG1wL3dvcmsveDg2XzY0LXBva3ktbGludXgva3JiNS0xLjYuMy1y
Ni9rcmI1LTEuNi4zL3NyYy8vY29uZmlndXJlIFwKCQkgLS1idWlsZD14ODZfNjQtbGludXggCQkg
IC0taG9zdD14ODZfNjQtcG9reS1saW51eCAJCSAgLS10YXJnZXQ9eDg2XzY0LXBva3ktbGludXgg
CQkgIC0tcHJlZml4PS91c3IgCQkgIC0tZXhlY19wcmVmaXg9L3VzciAJCSAgLS1iaW5kaXI9L3Vz
ci9iaW4gCQkgIC0tc2JpbmRpcj0vdXNyL3NiaW4gCQkgIC0tbGliZXhlY2Rpcj0vdXNyL2xpYmV4
ZWMgCQkgIC0tZGF0YWRpcj0vdXNyL3NoYXJlIAkJICAtLXN5c2NvbmZkaXI9L2V0YyAJCSAgLS1z
aGFyZWRzdGF0ZWRpcj0vY29tIAkJICAtLWxvY2Fsc3RhdGVkaXI9L3ZhciAJCSAgLS1saWJkaXI9
L3Vzci9saWIgCQkgIC0taW5jbHVkZWRpcj0vdXNyL2luY2x1ZGUgCQkgIC0tb2xkaW5jbHVkZWRp
cj0vdXNyL2luY2x1ZGUgCQkgIC0taW5mb2Rpcj0vdXNyL3NoYXJlL2luZm8gCQkgIC0tbWFuZGly
PS91c3Ivc2hhcmUvbWFuIAkJICAtLWRpc2FibGUtc2lsZW50LXJ1bGVzIAkJICAtLXdpdGgtbGli
dG9vbC1zeXNyb290PS9ob21lL3NhaWxhamEvcG9reS9naWdhYnl0ZS95b2N0by1zdWdhcmJheS9w
b2t5L2J1aWxkL3RtcC9zeXNyb290cy9zdWdhcmJheSAgIC0td2l0aG91dC10Y2wga3JiNV9jdl9h
dHRyX2NvbnN0cnVjdG9yX2Rlc3RydWN0b3I9eWVzIGFjX2N2X2Z1bmNfcmVnY29tcD15ZXMgICAg
ICAgICAgICAgICAgICAgYWNfY3ZfcHJpbnRmX3Bvc2l0aW9uYWw9eWVzIGFjX2N2X2ZpbGVfX2V0
Y19lbnZpcm9ubWVudD15ZXMgICAgICAgICAgICAgICAgICAgYWNfY3ZfZmlsZV9fZXRjX1RJTUVa
T05FPW5vIC0td2l0aC1zeXN0ZW0tZXRpIHdpdGgtbGlidG9vbCAgLS1lbmFibGUtbmxzICRAIgoJ
CWJibm90ZSAiUnVubmluZyAkY2ZnY21kLi4uIgoJCSRjZmdjbWQgfHwgYmJmYXRhbCAib2VfcnVu
Y29uZiBmYWlsZWQiCgllbHNlCgkJYmJmYXRhbCAibm8gY29uZmlndXJlIHNjcmlwdCBmb3VuZCIK
CWZpCgp9CgpjZCAvaG9tZS9zYWlsYWphL3Bva3kvZ2lnYWJ5dGUveW9jdG8tc3VnYXJiYXkvcG9r
eS9idWlsZC90bXAvd29yay94ODZfNjQtcG9reS1saW51eC9rcmI1LTEuNi4zLXI2L2tyYjUtMS42
LjMvc3JjLwpkb19jb25maWd1cmUK

--000e0cd20992a0de7004ab63bf24
Content-Type: application/octet-stream; name="krb5_1.6.3.bb"
Content-Disposition: attachment; filename="krb5_1.6.3.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_grsuvre12

REVTQ1JJUFRJT04gPSAiQSBuZXR3b3JrIGF1dGhlbnRpY2F0aW9uIHByb3RvY29sIgpIT01FUEFH
RSA9ICJodHRwOi8vd2ViLm1pdC5lZHUvS2VyYmVyb3MvIgpTRUNUSU9OID0gImNvbnNvbGUvbmV0
d29yayIKUFIgPSAicjYiCkxJQ0VOU0UgPSAiTUlUIgpERVBFTkRTID0gInBlcmwtbmF0aXZlIG5j
dXJzZXMgdXRpbC1saW51eCBlMmZzcHJvZ3MtbmF0aXZlIgoKTElDX0ZJTEVTX0NIS1NVTSA9ICJm
aWxlOi8vdXRpbC9zZW5kLXByL0NPUFlJTkc7bWQ1PTAwMGI2NWRkYzk3YzM3YWRmOWRlNGI5ZDlh
MDQzZDM4Igppbmhlcml0IGF1dG90b29scyBiaW5jb25maWcgZ2V0dGV4dCBwa2djb25maWcKClNS
Q19VUkkgPSAiaHR0cDovL3dlYi5taXQuZWR1L2tlcmJlcm9zL2Rpc3Qva3JiNS8xLjYva3JiNS0x
LjYuMy1zaWduZWQudGFyIFwKICAgICAgICAgICBmaWxlOi8vZml4LXVjbGliYy1ydXNlcnBhc3Mt
Y29sbGlzaW9uLnBhdGNoO2FwcGx5PW5vIFwKICAgICAgICAgICBmaWxlOi8vY29weXBlcm1zLnBh
dGNoO2FwcGx5PW5vIgoKUyA9ICIke1dPUktESVJ9LyR7UE59LSR7UFZ9L3NyYy8iCgpleHBvcnQg
VEFSR0VUX0xERkxBR1MgPSAiLVdsLC1PMSIKCiNXaWxsIGNsZWFuIHRoaXMgdXAuLi4KRVhUUkFf
T0VDT05GICs9ICIgLS13aXRob3V0LXRjbCBrcmI1X2N2X2F0dHJfY29uc3RydWN0b3JfZGVzdHJ1
Y3Rvcj15ZXMgYWNfY3ZfZnVuY19yZWdjb21wPXllcyBcCiAgICAgICAgICAgICAgICAgIGFjX2N2
X3ByaW50Zl9wb3NpdGlvbmFsPXllcyBhY19jdl9maWxlX19ldGNfZW52aXJvbm1lbnQ9eWVzIFwK
ICAgICAgICAgICAgICAgICAgYWNfY3ZfZmlsZV9fZXRjX1RJTUVaT05FPW5vIC0td2l0aC1zeXN0
ZW0tZXQgXCAKIgpDRkxBR1NfYXBwZW5kICs9ICItRERFU1RSVUNUT1JfQVRUUl9XT1JLUz0xIC1J
JHtTVEFHSU5HX0lOQ0RJUn0vZXQiCkxERkxBR1NfYXBwZW5kICs9ICItbHB0aHJlYWQiCgpGSUxF
U18ke1BOfS1kb2MgKz0gL3Vzci9zaGFyZS9leGFtcGxlcwoKa3JiNV9kb191bnBhY2soKSB7Cgl0
YXIgeHpmICR7V09SS0RJUn0va3JiNS0xLjYuMy50YXIuZ3ogLUMgJHtXT1JLRElSfS8KCXBhdGNo
IC1kICR7U30gLXAxIDwgJHtXT1JLRElSfS9maXgtdWNsaWJjLXJ1c2VycGFzcy1jb2xsaXNpb24u
cGF0Y2gKCXBhdGNoIC1kICR7U30gLXAxIDwgJHtXT1JLRElSfS9jb3B5cGVybXMucGF0Y2gKfQoK
cHl0aG9uIGRvX3VucGFjaygpIHsKCWJiLmJ1aWxkLmV4ZWNfZnVuYygnYmFzZV9kb191bnBhY2sn
LCBkKQoJYmIuYnVpbGQuZXhlY19mdW5jKCdrcmI1X2RvX3VucGFjaycsIGQpCn0KCiNkb19jb25m
aWd1cmUoKSB7CiMJb2VfcnVuY29uZgojfQoKZG9faW5zdGFsbF9hcHBlbmQgKCkgewoJbXYgJHtE
fSR7YmluZGlyfS9mdHAgJHtEfSR7YmluZGlyfS9mdHAuJHtQTn0KCW12ICR7RH0ke3NiaW5kaXJ9
L2Z0cGQgJHtEfSR7c2JpbmRpcn0vZnRwZC4ke1BOfQoJbXYgJHtEfSR7YmluZGlyfS90ZWxuZXQg
JHtEfSR7YmluZGlyfS90ZWxuZXQuJHtQTn0KCW12ICR7RH0ke3NiaW5kaXJ9L3RlbG5ldGQgJHtE
fSR7c2JpbmRpcn0vdGVsbmV0ZC4ke1BOfQp9Cgpwa2dfcG9zdGluc3RfJHtQTn0gKCkgewojIS9i
aW4vc2gKCXVwZGF0ZS1hbHRlcm5hdGl2ZXMgLS1pbnN0YWxsICR7YmluZGlyfS9mdHAgZnRwIGZ0
cC4ke1BOfSAxMDAKCXVwZGF0ZS1hbHRlcm5hdGl2ZXMgLS1pbnN0YWxsICR7c2JpbmRpcn0vZnRw
ZCBmdHBkIGZ0cGQuJHtQTn0gMTAwCgl1cGRhdGUtYWx0ZXJuYXRpdmVzIC0taW5zdGFsbCAke2Jp
bmRpcn0vdGVsbmV0IHRlbG5ldCB0ZWxuZXQuJHtQTn0gMTAwCgl1cGRhdGUtYWx0ZXJuYXRpdmVz
IC0taW5zdGFsbCAke3NiaW5kaXJ9L3RlbG5ldGQgdGVsbmV0ZCB0ZWxuZXRkLiR7UE59IDEwMAp9
Cgpwa2dfcHJlcm1fJHtQTn0gKCkgewojIS9iaW4vc2gKCXVwZGF0ZS1hbHRlcm5hdGl2ZXMgLS1y
ZW1vdmUgZnRwIGZ0cC4ke1BOfSAxMDAKCXVwZGF0ZS1hbHRlcm5hdGl2ZXMgLS1yZW1vdmUgZnRw
ZCBmdHBkLiR7UE59IDEwMAoJdXBkYXRlLWFsdGVybmF0aXZlcyAtLXJlbW92ZSB0ZWxuZXQgdGVs
bmV0LiR7UE59IDEwMAoJdXBkYXRlLWFsdGVybmF0aXZlcyAtLXJlbW92ZSB0ZWxuZXRkIHRlbG5l
dGQuJHtQTn0gMTAwCn0KCmRvX2luc2F0bGwoKSB7CglvZV9saWJpbnN0YWxsIC1zbyAtQyB1dGls
L3N1cHBvcnQgbGlia3JiNXN1cHBvcnQgJHtTVEFHSU5HX0xJQkRJUn0KCW9lX2xpYmluc3RhbGwg
LXNvIC1DIHV0aWwvZXQgbGliY29tX2VyciAke1NUQUdJTkdfTElCRElSfQoJb2VfbGliaW5zdGFs
bCAtc28gLUMgbGliL2NyeXB0byBsaWJrNWNyeXB0byAke1NUQUdJTkdfTElCRElSfQoJb2VfbGli
aW5zdGFsbCAtc28gLUMgbGliL2tyYjUgbGlia3JiNSAke1NUQUdJTkdfTElCRElSfQoJb2VfbGli
aW5zdGFsbCAtc28gLUMgbGliL2RlczQyNSBsaWJkZXM0MjUgJHtTVEFHSU5HX0xJQkRJUn0KCW9l
X2xpYmluc3RhbGwgLXNvIC1DIGxpYi9rcmI0IGxpYmtyYjQgJHtTVEFHSU5HX0xJQkRJUn0KCW9l
X2xpYmluc3RhbGwgLXNvIC1DIGxpYi9nc3NhcGkgbGliZ3NzYXBpX2tyYjUgJHtTVEFHSU5HX0xJ
QkRJUn0KCW9lX2xpYmluc3RhbGwgLXNvIC1DIGxpYi9ycGMgbGliZ3NzcnBjICR7U1RBR0lOR19M
SUJESVJ9CglvZV9saWJpbnN0YWxsIC1zbyAtQyBsaWIva2RiIGxpYmtkYjUgJHtTVEFHSU5HX0xJ
QkRJUn0KCW9lX2xpYmluc3RhbGwgLXNvIC1DIGxpYi9rYWRtNS9jbG50IGxpYmthZG01Y2xudCAk
e1NUQUdJTkdfTElCRElSfQoJb2VfbGliaW5zdGFsbCAtc28gLUMgbGliL2thZG01L3NydiBsaWJr
YWRtNXNydiAke1NUQUdJTkdfTElCRElSfQoKCWluc3RhbGwgLWQgJHtTVEFHSU5HX0lOQ0RJUn0v
a3JiNQoJZm9yIFggaW4ga3JiNS5oIGxvY2F0ZV9wbHVnaW4uaAoJZG8KCQlpbnN0YWxsIC1tIDA2
NDQgJHtTfS9pbmNsdWRlL2tyYjUvJFggJHtTVEFHSU5HX0lOQ0RJUn0va3JiNS8kWAoJZG9uZQoK
CWluc3RhbGwgLWQgJHtTVEFHSU5HX0lOQ0RJUn0vZ3NzYXBpCglmb3IgWCBpbiBnc3NhcGlfZ2Vu
ZXJpYy5oIGdzc2FwaS5oIGdzc2FwaV9rcmI1LmgKCWRvCgkJaW5zdGFsbCAtbSAwNjQ0ICR7U30v
aW5jbHVkZS9nc3NhcGkvJFggJHtTVEFHSU5HX0lOQ0RJUn0vZ3NzYXBpLyRYCglkb25lCglpbnN0
YWxsIC1tIDA2NDQgJHtTfS9saWIvZ3NzYXBpL21lY2hnbHVlL21lY2hnbHVlLmggJHtTVEFHSU5H
X0lOQ0RJUn0vZ3NzYXBpL21lY2hnbHVlLmgKCglpbnN0YWxsIC1kICR7U1RBR0lOR19JTkNESVJ9
L2tlcmJlcm9zSVYKCWZvciBYIGluIGtyYi5oIGRlcy5oIG1pdC1jb3B5cmlnaHQuaCBrcmJfZXJy
Lmgga2FkbV9lcnIuaAoJZG8KCQlpbnN0YWxsIC1tIDA2NDQgJHtTfS9pbmNsdWRlL2tlcmJlcm9z
SVYvJFggJHtTVEFHSU5HX0lOQ0RJUn0va2VyYmVyb3NJVi8kWAoJZG9uZQoKCWluc3RhbGwgLWQg
JHtTVEFHSU5HX0lOQ0RJUn0vZ3NzcnBjCglmb3IgWCBpbiBhdXRoLmggYXV0aF9nc3MuaCBhdXRo
X2dzc2FwaS5oIGF1dGhfdW5peC5oIGNsbnQuaCBuZXRkYi5oIHBtYXBfY2xudC5oIHBtYXBfcHJv
dC5oIHBtYXBfcm10LmggcmVuYW1lLmggcnBjLmggcnBjX21zZy5oIHN2Yy5oIHN2Y19hdXRoLmgg
eGRyLmggdHlwZXMuaAoJZG8KCQlpbnN0YWxsIC1tIDA2NDQgJHtTfS9pbmNsdWRlL2dzc3JwYy8k
WCAke1NUQUdJTkdfSU5DRElSfS9nc3NycGMvJFgKCWRvbmUKCgkjIGNvbV9lcnIuaCBuZWVkcyB0
byBiZSBhZGRlZCBoZXJlIGlmIHlvdSBjaG9vc2UgdG8gdXNlIHRoaXMgYnVpbHRpbgoJZm9yIFgg
aW4ga3JiNS5oIHByb2ZpbGUuaCBnc3NhcGkuaAoJZG8KCQlpbnN0YWxsIC1tIDA2NDQgJHtTfS9p
bmNsdWRlLyRYICR7U1RBR0lOR19JTkNESVJ9LyRYCglkb25lCn0KClNSQ19VUklbbWQ1c3VtXSA9
ICIyZGMxMzA3Njg2ZWIxYzJiZjFhYjA4ZWE4MDVkYWQ0NiIKU1JDX1VSSVtzaGEyNTZzdW1dID0g
IjdhMWJkN2Q0YmQzMjY4MjhjOGVlMzgyZWQyYjY5Y2NkNmM1ODc2MjYwMWRmODk3ZDZhMzIxNjlk
ODQ1ODNkMmEiCg==

--000e0cd20992a0de7004ab63bf24--
