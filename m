Return-Path: <vsailub4u@gmail.com>
Received: from mail-px0-f169.google.com (mail-px0-f169.google.com
	[209.85.212.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C9014C80A70
	for <poky@yoctoproject.org>; Wed, 13 Apr 2011 01:02:58 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi9 with SMTP id 9so154734pxi.28
	for <poky@yoctoproject.org>; Tue, 12 Apr 2011 23:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=mw8J+apfPcK5DEoVDRhpqrOb+sXr+zbEWjaTatUYA3c=;
	b=AcOVHoQ1VZPPd2YqbzRN8sdfaJXznPjC9ySMlWYwO/bxWfNqXl5wbpa50wSJ9EV8hB
	S0prgp2cpXEgRDn3djyDDN1TPNURW2jjvRMi5Gn+N4S+FeXJoSRkDK3uGpgD2hWfAeCM
	pzZ74b9pq5RH1UGCOw349bfAy1xDVw0jWufNs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=o5gfzMuoL3uLNLPqNFw48u+/6ndl5+BRpHImGY2hQFljoObwvOvSVOJchmoBXgMfJI
	kUDgvH40hhujkbpoFW3aaAYhQpKIFNo5lnlLzUHurz2j+4fR25iXICVHR/0+7bJfIAOY
	SdifjZe3Zewxa0ihtA76nRlBvhtk1eMz/iU4c=
MIME-Version: 1.0
Received: by 10.142.136.18 with SMTP id j18mr1920474wfd.284.1302674578465;
	Tue, 12 Apr 2011 23:02:58 -0700 (PDT)
Received: by 10.142.44.5 with HTTP; Tue, 12 Apr 2011 23:02:58 -0700 (PDT)
In-Reply-To: <BANLkTikBJb+jvXXgWisKzF1BQkT-uStFPw@mail.gmail.com>
References: <BANLkTikBJb+jvXXgWisKzF1BQkT-uStFPw@mail.gmail.com>
Date: Wed, 13 Apr 2011 11:32:58 +0530
Message-ID: <BANLkTi=i8ZiimjrrZ-Bmz6N8cyCvcz6M4Q@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: poky@yoctoproject.org
Subject: Unable to find package dbus-glib!
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
X-List-Received-Date: Wed, 13 Apr 2011 06:02:59 -0000
Content-Type: multipart/alternative; boundary=000e0cd1482c81e30304a0c68fc1

--000e0cd1482c81e30304a0c68fc1
Content-Type: text/plain; charset=ISO-8859-1

HI,

I am trying to port Poky to the "sandybridge platform" and  using the branch
"bernard-cur" for "fishriver" machine.
I am running Ubuntu 10.04 on 64 bit machine.
I get an error saying that it's* "unable to find the package dbus-glib*" ,
even though it appears to exist.
I've tried rebuilding dbus-glib, but the problem remains.  Both the ipk and
rpm are present in the deploy directory:

my .bb file is for dbus-glib is dbus-glib_0.92.bb

It should have to generate the rpms as follows

libdbus-glib-0.92-r0.atom.rpm                  ->
libdbus-glib*-1-2-*0.92-r0.atom.rpm
we can see 1-2 is extra in the generated rpms
libdbus-glib-dbg-0.92-r0.atom.rpm
libdbus-glib-dev-0.92-r0.atom.rpm
libdbus-glib-doc-0.92-r0.atom.rpm

instead of the following

libdbus-glib*-1-2-*0.92-r0.atom.rpm
libdbus-glib*-1*-dbg-0.92-r0.atom.rpm
libdbus-glib*-1-*dev-0.92-r0.atom.rpm
libdbus-gli*b-1*-doc-0.92-r0.atom.rpm.

How it adds the some extra numbers for the existing the ones. It is not
generating the right rpms ,
So I get the error like "Unable to find the package ....!"

Like this I got the error  for many packages.
the generated rpms for the packages as follows

 libx11  --  the generated rpm should be like    "*
libx11-1.3.4.-r0.atom.rpm"*  instead of the following
     libx11*-6-*1.3.4-r0.atom.rpm                              --extra "6"
is added
     libx11-dbg-1.3.4-r0.atom.rpm
     libx11-dev-1.3.4-r0.atom.rpm
     libx11-doc-1.3.4-r0.atom.rpm

libxi   -- libxi-1.4.0.bb   -- "*libxi-1.4.0-r0.atom.rpm*"  instead of the
following
     libxi*6*-1.4.0-r0.atom.rpm                                --extra "6"
is added
     libxi-dbg-1.4.0-r0.atom.rpm
     libxi-dev-1.4.0-r0.atom.rpm
     libxi-doc-1.4.0-r0.atom.rpm

libxfixes  --libxfixes_4.0.5.bb  --* "libxfixes-4.0.5-r0.atom.rpm *"
    libxfixes*3*-4.0.5-r0.atom.rpm                    --extra "3" is added
    libxfixes-dbg-4.0.5-r0.atom.rpm
    libxfixes-dev-4.0.5-r0.atom.rpm
    libxfixes-doc-4.0.5-r0.atom.rpm

libxt    --  libxt_1.0.9.bb     -- * "libxt-1.0.9-r0.atom.rpm*"
    libxt*6-*1.0.9-r0.atom.rpm                    --extra "6" is added
    libxt-dbg-1.0.9-r0.atom.rpm
    libxt-dev-1.0.9-r0.atom.rpm
   libxt-doc-1.0.9-r0.atom.rpm

libxscrnsaver   --libxscrnsaver_1.2.1.bb   --"*libxss-1.2.1-r0.atom.rpm*"
   libxs*s1-1*.2.1-r0.atom.rpm                    --extra "1" is added
   libxss-dbg-1.2.1-r0.atom.rpm
   libxss-dev-1.2.1-r0.atom.rpm
   libxss-doc-1.2.1-r0.atom.rpm

gtk+    --gtk+-2.22.1.bb     --*"gtk+-2.22.1-r2.atom.rpm "*
   gtk+-dbg-2.22.1-r2.atom.rpm                     --rpm is not generated
for the package gtk+
   gtk+-dev-2.22.1-r2.atom.rpm
   gtk+-doc-2.22.1-r2.atom.rpm

libxdmcp   --  libxdmcp-1.1.0_bb    --  "*libxdmcp-1.1.0-r0.atom.rpm"*
  libxdmcp*6*-1.1.0-r0.atom.rpm                    --extra "6" is added
  libxdmcp-dbg-1.1.0-r0.atom.rpm
  libxdmcp-dev-1.1.0-r0.atom.rpm
  libxdmcp-doc-1.1.0-r0.atom.rpm

xcb-proto
   xcb-proto-dbg-1.6-r0.atom.rpm                    -- --rpm is not
generated for the package xcb-proto
   xcb-proto-dev-1.6-r0.atom.rpm


For the wrong generated rpms. I got the error "*Unable to find package
libx11!"

Please Can anyone tell me How it is generating the wrong rpms.
*

*Error log:*

NOTE: Running task 3719 of 3748 (ID: 193,
/home/sailaja/poky_intel/meta/recipes-core/images/poky-image-minimal-logi.bb,
do_rootfs)
NOTE: package poky-image-minimal-logi-1.0-r0: task do_rootfs: Started
ERROR: '/home/sailaja/poky_intel/meta/recipes-core/images/
poky-image-minimal-logi.bb' failed
ERROR: Function 'do_rootfs' failed (see
/home/sailaja/poky_intel/build/tmp/work/fishriver-poky-linux/poky-image-minimal-logi-1.0-r0/temp/log.do_rootfs.2037
for further information)
ERROR: Logfile of failure stored in:
/home/sailaja/poky_intel/build/tmp/work/fishriver-poky-linux/poky-image-minimal-logi-1.0-r0/temp/log.do_rootfs.2037
Log data follows:
| Generating solve db for
/home/sailaja/poky_intel/build/tmp/deploy/rpm/fishriver...
|    total:               1      0.000000 MB      3.013772 secs
|    fingerprint:       822      0.008930 MB      0.152614 secs
|    install:           274      0.000000 MB      0.388524 secs
|    dbadd:             274      0.000000 MB      0.377341 secs
|    dbget:            2877      0.000000 MB      0.006442 secs
|    dbput:             274      1.447484 MB      0.308546 secs
|    readhdr:          2741      2.837096 MB      1.932322 secs
|    hdrload:          1370      4.223108 MB      0.009178 secs
|    hdrget:          49680      0.000000 MB      0.075024 secs
| Generating solve db for
/home/sailaja/poky_intel/build/tmp/deploy/rpm/atom...
|    total:               1      0.000000 MB     46.128155 secs
|    fingerprint:     12540      0.134432 MB      1.410636 secs
|    install:          4180      0.000000 MB      6.838201 secs
|    dbadd:            4180      0.000000 MB      6.676840 secs
|    dbget:           43755      0.198736 MB      0.112596 secs
|    dbput:            4180     18.697532 MB      5.822859 secs
|    readhdr:         41801     37.298306 MB     25.879197 secs
|    hdrload:         24296     70.267858 MB      0.163661 secs
|    hdrget:         748457      0.000000 MB      1.154741 secs
| Generating solve db for
/home/sailaja/poky_intel/build/tmp/deploy/rpm/all...
|    total:               1      0.000000 MB      0.228913 secs
|    fingerprint:        69      0.000428 MB      0.001217 secs
|    install:            23      0.000000 MB      0.059673 secs
|    dbadd:              23      0.000000 MB      0.056252 secs
|    dbget:             216      0.000000 MB      0.000497 secs
|    dbput:              23      0.087208 MB      0.022864 secs
|    readhdr:           231      0.174824 MB      0.098029 secs
|    hdrload:           118      0.265220 MB      0.000887 secs
|    hdrget:           3806      0.000000 MB      0.006065 secs
| Generating solve db for
/home/sailaja/poky_intel/build/tmp/deploy/rpm/all...
| Processing task-poky-boot...
| Processing psplash...
| Processing xserver-xf86-dri-lite...
| Processing xf86-input-keyboard...
| Processing xf86-input-mouse...
| Processing xf86-video-intel...
| Processing xinit...
| Processing xauth...
| Processing openssl...
| Processing liberation-fonts...
| Processing xrandr...
| Processing gtk-engines...
| Processing shared-mime-info...
| Processing gnome-keyring...
| Processing bzip2...
| Processing icu...
| Processing module-init-tools...
| Processing alsa-utils...
| Processing xcb-util...
| Processing libxdmcp...
| Processing dbus-glib...
| Unable to find package dbus-glib!
| ERROR: Function 'do_rootfs' failed (see
/home/sailaja/poky_intel/build/tmp/work/fishriver-poky-linux/poky-image-minimal-logi-1.0-r0/temp/log.do_rootfs.2037
for further information)
NOTE: package poky-image-minimal-logi-1.0-r0: task do_rootfs: Failed
ERROR: Task 193 (/home/sailaja/poky_intel/meta/recipes-core/images/
poky-image-minimal-logi.bb, do_rootfs) failed with exit code '1'

Please Can anyone help me in finding the solution.



-- 
Thanks & Regards,
SAI

--000e0cd1482c81e30304a0c68fc1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_quote">HI,<br><br>I am trying <span>to</span> port =
Poky <span>to</span>
 the &quot;sandybridge platform&quot; and=A0 using the branch &quot;bernard=
-cur&quot; for &quot;fishriver&quot; machine.<br>I am running Ubuntu 10.04 =
on 64 bit machine.<br>I get an error saying that it&#39;s<i> &quot;<span>un=
able</span> <span>to</span> <span>find</span> the <span>package</span> dbus=
-glib</i>&quot; , even though it appears <span>to</span> exist.<br>

I&#39;ve tried rebuilding dbus-glib, but the problem remains. =A0Both the i=
pk and rpm are present in the deploy directory:<br><br>my .bb file is for d=
bus-glib is <a href=3D"http://dbus-glib_0.92.bb">dbus-glib_0.92.bb</a> <br>
<br>It should have to generate the rpms as follows <br><br>libdbus-glib-0.9=
2-r0.atom.rpm=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 -&gt;=A0=
=A0 libdbus-glib<b>-1-2-</b>0.92-r0.atom.rpm=A0=A0=A0=A0 we can see 1-2 is =
extra in the generated rpms<br>
libdbus-glib-dbg-0.92-r0.atom.rpm=A0 <br>
libdbus-glib-dev-0.92-r0.atom.rpm <br>
libdbus-glib-doc-0.92-r0.atom.rpm=A0=A0 <br><br>instead of the following<br=
><br>libdbus-glib<b>-1-2-</b>0.92-r0.atom.rpm=A0 <br>libdbus-glib<b>-1</b>-=
dbg-0.92-r0.atom.rpm=A0 <br>libdbus-glib<b>-1-</b>dev-0.92-r0.atom.rpm <br>=
libdbus-gli<b>b-1</b>-doc-0.92-r0.atom.rpm.<br>
<br>How it adds the some extra numbers for the existing the ones. It is not=
 generating the right rpms , <br>So I get the error like &quot;Unable to fi=
nd the package ....!&quot;<br><br>Like this I got the error=A0 for many pac=
kages.<br>
the generated rpms for the packages as follows<br><br> =A0libx11=A0 --=A0 t=
he generated rpm should be like =A0=A0 &quot;<b>libx11-1.3.4.-r0.atom.rpm&q=
uot;</b>=A0 instead of the following<br>=A0=A0=A0=A0 libx11<b>-6-</b>1.3.4-=
r0.atom.rpm=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 --extra &quot;6&quot; is added<br>
=A0=A0=A0=A0 libx11-dbg-1.3.4-r0.atom.rpm <br>=A0 =A0=A0 libx11-dev-1.3.4-r=
0.atom.rpm <br>=A0 =A0=A0 libx11-doc-1.3.4-r0.atom.rpm<br><br>libxi=A0=A0 -=
- <a href=3D"http://libxi-1.4.0.bb">libxi-1.4.0.bb</a> =A0 --  &quot;<b>lib=
xi-1.4.0-r0.atom.rpm</b>&quot;=A0 instead of the following<br>
=A0=A0=A0=A0 libxi<b>6</b>-1.4.0-r0.atom.rpm=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --extra &qu=
ot;6&quot; is added<br>=A0 =A0=A0 libxi-dbg-1.4.0-r0.atom.rpm<br>=A0=A0 =A0=
 libxi-dev-1.4.0-r0.atom.rpm<br>=A0=A0 =A0 libxi-doc-1.4.0-r0.atom.rpm<br><=
br>libxfixes=A0 --<a href=3D"http://libxfixes_4.0.5.bb">libxfixes_4.0.5.bb<=
/a>=A0 --<b>  &quot;libxfixes-4.0.5-r0.atom.rpm </b>&quot;<br>
=A0=A0=A0 libxfixes<b>3</b>-4.0.5-r0.atom.rpm=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0  --extra &quot;3&quot; is added<br>=A0 =A0 libx=
fixes-dbg-4.0.5-r0.atom.rpm<br>=A0 =A0 libxfixes-dev-4.0.5-r0.atom.rpm<br>=
=A0=A0=A0 libxfixes-doc-4.0.5-r0.atom.rpm<br><br>libxt=A0=A0=A0 --=A0 <a hr=
ef=3D"http://libxt_1.0.9.bb">libxt_1.0.9.bb</a>=A0=A0=A0=A0 --=A0<b> &quot;=
libxt-1.0.9-r0.atom.rpm</b>&quot;<br>
=A0=A0=A0 libxt<b>6-</b>1.0.9-r0.atom.rpm=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0  --extra &quot;6&quot; is added<br>=A0 =A0 libxt-d=
bg-1.0.9-r0.atom.rpm<br>=A0 =A0 libxt-dev-1.0.9-r0.atom.rpm<br>=A0=A0 libxt=
-doc-1.0.9-r0.atom.rpm<br><br>libxscrnsaver =A0 --<a href=3D"http://libxscr=
nsaver_1.2.1.bb">libxscrnsaver_1.2.1.bb</a>=A0=A0 --&quot;<b>libxss-1.2.1-r=
0.atom.rpm</b>&quot;<br>
=A0=A0 libxs<b>s1-1</b>.2.1-r0.atom.rpm=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0  --extra &quot;1&quot; is added<br>=A0=A0 libxss-dbg-=
1.2.1-r0.atom.rpm<br>=A0=A0 libxss-dev-1.2.1-r0.atom.rpm<br>=A0=A0 libxss-d=
oc-1.2.1-r0.atom.rpm<br>=A0<br>
gtk+=A0=A0=A0 --gtk+-<a href=3D"http://2.22.1.bb">2.22.1.bb</a>=A0=A0=A0=A0=
 --<b>&quot;gtk+-2.22.1-r2.atom.rpm &quot;</b><br>=A0=A0 gtk+-dbg-2.22.1-r2=
.atom.rpm =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0  --rpm =
is not generated for the package gtk+<br>=A0=A0 gtk+-dev-2.22.1-r2.atom.rpm=
<br>
=A0=A0 gtk+-doc-2.22.1-r2.atom.rpm <br><br>libxdmcp=A0=A0 --=A0 libxdmcp-1.=
1.0_bb =A0=A0 --=A0 &quot;<b>libxdmcp-1.1.0-r0.atom.rpm&quot;</b><br>=A0 li=
bxdmcp<b>6</b>-1.1.0-r0.atom.rpm=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0  --extra &quot;6&quot; is added<br>=A0 libxdmcp-dbg-1.1.0-r=
0.atom.rpm<br>
=A0 libxdmcp-dev-1.1.0-r0.atom.rpm<br>=A0 libxdmcp-doc-1.1.0-r0.atom.rpm<br=
>=A0<br>xcb-proto<br>=A0=A0 xcb-proto-dbg-1.6-r0.atom.rpm=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0  -- --rpm is not generated for the =
package xcb-proto<br>=A0=A0 xcb-proto-dev-1.6-r0.atom.rpm<br>
<br><br>For the wrong generated rpms. I got the error &quot;<b>Unable to fi=
nd package libx11!&quot;<br><br>Please Can anyone tell me How it is generat=
ing the wrong rpms.<br></b><br><br><u><b>Error log:</b></u><br><br>NOTE: Ru=
nning task 3719 of 3748 (ID: 193, /home/sailaja/poky_intel/meta/recipes-cor=
e/images/<a href=3D"http://poky-image-minimal-logi.bb" target=3D"_blank">po=
ky-image-minimal-logi.bb</a>, do_rootfs)<br>

NOTE: package poky-image-minimal-logi-1.0-r0: task do_rootfs: Started<br>ER=
ROR: &#39;/home/sailaja/poky_intel/meta/recipes-core/images/<a href=3D"http=
://poky-image-minimal-logi.bb" target=3D"_blank">poky-image-minimal-logi.bb=
</a>&#39; failed<br>

ERROR: Function &#39;do_rootfs&#39; failed (see /home/sailaja/poky_intel/bu=
ild/tmp/work/fishriver-poky-linux/poky-image-minimal-logi-1.0-r0/temp/log.d=
o_rootfs.2037 for further information)<br>ERROR: Logfile of failure stored =
in: /home/sailaja/poky_intel/build/tmp/work/fishriver-poky-linux/poky-image=
-minimal-logi-1.0-r0/temp/log.do_rootfs.2037<br>

Log data follows:<br>| Generating solve db for /home/sailaja/poky_intel/bui=
ld/tmp/deploy/rpm/fishriver...<br>|=A0=A0=A0 total:=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 3.013772 sec=
s<br>|=A0=A0=A0 fingerprint:=A0=A0=A0=A0=A0=A0 822=A0=A0=A0=A0=A0 0.008930 =
MB=A0=A0=A0=A0=A0 0.152614 secs<br>

|=A0=A0=A0 install:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 274=A0=A0=A0=A0=A0 0.0000=
00 MB=A0=A0=A0=A0=A0 0.388524 secs<br>|=A0=A0=A0 dbadd:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 274=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 0.377341 s=
ecs<br>|=A0=A0=A0 dbget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 2877=A0=A0=A0=A0=
=A0 0.000000 MB=A0=A0=A0=A0=A0 0.006442 secs<br>|=A0=A0=A0 dbput:=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 274=A0=A0=A0=A0=A0 1.447484 MB=A0=A0=A0=A0=A0 0=
.308546 secs<br>

|=A0=A0=A0 readhdr:=A0=A0=A0=A0=A0=A0=A0=A0=A0 2741=A0=A0=A0=A0=A0 2.837096=
 MB=A0=A0=A0=A0=A0 1.932322 secs<br>|=A0=A0=A0 hdrload:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 1370=A0=A0=A0=A0=A0 4.223108 MB=A0=A0=A0=A0=A0 0.009178 secs<br>|=
=A0=A0=A0 hdrget:=A0=A0=A0=A0=A0=A0=A0=A0=A0 49680=A0=A0=A0=A0=A0 0.000000 =
MB=A0=A0=A0=A0=A0 0.075024 secs<br>| Generating solve db for /home/sailaja/=
poky_intel/build/tmp/deploy/rpm/atom...<br>

|=A0=A0=A0 total:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=
=A0 0.000000 MB=A0=A0=A0=A0 46.128155 secs<br>|=A0=A0=A0 fingerprint:=A0=A0=
=A0=A0 12540=A0=A0=A0=A0=A0 0.134432 MB=A0=A0=A0=A0=A0 1.410636 secs<br>|=
=A0=A0=A0 install:=A0=A0=A0=A0=A0=A0=A0=A0=A0 4180=A0=A0=A0=A0=A0 0.000000 =
MB=A0=A0=A0=A0=A0 6.838201 secs<br>|=A0=A0=A0 dbadd:=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 4180=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 6.676840 secs<b=
r>

|=A0=A0=A0 dbget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 43755=A0=A0=A0=A0=A0 0.1987=
36 MB=A0=A0=A0=A0=A0 0.112596 secs<br>|=A0=A0=A0 dbput:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 4180=A0=A0=A0=A0 18.697532 MB=A0=A0=A0=A0=A0 5.822859 secs<=
br>|=A0=A0=A0 readhdr:=A0=A0=A0=A0=A0=A0=A0=A0 41801=A0=A0=A0=A0 37.298306 =
MB=A0=A0=A0=A0 25.879197 secs<br>|=A0=A0=A0 hdrload:=A0=A0=A0=A0=A0=A0=A0=
=A0 24296=A0=A0=A0=A0 70.267858 MB=A0=A0=A0=A0=A0 0.163661 secs<br>

|=A0=A0=A0 hdrget:=A0=A0=A0=A0=A0=A0=A0=A0 748457=A0=A0=A0=A0=A0 0.000000 M=
B=A0=A0=A0=A0=A0 1.154741 secs<br>| Generating solve db for /home/sailaja/p=
oky_intel/build/tmp/deploy/rpm/all...<br>|=A0=A0=A0 total:=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 0.2=
28913 secs<br>|=A0=A0=A0 fingerprint:=A0=A0=A0=A0=A0=A0=A0 69=A0=A0=A0=A0=
=A0 0.000428 MB=A0=A0=A0=A0=A0 0.001217 secs<br>

|=A0=A0=A0 install:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 23=A0=A0=A0=A0=A0 0.00=
0000 MB=A0=A0=A0=A0=A0 0.059673 secs<br>|=A0=A0=A0 dbadd:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 23=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 0.056252=
 secs<br>|=A0=A0=A0 dbget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 216=A0=A0=A0=
=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 0.000497 secs<br>|=A0=A0=A0 dbput:=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 23=A0=A0=A0=A0=A0 0.087208 MB=A0=A0=A0=A0=
=A0 0.022864 secs<br>

|=A0=A0=A0 readhdr:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 231=A0=A0=A0=A0=A0 0.1748=
24 MB=A0=A0=A0=A0=A0 0.098029 secs<br>|=A0=A0=A0 hdrload:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 118=A0=A0=A0=A0=A0 0.265220 MB=A0=A0=A0=A0=A0 0.000887 secs<br=
>|=A0=A0=A0 hdrget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 3806=A0=A0=A0=A0=A0 0.000=
000 MB=A0=A0=A0=A0=A0 0.006065 secs<br>| Generating solve db for /home/sail=
aja/poky_intel/build/tmp/deploy/rpm/all...<br>

| Processing task-poky-boot...<br>| Processing psplash...<br>| Processing x=
server-xf86-dri-lite...<br>| Processing xf86-input-keyboard...<br>| Process=
ing xf86-input-mouse...<br>| Processing xf86-video-intel...<br>| Processing=
 xinit...<br>

| Processing xauth...<br>| Processing openssl...<br>| Processing liberation=
-fonts...<br>| Processing xrandr...<br>| Processing gtk-engines...<br>| Pro=
cessing shared-mime-info...<br>| Processing gnome-keyring...<br>| Processin=
g bzip2...<br>

| Processing icu...<br>| Processing module-init-tools...<br>| Processing al=
sa-utils...<br>| Processing xcb-util...<br>| Processing libxdmcp...<br>| Pr=
ocessing dbus-glib...<br>| Unable to find package dbus-glib!<br>| ERROR: Fu=
nction &#39;do_rootfs&#39; failed (see /home/sailaja/poky_intel/build/tmp/w=
ork/fishriver-poky-linux/poky-image-minimal-logi-1.0-r0/temp/log.do_rootfs.=
2037 for further information)<br>

NOTE: package poky-image-minimal-logi-1.0-r0: task do_rootfs: Failed<br>ERR=
OR: Task 193 (/home/sailaja/poky_intel/meta/recipes-core/images/<a href=3D"=
http://poky-image-minimal-logi.bb" target=3D"_blank">poky-image-minimal-log=
i.bb</a>, do_rootfs) failed with exit code &#39;1&#39;<br>

<br>Please Can anyone help me in finding the solution.<br><br><font color=
=3D"#888888"><br>=A0</font><br></div>-- <br>Thanks &amp; Regards,<br>SAI<br=
><br>

--000e0cd1482c81e30304a0c68fc1--
