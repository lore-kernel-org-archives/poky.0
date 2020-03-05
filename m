Received: from wp148.webpack.hosteurope.de (wp148.webpack.hosteurope.de [80.237.132.155])
 by mx.groups.io with SMTP id smtpd.web12.12583.1583415982568494264
 for <poky@lists.yoctoproject.org>;
 Thu, 05 Mar 2020 05:46:23 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: berg-solutions.de, ip: 80.237.132.155, mailfrom: rberg@berg-solutions.de)
Received: from ip1f126570.dynamic.kabel-deutschland.de ([31.18.101.112] helo=[10.8.0.2]); authenticated
	by wp148.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1j9qpQ-0002BP-6T; Thu, 05 Mar 2020 14:46:20 +0100
From: "Roelof" <rberg@berg-solutions.de>
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: How to see the parameters of a shell command execution (do_rootfs, qemu, update_font_cache) ?
Message-Id: <F09F2AFF-8B49-4842-A241-305538DFAA66@berg-solutions.de>
References: <9BF44414-52D8-4025-BCC2-A797002C99F2@berg-solutions.de>
To: poky@lists.yoctoproject.org
Date: Thu, 5 Mar 2020 14:46:18 +0100
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-bounce-key: webpack.hosteurope.de;rberg@berg-solutions.de;1583415982;f8094641;
X-HE-SMSGID: 1j9qpQ-0002BP-6T
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1FE32079-5A0D-43C6-BE48-070D1C162E9F"

--Apple-Mail=_1FE32079-5A0D-43C6-BE48-070D1C162E9F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> =3D=3D=3D QUESTION =3D=3D=3D
>=20
> A shell command (qemu) fails in my build in the poky build step =
do_rootfs. How can I find out which shell command and parameters exactly =
were called ?
>=20
> =3D=3D=3D CONTEXT =3D=3D=3D
>=20
> I=E2=80=99m building a Yocto image (derived from Phytec Yoghurt, which =
is derived from Poky) for a custom i.mx6 PCB that runs a QT gui that =
should display text. I don=E2=80=99t see any text, maybe the fonts are =
missing.
>=20
> =3D=3D=3D TRACKING DOWN =3D=3D=3D
>=20
> My bitbake build generates warnings:
>   WARNING: The postinstall intercept hook =E2=80=9Aupdate_font_cache=E2=80=
=98 failed, details in log.do_rootfs
> (Same warning for =E2=80=9Aupdate_icon_cache=E2=80=98 and =
'update_pixbuf_cache=E2=80=99)
>=20
> (Note: I added DEPENDS =3D =E2=80=9Eqemuwrapper-cross=E2=80=9C to my =
main image .bb script. And I set FC_DEBUG to 16 in fontcache.bbclass.)
>=20
> When I track this warning down I see that the execution of qemu fails =
during update_font_cache. Now I=E2=80=99d like to see the command line =
of the failing qemu-call. Is this possible ?
>=20
> Log:
>=20
> =3D Schnipp =3D=3D=3D=3D=3D
> NOTE: Exit code 1. Output:
> usage: qemu-arm [options] program [arguments]
> Linux CPU emulator (compiled for arm emulation)
>=20
> Options and associated environment variables:
>=20
> Argument      Env-variable      Description
> -h                        prints this help
>=20
> ...
>=20
> =3D Schnapp =3D=3D=3D=3D=3D
>=20
> =3D=3D=3D ATTEMPTS SO FAR =3D=3D=3D=3D=3D=3D
>=20
> In my attempts I came to a python script =
postinsts-intercept/update_font_cache:
>=20
> PSEUDO_UNLOAD=3D1 qemuwrapper -L $D -E =
LD_LIBRARY_PATH=3D$D/${libdir}:$D/${base_libdir} \
>                                         -E ${fontconfigcacheenv} =
$D${bindir}/fc-cache --sysroot=3D$D --system-only =
${fontconfigcacheparams}
> chown -R root:root $D${fontconfigcachedir}
>=20
> My next step would be to add debug output to this file (via Yocto =
means), but I don=E2=80=99t even find =E2=80=9Efontconfig=E2=80=9C when =
I grep through all *.bb, *,conf, *.bbapend and *.bbclass and don=E2=80=99t=
 find the place where to add debug commands inside meta-layers that end =
up in this update_font_cache file.
>=20
> I also looked at the python code of do_rootfs and it=E2=80=99s very =
generic, executing a list with all sorts of jobs, and I didn=E2=80=99t =
see a place where I could add debug output there as well.
>=20
> =3D=3D=3D QUESTION AGAIN =3D=3D=3D=3D=3D=3D
>=20
> How can I find out which shell command and parameters exactly were =
called that led to the log SchnippSchnapp above ?=20
>=20
> Thank you very very much,
> Roelof
>=20


--Apple-Mail=_1FE32079-5A0D-43C6-BE48-070D1C162E9F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space;" class=3D""><div =
class=3D"">=3D=3D=3D QUESTION =3D=3D=3D</div><div class=3D""><br =
class=3D""></div><div class=3D""><span style=3D"caret-color: rgb(0, 0, =
0);" class=3D"">A shell command (qemu) fails in my build in the poky =
build step do_rootfs. How can I find out which shell command and =
parameters exactly were called ?</span></div><div class=3D""><br =
class=3D""></div><div class=3D"">=3D=3D=3D CONTEXT =3D=3D=3D</div><div =
class=3D""><br class=3D""></div><div class=3D"">I=E2=80=99m building a =
Yocto image (derived from Phytec Yoghurt, which is derived from Poky) =
for a custom i.mx6 PCB that runs a QT gui that should display text. I =
don=E2=80=99t see any text, maybe the fonts are missing.</div><div =
class=3D""><br class=3D""></div><div class=3D"">=3D=3D=3D TRACKING DOWN =
=3D=3D=3D</div><div class=3D""><br class=3D""></div>My bitbake build =
generates warnings:<div class=3D"">&nbsp; WARNING: The postinstall =
intercept hook =E2=80=9Aupdate_font_cache=E2=80=98 failed, details in =
log.do_rootfs</div><div class=3D"">(Same warning for =
=E2=80=9Aupdate_icon_cache=E2=80=98 and =
'update_pixbuf_cache=E2=80=99)</div><div class=3D""><br =
class=3D""></div><div class=3D""><font class=3D"">(Note: I added DEPENDS =
=3D&nbsp;=E2=80=9Eqemuwrapper-cross=E2=80=9C to my main image .bb =
script. And I set FC_DEBUG to 16 in fontcache.bbclass.)</font></div><div =
class=3D""><span style=3D"caret-color: rgb(0, 0, 0);" class=3D""><br =
class=3D""></span></div><div class=3D"">When I track this warning down I =
see that the execution of qemu fails during update_font_cache. Now I=E2=80=
=99d like to see the command line of the failing qemu-call. Is this =
possible ?<br class=3D""><div class=3D""><div class=3D""><br =
class=3D""></div><div class=3D"">Log:</div><div class=3D""><br =
class=3D""></div><div class=3D"">=3D Schnipp =3D=3D=3D=3D=3D</div><div =
class=3D"">NOTE: Exit code 1. Output:</div><div class=3D"">usage: =
qemu-arm [options] program [arguments]</div><div class=3D"">Linux CPU =
emulator (compiled for arm emulation)</div><div class=3D""><br =
class=3D""></div><div class=3D"">Options and associated environment =
variables:</div><div class=3D""><br class=3D""></div><div =
class=3D"">Argument &nbsp; &nbsp; &nbsp;Env-variable &nbsp; &nbsp; =
&nbsp;Description</div><div class=3D"">-h &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;prints this =
help</div><div class=3D""><br class=3D""></div><div =
class=3D"">...</div><div class=3D""><br class=3D""></div></div></div><div =
class=3D"">=3D Schnapp =3D=3D=3D=3D=3D</div><div class=3D""><br =
class=3D""></div><div class=3D"">=3D=3D=3D ATTEMPTS SO FAR =
=3D=3D=3D=3D=3D=3D</div><div class=3D""><br class=3D""></div><div =
class=3D"">In my attempts I came to&nbsp;<span style=3D"caret-color: =
rgb(0, 0, 0);" class=3D"">a python script =
postinsts-intercept/update_font_cache:</span></div><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0);" class=3D""><br =
class=3D""></span></div><div class=3D""><span style=3D"caret-color: =
rgb(0, 0, 0);" class=3D""><div class=3D"">PSEUDO_UNLOAD=3D1 qemuwrapper =
-L $D -E LD_LIBRARY_PATH=3D$D/${libdir}:$D/${base_libdir} \</div><div =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; -E ${fontconfigcacheenv} $D${bindir}/fc-cache --sysroot=3D$D=
 --system-only ${fontconfigcacheparams}</div><div class=3D"">chown -R =
root:root $D${fontconfigcachedir}</div><div class=3D""><br =
class=3D""></div><div class=3D"">My next step would be to add debug =
output to this file (via Yocto means), but I don=E2=80=99t even find =
=E2=80=9Efontconfig=E2=80=9C when I grep through all *.bb, *,conf, =
*.bbapend and *.bbclass and don=E2=80=99t find the place where to add =
debug commands inside meta-layers that end up in this update_font_cache =
file.</div><div class=3D""><br class=3D""></div><div class=3D"">I also =
looked at the python code of do_rootfs and it=E2=80=99s very generic, =
executing a list with all sorts of jobs, and I didn=E2=80=99t see a =
place where I could add debug output there as =
well.</div></span></div><div class=3D""><br class=3D""></div><div =
class=3D""><div style=3D"caret-color: rgb(0, 0, 0);" class=3D"">=3D=3D=3D =
QUESTION AGAIN =3D=3D=3D=3D=3D=3D</div></div><div style=3D"caret-color: =
rgb(0, 0, 0);" class=3D""><br class=3D""></div><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0);" class=3D"">How can I find out which =
shell command and parameters exactly were called that led to the log =
SchnippSchnapp above ?&nbsp;</span></div><div class=3D""><br =
class=3D""></div><div class=3D"">Thank you very very much,</div><div =
class=3D"">Roelof</div><div class=3D""><br =
class=3D""></div></div></div></blockquote></div><br =
class=3D""></body></html>=

--Apple-Mail=_1FE32079-5A0D-43C6-BE48-070D1C162E9F--
