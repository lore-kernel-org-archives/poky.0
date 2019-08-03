Return-Path: <contact@nicheconsult.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E1B9E00C87; Sat,  3 Aug 2019 10:55:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [122.171.67.178 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [217.26.49.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mxout012.mail.hostpoint.ch (mxout012.mail.hostpoint.ch
	[217.26.49.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FA60E00C11
	for <poky@yoctoproject.org>; Sat,  3 Aug 2019 10:55:40 -0700 (PDT)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
	by mxout012.mail.hostpoint.ch with esmtp (Exim 4.92 (FreeBSD))
	(envelope-from <contact@nicheconsult.in>)
	id 1htyFm-000KYx-GC; Sat, 03 Aug 2019 19:55:38 +0200
Received: from [122.171.67.178] (helo=[192.168.1.3])
	by asmtp013.mail.hostpoint.ch with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91 (FreeBSD))
	(envelope-from <contact@nicheconsult.in>)
	id 1htyFl-0007Kg-R6; Sat, 03 Aug 2019 19:55:38 +0200
X-Authenticated-Sender-Id: contact@nicheconsult.in
From: Niche Consulting India <contact@nicheconsult.in>
Message-Id: <447FDFDA-74E2-42CF-98E2-9B32F04AA758@nicheconsult.in>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Sat, 3 Aug 2019 23:25:31 +0530
In-Reply-To: <F7CC2B89-FAF3-4031-BBCB-813D26C2F242@gmail.com>
To: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
References: <F7CC2B89-FAF3-4031-BBCB-813D26C2F242@gmail.com>
X-Mailer: Apple Mail (2.3273)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: do_image_wic cross-recipe task dependency affects recipe-sysroot
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 03 Aug 2019 17:55:42 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_BA7F572F-FC9E-4842-8AD5-6C627CE0B2B2"

--Apple-Mail=_BA7F572F-FC9E-4842-8AD5-6C627CE0B2B2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

ok i followed this link
https://jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html =
<https://jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html>

but the resulting image ins not booting up on rpi3 i.e only get red =
light. how do I diagonize or fix this issue?



> On 31-Jul-2019, at 11:34 PM, Jean-Francois Dagenais =
<jeff.dagenais@gmail.com> wrote:
>=20
> Hi all,
>=20
> I have a image recipe (myimage.bb with Wic FSTYPE) which will need to =
bundle a file built by another recipe (let's say myrecipe.bb which =
inherits swupdate.bbclass) in the boot partition.
>=20
> The boot partition is made by bootimg-partition.py through the wks =
file.
>=20
> I list my file (myrecipe.swu) in IMAGE_BOOT_FILES so bootimg-partition =
will add it.
>=20
> If I add "myrecipe" in EXTRA_IMAGEDEPENDS like one would think this =
was made for, a race occurs where there is no guarantee that =
myrecipe.swu will be ready in DEPLOYDIR when myimage:do_image_wic runs =
since EXTRA_IMAGEDEPENDS attaches myrecipe:do_populate_sysroot to =
myimage.do_image_complete. Thing is, myimage:do_image_complete depends =
on both do_image_wic and myrecipe:do_populate_sysroot equally, hence the =
race.
>=20
> This can be easily demonstrated by requesting "bitbake myimage -c =
do_image_wic" which, if myrecipy.swu is not already present in =
DEPLOYDIR, will fail 100% of the time.
>=20
> So here's my workaround which has worked well for quite a while:
>=20
> In myimage.bb:
>=20
> do_image_wic[depends] +=3D "myrecipe:do_image_swu"
>=20
> This works 100% of the time in that myrecipe.swu is always present =
before do_image_wic starts... GREAT!
>=20
> Recently we've started having sporadic build issues. I am trying to =
understand what is going on:
>=20
>=20
> NOTE: recipe myimage-1.0-r0: task do_image_wic: Started
> ERROR: myimage-1.0-r0 do_image_wic: Error executing a python function =
in exec_python_func() autogenerated:
>=20
> The stack trace of python calls that resulted in this =
exception/failure was:
> File: 'exec_python_func() autogenerated', lineno: 2, function: =
<module>
>     0001:
> *** 0002:extend_recipe_sysroot(d)
>     0003:
> File: =
'/builds/soft/yocto-mymachine/poky/meta/classes/staging.bbclass', =
lineno: 553, function: extend_recipe_sysroot
>     0549:                    dest =3D newmanifest[l]
>     0550:                    if l.endswith("/"):
>     0551:                        staging_copydir(l, targetdir, dest, =
seendirs)
>     0552:                        continue
> *** 0553:                    staging_copyfile(l, targetdir, dest, =
postinsts, seendirs)
>     0554:
>     0555:    bb.note("Installed into sysroot: %s" % str(msg_adding))
>     0556:    bb.note("Skipping as already exists in sysroot: %s" % =
str(msg_exists))
>     0557:
> File: =
'/builds/soft/yocto-mymachine/poky/meta/classes/staging.bbclass', =
lineno: 151, function: staging_copyfile
>     0147:        os.symlink(linkto, dest)
>     0148:        #bb.warn(c)
>     0149:    else:
>     0150:        try:
> *** 0151:            os.link(c, dest)
>     0152:        except OSError as err:
>     0153:            if err.errno =3D=3D errno.EXDEV:
>     0154:                bb.utils.copyfile(c, dest)
>     0155:            else:
> Exception: FileExistsError: [Errno 17] File exists: =
'/cache/build/mymachine/tmp/sysroots-components/aarch64/libgcc/usr/lib/aar=
ch64-mydistro-linux/8.2.0/crtbeginT.o' -> =
'/cache/build/mymachine/tmp/work/mymachine-mydistro-linux/myimage/1.0-r0/r=
ecipe-sysroot/usr/lib/aarch64-mydistro-linux/8.2.0/crtbeginT.o'
>=20
>=20
>=20
>=20
> Examining what is being installed by extend_recipe_sysroot, I realised =
that by doing do_image_wic[depends] +=3D "myrecipe:do_image_swu", the =
recipe-sysroot directory of myimage becomes huge. In fact, it seems that =
all the recursive target dependencies of myrecipe.bb (and the rootfs it =
bundles) are installed in myimage.bb's workdir!! Probably ultimately =
causing the conflicts I see above.
>=20
> These artifacts installed in myimage's recipe-sysroot, are completely =
useless to the work that myimage has to do (do_rootfs, do_image_wic, =
etc.)
>=20
> So back to my title: Is there a way to add a simple execution =
dependency between a task in one recipe and a task in another recipe, =
without affecting the dependent's recipe-sysroot?
>=20
> Thanks for the help!
>=20
> P.S.: Oh, and I tried changing myrecipe.bb (swu) for another, simpler, =
less deep recipe which also has a do_deploy step and outputs a file in =
deploy dir. I do indeed get much less useless things added to myimage's =
recipe-sysroot, but I still get the other recipe's dependencies.
> --=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--Apple-Mail=_BA7F572F-FC9E-4842-8AD5-6C627CE0B2B2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">ok i followed this link<div class=3D""><a =
href=3D"https://jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html" =
class=3D"">https://jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html=
</a></div><div class=3D""><br class=3D""></div><div class=3D"">but the =
resulting image ins not booting up on rpi3 i.e only get red light. how =
do I diagonize or fix this issue?</div><div class=3D""><br =
class=3D""></div><div class=3D""><br class=3D""></div><div class=3D""><div=
 class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On 31-Jul-2019, at 11:34 PM, Jean-Francois Dagenais &lt;<a =
href=3D"mailto:jeff.dagenais@gmail.com" =
class=3D"">jeff.dagenais@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D"">Hi =
all,<br class=3D""><br class=3D"">I have a image recipe (myimage.bb with =
Wic FSTYPE) which will need to bundle a file built by another recipe =
(let's say myrecipe.bb which inherits swupdate.bbclass) in the boot =
partition.<br class=3D""><br class=3D"">The boot partition is made by =
bootimg-partition.py through the wks file.<br class=3D""><br class=3D"">I =
list my file (myrecipe.swu) in IMAGE_BOOT_FILES so bootimg-partition =
will add it.<br class=3D""><br class=3D"">If I add "myrecipe" in =
EXTRA_IMAGEDEPENDS like one would think this was made for, a race occurs =
where there is no guarantee that myrecipe.swu will be ready in DEPLOYDIR =
when myimage:do_image_wic runs since EXTRA_IMAGEDEPENDS attaches =
myrecipe:do_populate_sysroot to myimage.do_image_complete. Thing is, =
myimage:do_image_complete depends on both do_image_wic and =
myrecipe:do_populate_sysroot equally, hence the race.<br class=3D""><br =
class=3D"">This can be easily demonstrated by requesting "bitbake =
myimage -c do_image_wic" which, if myrecipy.swu is not already present =
in DEPLOYDIR, will fail 100% of the time.<br class=3D""><br class=3D"">So =
here's my workaround which has worked well for quite a while:<br =
class=3D""><br class=3D"">In myimage.bb:<br class=3D""><br =
class=3D"">do_image_wic[depends] +=3D "myrecipe:do_image_swu"<br =
class=3D""><br class=3D"">This works 100% of the time in that =
myrecipe.swu is always present before do_image_wic starts... GREAT!<br =
class=3D""><br class=3D"">Recently we've started having sporadic build =
issues. I am trying to understand what is going on:<br class=3D""><br =
class=3D""><br class=3D"">NOTE: recipe myimage-1.0-r0: task =
do_image_wic: Started<br class=3D"">ERROR: myimage-1.0-r0 do_image_wic: =
Error executing a python function in exec_python_func() =
autogenerated:<br class=3D""><br class=3D"">The stack trace of python =
calls that resulted in this exception/failure was:<br class=3D"">File: =
'exec_python_func() autogenerated', lineno: 2, function: =
&lt;module&gt;<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;0001:<br class=3D"">=
 *** 0002:extend_recipe_sysroot(d)<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;0003:<br class=3D"">File: =
'/builds/soft/yocto-mymachine/poky/meta/classes/staging.bbclass', =
lineno: 553, function: extend_recipe_sysroot<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;0549: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dest =3D newmanifest[l]<br =
class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;0550: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if l.endswith("/"):<br class=3D"">=
 &nbsp;&nbsp;&nbsp;&nbsp;0551: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;staging_co=
pydir(l, targetdir, dest, seendirs)<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;0552: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;continue<b=
r class=3D""> *** 0553: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;staging_copyfile(l, targetdir, =
dest, postinsts, seendirs)<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;0554:<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;0555: &nbsp;&nbsp;&nbsp;bb.note("Installed into =
sysroot: %s" % str(msg_adding))<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;0556: &nbsp;&nbsp;&nbsp;bb.note("Skipping as =
already exists in sysroot: %s" % str(msg_exists))<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;0557:<br class=3D"">File: =
'/builds/soft/yocto-mymachine/poky/meta/classes/staging.bbclass', =
lineno: 151, function: staging_copyfile<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;0147: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;os.symlink(linkto, dest)<br =
class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;0148: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#bb.warn(c)<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;0149: &nbsp;&nbsp;&nbsp;else:<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;0150: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;try:<br class=3D""> *** 0151: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;os.link(=
c, dest)<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;0152: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;except OSError as err:<br =
class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;0153: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if =
err.errno =3D=3D errno.EXDEV:<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;0154: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;bb.utils.copyfile(c, dest)<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;0155: =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else:<br=
 class=3D"">Exception: FileExistsError: [Errno 17] File exists: =
'/cache/build/mymachine/tmp/sysroots-components/aarch64/libgcc/usr/lib/aar=
ch64-mydistro-linux/8.2.0/crtbeginT.o' -&gt; =
'/cache/build/mymachine/tmp/work/mymachine-mydistro-linux/myimage/1.0-r0/r=
ecipe-sysroot/usr/lib/aarch64-mydistro-linux/8.2.0/crtbeginT.o'<br =
class=3D""><br class=3D""><br class=3D""><br class=3D""><br =
class=3D"">Examining what is being installed by extend_recipe_sysroot, I =
realised that by doing do_image_wic[depends] +=3D =
"myrecipe:do_image_swu", the recipe-sysroot directory of myimage becomes =
huge. In fact, it seems that all the recursive target dependencies of =
myrecipe.bb (and the rootfs it bundles) are installed in myimage.bb's =
workdir!! Probably ultimately causing the conflicts I see above.<br =
class=3D""><br class=3D"">These artifacts installed in myimage's =
recipe-sysroot, are completely useless to the work that myimage has to =
do (do_rootfs, do_image_wic, etc.)<br class=3D""><br class=3D"">So back =
to my title: Is there a way to add a simple execution dependency between =
a task in one recipe and a task in another recipe, without affecting the =
dependent's recipe-sysroot?<br class=3D""><br class=3D"">Thanks for the =
help!<br class=3D""><br class=3D"">P.S.: Oh, and I tried changing =
myrecipe.bb (swu) for another, simpler, less deep recipe which also has =
a do_deploy step and outputs a file in deploy dir. I do indeed get much =
less useless things added to myimage's recipe-sysroot, but I still get =
the other recipe's dependencies.<br class=3D"">-- <br =
class=3D"">_______________________________________________<br =
class=3D"">poky mailing list<br class=3D""><a =
href=3D"mailto:poky@yoctoproject.org" =
class=3D"">poky@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/poky<br =
class=3D""></div></div></blockquote></div><br =
class=3D""></div></div></body></html>=

--Apple-Mail=_BA7F572F-FC9E-4842-8AD5-6C627CE0B2B2--
