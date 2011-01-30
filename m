Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id CF3A74C811B1
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 02:26:33 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jan 2011 00:26:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,400,1291622400"; 
	d="p7s'?scan'208,217";a="882412372"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 30 Jan 2011 00:26:33 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Sun, 30 Jan 2011 00:26:32 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>, "Cui, Dexuan"
	<dexuan.cui@intel.com>, "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Sun, 30 Jan 2011 00:26:31 -0800
Thread-Topic: [poky] poky-image-sato-sdk failed at do_rootfs
Thread-Index: AcvAHa7DEgaiKAszTBSLa/7R7NS9YQAAmF4gAAu9U+AAAWbc8AAAaXew
Message-ID: <9AFCD584B0B67B48AE8D8585BE30BA9506BAB01C@orsmsx504.amr.corp.intel.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA9506BAAFDF@orsmsx504.amr.corp.intel.com>
	<1865303E0DED764181A9D882DEF65FB685EBCB6C3C@shsmsx502.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F20F8C329A6@shsmsx502.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F20F8C329BF@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F20F8C329BF@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: poky-image-sato-sdk failed at do_rootfs
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
X-List-Received-Date: Sun, 30 Jan 2011 08:26:34 -0000
X-Groupsio-MsgNum: 3144
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_000F_01CBC014.57F87250"

------=_NextPart_000_000F_01CBC014.57F87250
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0010_01CBC014.57F87250"

------=_NextPart_001_0010_01CBC014.57F87250
Content-Type: text/plain;
	charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit

I tried "bitbake -c cleanall eglibc", "bitbake eglic" and then rebuilt
image, but still failed.

  _____

From: Lu, Lianhao
Sent: Sunday, January 30, 2011 12:17 AM
To: Lu, Lianhao; Cui, Dexuan; Zhang, Jessica; poky@yoctoproject.org
Subject: RE: [poky] poky-image-sato-sdk failed at do_rootfs



Correction, the problem exists in RPM rootfs also.



The weired thing is that when the do_rootfs task failed (due to the
unsatisfied dependencies to package eglibc), I found that the task
do_package_setscene for eglibc is still not finished.



Since Dexuan’s built from scracth succeeded, I’ll try the scratch way.



-Lianhao



From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org]
On Behalf Of Lu, Lianhao
Sent: Sunday, January 30, 2011 3:47 PM
To: Cui, Dexuan; Zhang, Jessica; poky@yoctoproject.org
Subject: Re: [poky] poky-image-sato-sdk failed at do_rootfs



Jessica,



I did try “bitbake poky-image-minimal” using IPK to do rootfs on
yesterday’s master (latest commit id
<http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=llu/bug227&id
=754047b6ec01df5f3159cce93b17b8493d0af5e1>
754047b6ec01df5f3159cce93b17b8493d0af5e1), and it succeeded.



But when I tried the same command on today’s master(latest commit id
ffd12fc476d6061ba1e019a1e789cf1a2d3c82e6), I met the same problem as yours.



Anyway, if you try to use RPM to do rootfs, the problem seems gone.



Best Regards,

-Lianhao

From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org]
On Behalf Of Cui, Dexuan
Sent: Sunday, January 30, 2011 10:00 AM
To: Zhang, Jessica; poky@yoctoproject.org
Subject: Re: [poky] poky-image-sato-sdk failed at do_rootfs



Hi Jessica,

I didn't meet with the same issue -- my last-time building
poky-image-sato-sdk on all the qemu targets is Jan 26 and it's ok.



I looked at recent nightly build logs just now and looks I didn't find the
similar ERROR, but master does seem unstable, e.g., meta-toolchain-sdk
failed on many qemu targets because linux-libc-headers can't build.

I'm building locally and trying to reslove the issue...



Thanks,

-- Dexuan

  _____

From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org]
On Behalf Of Zhang, Jessica
Sent: 2011年1月30日 9:33
To: poky@yoctoproject.org
Subject: [poky] poky-image-sato-sdk failed at do_rootfs

My poky-image-sato-sdk against the latest master is consistently failed at
last step of do_rootfs, here's the error:



 Processing task-poky-qt-demos...
| error: Failed dependencies:
|  eglibc >= 2.12 is needed by libstdc++6-4.5.1-r2.armv5te
|  eglibc >= 2.12 is needed by libgcc1-4.5.1-r0.armv5te
| Function 'do_rootfs' failed (see
/home/jzhang/master-arm-build/tmp/work/qemuarm-poky-linux-gnueabi/poky-image
-sato-sdk-1.0-r0/temp/log.do_rootfs.6142 for further information)
| ERROR: Function 'do_rootfs' failed (see
/home/jzhang/master-arm-build/tmp/work/qemuarm-poky-linux-gnueabi/poky-image
-sato-sdk-1.0-r0/temp/log.do_rootfs.6142 for further information)

Has anybody run into same issue or any idea?



Thanks,

Jessica


------=_NextPart_001_0010_01CBC014.57F87250
Content-Type: text/html;
	charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML xmlns=3D"http://www.w3.org/TR/REC-html40" xmlns:v =3D=20
"urn:schemas-microsoft-com:vml" xmlns:o =3D=20
"urn:schemas-microsoft-com:office:office" xmlns:w =3D=20
"urn:schemas-microsoft-com:office:word" xmlns:m =3D=20
"http://schemas.microsoft.com/office/2004/12/omml"><HEAD>
<META content=3D"text/html; charset=3Diso-2022-jp" =
http-equiv=3DContent-Type>
<META name=3DGENERATOR content=3D"MSHTML 8.00.6001.18975"><!--[if !mso]>
<STYLE>v\:* {
	BEHAVIOR: url(#default#VML)
}
o\:* {
	BEHAVIOR: url(#default#VML)
}
w\:* {
	BEHAVIOR: url(#default#VML)
}
.shape {
	BEHAVIOR: url(#default#VML)
}
</STYLE>
<![endif]-->
<STYLE>@font-face {
	font-family: =1B$BAWBN=1B(B;
}
@font-face {
	font-family: Cambria Math;
}
@font-face {
	font-family: Calibri;
}
@font-face {
	font-family: Tahoma;
}
@font-face {
	font-family: @=1B$BAWBN=1B(B;
}
@page WordSection1 {size: 612.0pt 792.0pt; margin: 72.0pt 90.0pt 72.0pt =
90.0pt; }
P.MsoNormal {
	MARGIN: 0cm 0cm 0pt; FONT-FAMILY: =1B$BAWBN=1B(B; FONT-SIZE: 12pt
}
LI.MsoNormal {
	MARGIN: 0cm 0cm 0pt; FONT-FAMILY: =1B$BAWBN=1B(B; FONT-SIZE: 12pt
}
DIV.MsoNormal {
	MARGIN: 0cm 0cm 0pt; FONT-FAMILY: =1B$BAWBN=1B(B; FONT-SIZE: 12pt
}
A:link {
	COLOR: blue; TEXT-DECORATION: underline; mso-style-priority: 99
}
SPAN.MsoHyperlink {
	COLOR: blue; TEXT-DECORATION: underline; mso-style-priority: 99
}
A:visited {
	COLOR: purple; TEXT-DECORATION: underline; mso-style-priority: 99
}
SPAN.MsoHyperlinkFollowed {
	COLOR: purple; TEXT-DECORATION: underline; mso-style-priority: 99
}
SPAN.EmailStyle17 {
	FONT-FAMILY: "Calibri","sans-serif"; COLOR: #1f497d; mso-style-type: =
personal
}
SPAN.apple-style-span {
	mso-style-name: apple-style-span
}
SPAN.EmailStyle19 {
	FONT-FAMILY: "Calibri","sans-serif"; COLOR: #1f497d; mso-style-type: =
personal-reply
}
.MsoChpDefault {
	FONT-SIZE: 10pt; mso-style-type: export-only
}
DIV.WordSection1 {
	page: WordSection1
}
</STYLE>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]--></HEAD>
<BODY lang=3DZH-CN link=3Dblue vLink=3Dpurple>
<DIV dir=3Dltr align=3Dleft><SPAN class=3D854291808-30012011><FONT =
color=3D#0000ff=20
size=3D2 face=3DArial>I tried "bitbake -c cleanall eglibc", "bitbake =
eglic" and then=20
rebuilt image, but still failed.</FONT></SPAN></DIV><BR>
<DIV dir=3Dltr lang=3Den-us class=3DOutlookMessageHeader align=3Dleft>
<HR tabIndex=3D-1>
<FONT size=3D2 face=3DTahoma><B>From:</B> Lu, Lianhao <BR><B>Sent:</B> =
Sunday,=20
January 30, 2011 12:17 AM<BR><B>To:</B> Lu, Lianhao; Cui, Dexuan; Zhang, =

Jessica; poky@yoctoproject.org<BR><B>Subject:</B> RE: [poky] =
poky-image-sato-sdk=20
failed at do_rootfs<BR></FONT><BR></DIV>
<DIV></DIV>
<DIV class=3DWordSection1>
<DIV>
<P style=3D"TEXT-JUSTIFY: inter-ideograph; TEXT-ALIGN: justify"=20
class=3DMsoNormal><SPAN=20
style=3D"FONT-FAMILY: 'Calibri','sans-serif'; COLOR: #1f497d; FONT-SIZE: =
10.5pt"=20
lang=3DEN-US>Correction, the problem exists in RPM rootfs also.=20
<o:p></o:p></SPAN></P>
<P style=3D"TEXT-JUSTIFY: inter-ideograph; TEXT-ALIGN: justify"=20
class=3DMsoNormal><SPAN=20
style=3D"FONT-FAMILY: 'Calibri','sans-serif'; COLOR: #1f497d; FONT-SIZE: =
10.5pt"=20
lang=3DEN-US><o:p>&nbsp;</o:p></SPAN></P>
<P style=3D"TEXT-JUSTIFY: inter-ideograph; TEXT-ALIGN: justify"=20
class=3DMsoNormal><SPAN=20
style=3D"FONT-FAMILY: 'Calibri','sans-serif'; COLOR: #1f497d; FONT-SIZE: =
10.5pt"=20
lang=3DEN-US>The weired thing is that when the do_rootfs task failed =
(due to the=20
unsatisfied dependencies to package eglibc), I found that the task=20
do_package_setscene for eglibc is still not finished. =
<o:p></o:p></SPAN></P>
<P style=3D"TEXT-JUSTIFY: inter-ideograph; TEXT-ALIGN: justify"=20
class=3DMsoNormal><SPAN=20
style=3D"FONT-FAMILY: 'Calibri','sans-serif'; COLOR: #1f497d; FONT-SIZE: =
10.5pt"=20
lang=3DEN-US><o:p>&nbsp;</o:p></SPAN></P>
<P style=3D"TEXT-JUSTIFY: inter-ideograph; TEXT-ALIGN: justify"=20
class=3DMsoNormal><SPAN=20
style=3D"FONT-FAMILY: 'Calibri','sans-serif'; COLOR: #1f497d; FONT-SIZE: =
10.5pt"=20
lang=3DEN-US>Since Dexuan=1B$B!G=1B(Bs built from scracth succeeded, =
I=1B$B!G=1B(Bll try the scratch=20
way.<o:p></o:p></SPAN></P>
<P style=3D"TEXT-JUSTIFY: inter-ideograph; TEXT-ALIGN: justify"=20
class=3DMsoNormal><SPAN=20
style=3D"FONT-FAMILY: 'Calibri','sans-serif'; COLOR: #1f497d; FONT-SIZE: =
10.5pt"=20
lang=3DEN-US><o:p>&nbsp;</o:p></SPAN></P>
<P style=3D"TEXT-JUSTIFY: inter-ideograph; TEXT-ALIGN: justify"=20
class=3DMsoNormal><SPAN=20
style=3D"FONT-FAMILY: 'Calibri','sans-serif'; COLOR: #1f497d; FONT-SIZE: =
10.5pt"=20
lang=3DEN-US>-Lianhao <o:p></o:p></SPAN></P></DIV>
<P class=3DMsoNormal><SPAN=20
style=3D"FONT-FAMILY: 'Calibri','sans-serif'; COLOR: #1f497d; FONT-SIZE: =
10.5pt"=20
lang=3DEN-US><o:p>&nbsp;</o:p></SPAN></P>
<DIV=20
style=3D"BORDER-BOTTOM: medium none; BORDER-LEFT: blue 1.5pt solid; =
PADDING-BOTTOM: 0cm; PADDING-LEFT: 4pt; PADDING-RIGHT: 0cm; BORDER-TOP: =
medium none; BORDER-RIGHT: medium none; PADDING-TOP: 0cm">
<DIV>
<DIV=20
style=3D"BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; =
PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; PADDING-RIGHT: 0cm; BORDER-TOP: =
#b5c4df 1pt solid; BORDER-RIGHT: medium none; PADDING-TOP: 3pt">
<P class=3DMsoNormal><B><SPAN=20
style=3D"FONT-FAMILY: 'Tahoma','sans-serif'; FONT-SIZE: 10pt"=20
lang=3DEN-US>From:</SPAN></B><SPAN=20
style=3D"FONT-FAMILY: 'Tahoma','sans-serif'; FONT-SIZE: 10pt" =
lang=3DEN-US>=20
poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
<B>On=20
Behalf Of </B>Lu, Lianhao<BR><B>Sent:</B> Sunday, January 30, 2011 3:47=20
PM<BR><B>To:</B> Cui, Dexuan; Zhang, Jessica;=20
poky@yoctoproject.org<BR><B>Subject:</B> Re: [poky] poky-image-sato-sdk =
failed=20
at do_rootfs<o:p></o:p></SPAN></P></DIV></DIV>
<P class=3DMsoNormal><SPAN lang=3DEN-US><o:p>&nbsp;</o:p></SPAN></P>
<P class=3DMsoNormal><SPAN=20
style=3D"FONT-FAMILY: 'Calibri','sans-serif'; COLOR: #1f497d; FONT-SIZE: =
10.5pt"=20
lang=3DEN-US>Jessica,<o:p></o:p></SPAN></P>
<P class=3DMsoNormal><SPAN=20
style=3D"FONT-FAMILY: 'Calibri','sans-serif'; COLOR: #1f497d; FONT-SIZE: =
10.5pt"=20
lang=3DEN-US><o:p>&nbsp;</o:p></SPAN></P>
<P class=3DMsoNormal><SPAN=20
style=3D"FONT-FAMILY: 'Calibri','sans-serif'; COLOR: #1f497d; FONT-SIZE: =
10.5pt"=20
lang=3DEN-US>I did try =1B$B!H=1B(Bbitbake =
poky-image-minimal=1B$B!I=1B(B using IPK to do rootfs on=20
yesterday=1B$B!G=1B(Bs master (latest commit id </SPAN><SPAN =
class=3Dapple-style-span><SPAN=20
style=3D"FONT-FAMILY: 'Courier New'; COLOR: #333333; FONT-SIZE: 9pt" =
lang=3DEN-US><A=20
href=3D"http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dl=
lu/bug227&amp;id=3D754047b6ec01df5f3159cce93b17b8493d0af5e1"><SPAN=20
style=3D"TEXT-DECORATION: =
none">754047b6ec01df5f3159cce93b17b8493d0af5e1</SPAN></A>),=20
and it succeeded.<o:p></o:p></SPAN></SPAN></P>
<P class=3DMsoNormal><SPAN class=3Dapple-style-span><SPAN=20
style=3D"FONT-FAMILY: 'Courier New'; COLOR: #333333; FONT-SIZE: 9pt"=20
lang=3DEN-US><o:p>&nbsp;</o:p></SPAN></SPAN></P>
<P class=3DMsoNormal><SPAN class=3Dapple-style-span><SPAN=20
style=3D"FONT-FAMILY: 'Courier New'; COLOR: #333333; FONT-SIZE: 9pt"=20
lang=3DEN-US>But when I tried the same command on today=1B$B!G=1B(Bs =
master(latest commit id=20
ffd12fc476d6061ba1e019a1e789cf1a2d3c82e6), I met the same problem as=20
yours.<o:p></o:p></SPAN></SPAN></P>
<P class=3DMsoNormal><SPAN class=3Dapple-style-span><SPAN=20
style=3D"FONT-FAMILY: 'Courier New'; COLOR: #333333; FONT-SIZE: 9pt"=20
lang=3DEN-US><o:p>&nbsp;</o:p></SPAN></SPAN></P>
<P class=3DMsoNormal><SPAN class=3Dapple-style-span><SPAN=20
style=3D"FONT-FAMILY: 'Courier New'; COLOR: #333333; FONT-SIZE: 9pt"=20
lang=3DEN-US>Anyway, if you try to use RPM to do rootfs, the problem =
seems=20
gone.<o:p></o:p></SPAN></SPAN></P>
<P class=3DMsoNormal><SPAN class=3Dapple-style-span><SPAN=20
style=3D"FONT-FAMILY: 'Courier New'; COLOR: #333333; FONT-SIZE: 9pt"=20
lang=3DEN-US><o:p>&nbsp;</o:p></SPAN></SPAN></P>
<P class=3DMsoNormal><SPAN=20
style=3D"FONT-FAMILY: 'Calibri','sans-serif'; COLOR: #1f497d; FONT-SIZE: =
10.5pt"=20
lang=3DEN-US>Best Regards,<o:p></o:p></SPAN></P>
<P class=3DMsoNormal><SPAN=20
style=3D"FONT-FAMILY: 'Calibri','sans-serif'; COLOR: #1f497d; FONT-SIZE: =
10.5pt"=20
lang=3DEN-US>-Lianhao <o:p></o:p></SPAN></P>
<DIV=20
style=3D"BORDER-BOTTOM: medium none; BORDER-LEFT: blue 1.5pt solid; =
PADDING-BOTTOM: 0cm; PADDING-LEFT: 4pt; PADDING-RIGHT: 0cm; BORDER-TOP: =
medium none; BORDER-RIGHT: medium none; PADDING-TOP: 0cm">
<DIV>
<DIV=20
style=3D"BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; =
PADDING-BOTTOM: 0cm; PADDING-LEFT: 0cm; PADDING-RIGHT: 0cm; BORDER-TOP: =
#b5c4df 1pt solid; BORDER-RIGHT: medium none; PADDING-TOP: 3pt">
<P class=3DMsoNormal><B><SPAN=20
style=3D"FONT-FAMILY: 'Tahoma','sans-serif'; FONT-SIZE: 10pt"=20
lang=3DEN-US>From:</SPAN></B><SPAN=20
style=3D"FONT-FAMILY: 'Tahoma','sans-serif'; FONT-SIZE: 10pt" =
lang=3DEN-US>=20
poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
<B>On=20
Behalf Of </B>Cui, Dexuan<BR><B>Sent:</B> Sunday, January 30, 2011 10:00 =

AM<BR><B>To:</B> Zhang, Jessica; =
poky@yoctoproject.org<BR><B>Subject:</B> Re:=20
[poky] poky-image-sato-sdk failed at =
do_rootfs<o:p></o:p></SPAN></P></DIV></DIV>
<P class=3DMsoNormal><SPAN lang=3DEN-US><o:p>&nbsp;</o:p></SPAN></P>
<P class=3DMsoNormal><SPAN style=3D"FONT-SIZE: 10pt" lang=3DEN-US>Hi=20
Jessica,</SPAN><SPAN lang=3DEN-US><o:p></o:p></SPAN></P>
<P class=3DMsoNormal><SPAN style=3D"FONT-SIZE: 10pt" lang=3DEN-US>I =
didn't meet with=20
the same issue -- my last-time building poky-image-sato-sdk&nbsp;on all =
the qemu=20
targets is Jan 26 and it's ok.</SPAN><SPAN =
lang=3DEN-US><o:p></o:p></SPAN></P>
<P class=3DMsoNormal><SPAN lang=3DEN-US>&nbsp;<o:p></o:p></SPAN></P>
<P class=3DMsoNormal><SPAN style=3D"FONT-SIZE: 10pt" lang=3DEN-US>I =
looked at recent=20
nightly build logs just now and looks I didn't find the similar ERROR, =
but=20
master does seem unstable, e.g., meta-toolchain-sdk failed&nbsp;on many =
qemu=20
targets because linux-libc-headers can't build.</SPAN><SPAN=20
lang=3DEN-US><o:p></o:p></SPAN></P>
<P class=3DMsoNormal><SPAN style=3D"FONT-SIZE: 10pt" lang=3DEN-US>I'm =
building locally=20
and trying to reslove the issue...</SPAN><SPAN =
lang=3DEN-US><o:p></o:p></SPAN></P>
<P class=3DMsoNormal><SPAN lang=3DEN-US>&nbsp;<o:p></o:p></SPAN></P>
<P class=3DMsoNormal><SPAN style=3D"FONT-SIZE: 10pt" =
lang=3DEN-US>Thanks,</SPAN><SPAN=20
lang=3DEN-US><o:p></o:p></SPAN></P>
<P class=3DMsoNormal><SPAN style=3D"FONT-SIZE: 10pt" lang=3DEN-US>--=20
Dexuan</SPAN><SPAN lang=3DEN-US> <o:p></o:p></SPAN></P>
<DIV style=3D"TEXT-ALIGN: center" class=3DMsoNormal align=3Dcenter><SPAN =
lang=3DEN-US>
<HR align=3Dcenter SIZE=3D2 width=3D"100%">
</SPAN></DIV>
<P style=3D"MARGIN-BOTTOM: 12pt" class=3DMsoNormal><B><SPAN=20
style=3D"FONT-FAMILY: 'Tahoma','sans-serif'; FONT-SIZE: 10pt"=20
lang=3DEN-US>From:</SPAN></B><SPAN=20
style=3D"FONT-FAMILY: 'Tahoma','sans-serif'; FONT-SIZE: 10pt" =
lang=3DEN-US>=20
poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
<B>On=20
Behalf Of </B>Zhang, Jessica<BR><B>Sent:</B> 2011</SPAN><SPAN=20
style=3D"FONT-SIZE: 10pt">=1B$BG/=1B(B</SPAN><SPAN=20
style=3D"FONT-FAMILY: 'Tahoma','sans-serif'; FONT-SIZE: 10pt"=20
lang=3DEN-US>1</SPAN><SPAN style=3D"FONT-SIZE: =
10pt">=1B$B7n=1B(B</SPAN><SPAN=20
style=3D"FONT-FAMILY: 'Tahoma','sans-serif'; FONT-SIZE: 10pt"=20
lang=3DEN-US>30</SPAN><SPAN style=3D"FONT-SIZE: =
10pt">=1B$BF|=1B(B</SPAN><SPAN=20
style=3D"FONT-FAMILY: 'Tahoma','sans-serif'; FONT-SIZE: 10pt" =
lang=3DEN-US>=20
9:33<BR><B>To:</B> poky@yoctoproject.org<BR><B>Subject:</B> [poky]=20
poky-image-sato-sdk failed at do_rootfs</SPAN><SPAN=20
lang=3DEN-US><o:p></o:p></SPAN></P>
<DIV>
<P class=3DMsoNormal><SPAN=20
style=3D"FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt" =
lang=3DEN-US>My=20
poky-image-sato-sdk against the latest master is consistently failed at =
last=20
step of do_rootfs, here's the error:</SPAN><SPAN=20
lang=3DEN-US><o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN =
lang=3DEN-US>&nbsp;<o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN=20
style=3D"FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt"=20
lang=3DEN-US>&nbsp;Processing task-poky-qt-demos...<BR>| error: Failed=20
dependencies:<BR>| &nbsp;eglibc &gt;=3D 2.12 is needed by=20
libstdc++6-4.5.1-r2.armv5te<BR>| &nbsp;eglibc &gt;=3D 2.12 is needed by=20
libgcc1-4.5.1-r0.armv5te<BR>| Function 'do_rootfs' failed (see=20
/home/jzhang/master-arm-build/tmp/work/qemuarm-poky-linux-gnueabi/poky-im=
age-sato-sdk-1.0-r0/temp/log.do_rootfs.6142=20
for further information)<BR>| ERROR: Function 'do_rootfs' failed (see=20
/home/jzhang/master-arm-build/tmp/work/qemuarm-poky-linux-gnueabi/poky-im=
age-sato-sdk-1.0-r0/temp/log.do_rootfs.6142=20
for further information)</SPAN><SPAN =
lang=3DEN-US><o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN=20
style=3D"FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt" =
lang=3DEN-US>Has=20
anybody run into same issue or any idea?</SPAN><SPAN=20
lang=3DEN-US><o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN =
lang=3DEN-US>&nbsp;<o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN=20
style=3D"FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt"=20
lang=3DEN-US>Thanks,</SPAN><SPAN =
lang=3DEN-US><o:p></o:p></SPAN></P></DIV>
<DIV>
<P class=3DMsoNormal><SPAN=20
style=3D"FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt"=20
lang=3DEN-US>Jessica<o:p></o:p></SPAN></P></DIV></DIV></DIV></DIV></BODY>=
</HTML>

------=_NextPart_001_0010_01CBC014.57F87250--

------=_NextPart_000_000F_01CBC014.57F87250
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIdiDCCAyAw
ggKJoAMCAQICBDXe9M8wDQYJKoZIhvcNAQEFBQAwTjELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0Vx
dWlmYXgxLTArBgNVBAsTJEVxdWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTAeFw05
ODA4MjIxNjQxNTFaFw0xODA4MjIxNjQxNTFaME4xCzAJBgNVBAYTAlVTMRAwDgYDVQQKEwdFcXVp
ZmF4MS0wKwYDVQQLEyRFcXVpZmF4IFNlY3VyZSBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkwgZ8wDQYJ
KoZIhvcNAQEBBQADgY0AMIGJAoGBAMFdsVhnCGLuoJotHwhtkRRomAoe/toEbxOEYiHD0XzOnwXg
uAHwTjTs4oqVBGSs8WtTXwWzy2eAv0ICjv7dAQns4QAUT/z78AzdQ7pbK+EfgHCZFVeTFvEPl2q3
wmgjHMxNWTCsUR47ryvW7mNFe8XZX1DS41APOojnvxT94Me5AgMBAAGjggEJMIIBBTBwBgNVHR8E
aTBnMGWgY6BhpF8wXTELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0VxdWlmYXgxLTArBgNVBAsTJEVx
dWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTENMAsGA1UEAxMEQ1JMMTAaBgNVHRAE
EzARgQ8yMDE4MDgyMjE2NDE1MVowCwYDVR0PBAQDAgEGMB8GA1UdIwQYMBaAFEjmaPkr0rKV10fY
IyAQTzOYkJ/UMB0GA1UdDgQWBBRI5mj5K9KylddH2CMgEE8zmJCf1DAMBgNVHRMEBTADAQH/MBoG
CSqGSIb2fQdBAAQNMAsbBVYzLjBjAwIGwDANBgkqhkiG9w0BAQUFAAOBgQBYzinq/Pfetc4CuRe1
hdG54+CVzCUxDQCmkm5/tpJjnlCV0Zpv5BHeY4VumO6o/1rI01WyZnFX3sAh6z0qpyNJAQSGQnv8
7n+iFlK1Z2fTQNs7JliyKHc9rhR3Ydb6KmYnoA36p3Nc6nDxlCFlRF/6/O8paKmih3nvee9PrAd3
ODCCAz0wggKmoAMCAQICAwWw/zANBgkqhkiG9w0BAQUFADBOMQswCQYDVQQGEwJVUzEQMA4GA1UE
ChMHRXF1aWZheDEtMCsGA1UECxMkRXF1aWZheCBTZWN1cmUgQ2VydGlmaWNhdGUgQXV0aG9yaXR5
MB4XDTA2MDIxNjE4MDEzMFoXDTE2MDIxOTE4MDEzMFowUjELMAkGA1UEBhMCVVMxGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMScwJQYDVQQDEx5JbnRlbCBFeHRlcm5hbCBCYXNpYyBQb2xpY3kg
Q0EwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDBpd/XOb9QVqEZ8mQ1042TdOIq3ATD
IsV2xDyt30yLyMR5Wjtus0bn3B+he89BiNO/LP6+rFzEwlD55PlX+HLGIKeNNG97dqyc30FElEUj
ZzTZFq2N4e3kVJ/XAEEgANzV8v9qp7qWwxugPgfc3z9BkYot+CifozexHLb/hEZj+yISCU61kRZv
uSQ0E11yYL4dRgcglJeaHo3oX57rvIckaLsYV5/1Aj+R8DM1Ppk965XQAKsHfnyT7C4S50T4lVn4
lz36wOdNZn/zegG1zp41lnoTFfT4KuKVJH5x7YD1p6KbgJCKLovnujGuohquBNfdXKpZkvz6pGv+
iC1HawJdAgMBAAGjgaAwgZ0wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBQaxgxKxEdvqNutK/D0
Vgaj7TdUDDA6BgNVHR8EMzAxMC+gLaArhilodHRwOi8vY3JsLmdlb3RydXN0LmNvbS9jcmxzL3Nl
Y3VyZWNhLmNybDAfBgNVHSMEGDAWgBRI5mj5K9KylddH2CMgEE8zmJCf1DAPBgNVHRMBAf8EBTAD
AQH/MA0GCSqGSIb3DQEBBQUAA4GBABMQOK2kVKVIlUWwLTdywJ+e2O+PC/uQltK2F3lRyrPfBn69
tOkIP4SgDJOfsxyobIrPLe75kBLw+Dom13OBDp/EMZJZ1CglQfVV8co9mT3aZMjSGGQiMgkJLR3j
Mfr900fXZKj5XeqCJ+JP0mEhJGEdVCY+FFlksJjV86fDrq1QMIIFYzCCBEugAwIBAgIKYSyUiQAA
AAAABTANBgkqhkiG9w0BAQUFADBSMQswCQYDVQQGEwJVUzEaMBgGA1UEChMRSW50ZWwgQ29ycG9y
YXRpb24xJzAlBgNVBAMTHkludGVsIEV4dGVybmFsIEJhc2ljIFBvbGljeSBDQTAeFw0wNjAzMjIy
MjIyNDJaFw0xMjAzMjIyMjMyNDJaMFYxCzAJBgNVBAYTAlVTMRowGAYDVQQKExFJbnRlbCBDb3Jw
b3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSAzQTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKvXqH/ah10uJc7YzQUh+XEDNqS6IsXOyqCtizr9
x6F+v6iRAbvddRRJRWixfV78qarSN9WMymJ90M8c9/Dfr1yzFuq95RgCAF3vdve3wKi7kJv6lkMJ
wyyB+uIYcWtljYx2LDqbb9S6Z6He3q8W/aGKvu23I9ksNx+cmZcDNZwGdXVIEHpEMyA4bp0RvYtf
p8BsGAyn6YuK63HugeyYdeFL+4+Wz2tGUqw9OWhob6oV1oDH3zboLhHJiQ2oIj3jAJ3/LrIkzcWP
2R20UIliDAPAAl6MNWJPdsNK5EEeuxEuUSpdFsMj5rBmPHH4U8i8rUmi6GEOcX5rwAw64AzS3gEC
AwEAAaOCAjUwggIxMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFAlpgTN7BnOPI0wKA9/3FoER
ghMFMAsGA1UdDwQEAwIBhjAQBgkrBgEEAYI3FQEEAwIBADAZBgkrBgEEAYI3FAIEDB4KAFMAdQBi
AEMAQTAfBgNVHSMEGDAWgBQaxgxKxEdvqNutK/D0Vgaj7TdUDDCBvQYDVR0fBIG1MIGyMIGvoIGs
oIGphk5odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFs
JTIwQmFzaWMlMjBQb2xpY3klMjBDQS5jcmyGV2h0dHA6Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29t
L3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMFBvbGljeSUyMENBLmNy
bDCB4wYIKwYBBQUHAQEEgdYwgdMwYwYIKwYBBQUHMAKGV2h0dHA6Ly93d3cuaW50ZWwuY29tL3Jl
cG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMFBvbGljeSUy
MENBLmNydDBsBggrBgEFBQcwAoZgaHR0cDovL2NlcnRpZmljYXRlcy5pbnRlbC5jb20vcmVwb3Np
dG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwUG9saWN5JTIwQ0Eu
Y3J0MA0GCSqGSIb3DQEBBQUAA4IBAQCuNCnecJ+vDpXzsHOzMEyz4KgTNDbJROHag8H/ZVga7soc
oJyC+HKqDfQgxifVorbTbSajCBEAxqg6bbNWBJ6qKOFHneBrXkENf5WdD50eCTCFWRV3EIsHEOQ1
kP0eNYV5Ed4hp9y6wASV6z2z86O4+qouLJiow4AIhoCKD8rEyD7ODgTvjvLCKpsVyPlG1jOVSsOS
IF2VUmueAmK3RFU4np83zerK/j0G37owhniEDT6ZhwkUd0XL45nt1m7yApMEbnXUTHNaXnE+P98k
k3nDXdW25sB+5xWcYR3GpgMdQiZgP/f0KZ+yZKNE7gcp3I/O4pXqUNWIsLSYTi3soAR2MIIFYzCC
BEugAwIBAgIKYSyl/gAAAAAABjANBgkqhkiG9w0BAQUFADBSMQswCQYDVQQGEwJVUzEaMBgGA1UE
ChMRSW50ZWwgQ29ycG9yYXRpb24xJzAlBgNVBAMTHkludGVsIEV4dGVybmFsIEJhc2ljIFBvbGlj
eSBDQTAeFw0wNjAzMjIyMjIyNDdaFw0xMjAzMjIyMjMyNDdaMFYxCzAJBgNVBAYTAlVTMRowGAYD
VQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNz
dWluZyBDQSAzQjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMDoHJYUGvcdR4k0Qv8/
RrwNX4+vEe5PN2LnGn4xfIWwdUbk5+zvrRy1HjoKdG/AShZfxAuFoVyNIah5GJLpiS/vGbsDYKK+
EZcIcmtPfvbB9Yg09EnQ0OpsZ2ORRd5lYUfMUU+zkpgL96vKFdkiG+eeHEwnSS3VikGVrF7UDdKf
vxZwRwQCx6rEHAFPCjBDVfGYZuYT1EDhSDvzEiU7KzBsxrdBCFU4RYL7kh+do+vyMDlBzpw3WKvM
Vbf3s5lxYiY7AjEhU8OSyZEQlgtK8PNyifHjmyrSaeJrPshM3PuLFG4d3gm1UJEiGNzxcHGb6YLP
29IQAwY5mAk8j+UOVcsCAwEAAaOCAjUwggIxMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFG/D
cREooZ0ZV/VnV8/ZKSaI1aWiMAsGA1UdDwQEAwIBhjAQBgkrBgEEAYI3FQEEAwIBADAZBgkrBgEE
AYI3FAIEDB4KAFMAdQBiAEMAQTAfBgNVHSMEGDAWgBQaxgxKxEdvqNutK/D0Vgaj7TdUDDCBvQYD
VR0fBIG1MIGyMIGvoIGsoIGphk5odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9J
bnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBQb2xpY3klMjBDQS5jcmyGV2h0dHA6Ly9jZXJ0aWZp
Y2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUy
MFBvbGljeSUyMENBLmNybDCB4wYIKwYBBQUHAQEEgdYwgdMwYwYIKwYBBQUHMAKGV2h0dHA6Ly93
d3cuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBC
YXNpYyUyMFBvbGljeSUyMENBLmNydDBsBggrBgEFBQcwAoZgaHR0cDovL2NlcnRpZmljYXRlcy5p
bnRlbC5jb20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2lj
JTIwUG9saWN5JTIwQ0EuY3J0MA0GCSqGSIb3DQEBBQUAA4IBAQBAiWWHL6T21QXFZDyaUIye0jh7
f40GXqi75Ro5JbpROtlZBqyRq6oPMAG6Igxd5Bd9TMtNkOvguknFnK1y17UdMhLOl+FuInE+FAWk
803aRW27OsX+ot0KmPioKnZ3L1K5qcQS3tp6or7AaZzd0w0qFitm4UfP9nnTXQtY9XM5QJ07IKFD
E3tlOlamKhjbiJV3FKigCVesPZSx9h2G7Ve4irEfz915Vks26AJHGZagEHNxM9exkgem4ENsG+t0
vYqn9x7YsqJ6fmbOSyrzjzb3CYeEfyE5SL+f3Vx9uMsQDyb8LVCDBXQtxLEHnFEBPrRSSF9kPmyj
avx4UqFdPEyCMIIGAzCCBOugAwIBAgIKGmwusAAAAAApdjANBgkqhkiG9w0BAQUFADBWMQswCQYD
VQQGEwJVUzEaMBgGA1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVy
bmFsIEJhc2ljIElzc3VpbmcgQ0EgM0IwHhcNMDgwNDE0MjMxNDQ4WhcNMTEwNDE0MjMxNDQ4WjBB
MRcwFQYDVQQDEw5aaGFuZywgSmVzc2ljYTEmMCQGCSqGSIb3DQEJARYXamVzc2ljYS56aGFuZ0Bp
bnRlbC5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDQbirxoX/8OWYyzy4UnZ7N
xXoADLZqxxH1q4lMF2zuAHjyDnNj/4ReRzB6AIDEg1BQWS4z5jC6oApos3HvFEsGbS3pYCWSo5Vb
jtY5HWOBRPJ2rQ8wzITqcEEBWooYCj5LJeAjPuOZoZPVrKPI1khbOYzaJUwQpICfaErHZyM4p2mV
AYXcUa/N0zKGnZmNaO6Dff96g41C9jEyfOFEtYOpLdQoXhD1i8tW17WxbHMuiXx3PR3GUdBADrRf
I3wzqn4rh0y0D4l9mBfgTybVN3UR35ZFGSRsuldyJeeKcCSgghJi3K4ZTxzMfQ6+OKBu6SBeNKWk
e2Q4f8CIf0+8ZpwfAgMBAAGjggLmMIIC4jALBgNVHQ8EBAMCB4AwHQYDVR0OBBYEFPIpOYEzCqH+
037yR8d0Rarz7r7mMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OC
kcAJZ4HevTmV8EMCAWQCAQYwHwYDVR0jBBgwFoAUb8NxESihnRlX9WdXz9kpJojVpaIwgckGA1Ud
HwSBwTCBvjCBu6CBuKCBtYZUaHR0cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9DUkwvSW50
ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIwM0IuY3Jshl1odHRwOi8vY2Vy
dGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFz
aWMlMjBJc3N1aW5nJTIwQ0ElMjAzQi5jcmwwge8GCCsGAQUFBwEBBIHiMIHfMGkGCCsGAQUFBzAC
hl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmljYXRlcy9JbnRlbCUyMEV4
dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQi5jcnQwcgYIKwYBBQUHMAKGZmh0dHA6
Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIw
RXh0ZXJuYWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDNCLmNydDAfBgNVHSUEGDAWBggrBgEF
BQcDBAYKKwYBBAGCNwoDDDApBgkrBgEEAYI3FQoEHDAaMAoGCCsGAQUFBwMEMAwGCisGAQQBgjcK
AwwwSwYDVR0RBEQwQqAnBgorBgEEAYI3FAIDoBkMF2plc3NpY2EuemhhbmdAaW50ZWwuY29tgRdq
ZXNzaWNhLnpoYW5nQGludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEANFSBbauSm1ktwUQI6fGq
9XhTSUsty5/CHOrOwFe4K7LX0clVirXUYakIZXXG86lD1piRrjt23MhKRekYNIv0mfJklEF7yV5M
VVqwDK1Uz6bsiw/SQnqfBuFrd70W4cua3bU1uu3dAhZBh482BtBZYFockuHd3YBFT7xmykOaAMLP
CttrNSijP7HsbetGG2GLLc3CWauSXXr2ELseXkw3KkUKBPMw+DFAJdsRyBe0L+OwlDplr8POBXXb
uuQK7Wo84mX7gMT0uSq/Luex/BD1xn2brKVs9t4FvL8ifxv4LuWRzv45EgPN4T12I202GBQ8iJtZ
DkT3+9QPiQ35Hmuy6zCCBkowggUyoAMCAQICCnmKHVEAAAAAHyswDQYJKoZIhvcNAQEFBQAwVjEL
MAkGA1UEBhMCVVMxGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBF
eHRlcm5hbCBCYXNpYyBJc3N1aW5nIENBIDNBMB4XDTA4MDQxNDIzMTM1MVoXDTExMDQxNDIzMTM1
MVowQTEXMBUGA1UEAxMOWmhhbmcsIEplc3NpY2ExJjAkBgkqhkiG9w0BCQEWF2plc3NpY2Euemhh
bmdAaW50ZWwuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2Lgwg9E/0F9weWx5
ZCk0oiuerOIqOFTXcithjh7zRhiq8v/z9sXR/yWXUA7JK5E5JLPRNl0nQJFv/FLTaq9/9PchiI/N
4v7L/ERXTzdMNvwOEqNOy8SOmmOOjF8N1vtrIv+WdBYiqBvtfQ9xGXadxckgrBOSTtTrw4iShbnG
mVrw6mYYIOdPIKhq3QFmxHs93R8IrmIjvMbf31JhiAp7KJ/mc+bckmYW/9fNNEQkMbuF3B6iWsTk
8c+D8oWmxuw+m6svwEMKck8yr3ldF6sZ6NCKXJChwDmjZMHBBSV6IUUycyl6SJ33j3r9Beki5bvG
mhZnfGBLWODaLv4PDbG7BwIDAQABo4IDLTCCAykwCwYDVR0PBAQDAgQwMEQGCSqGSIb3DQEJDwQ3
MDUwDgYIKoZIhvcNAwICAgCAMA4GCCqGSIb3DQMEAgIAgDAHBgUrDgMCBzAKBggqhkiG9w0DBzAd
BgNVHQ4EFgQUKEdHKlCw71rRzz5gJWoRJwoviW0wPQYJKwYBBAGCNxUHBDAwLgYmKwYBBAGCNxUI
hsOMdYSZ5VGD/YEohY6fU4KRwAlnhLnZQYeE/04CAWQCAQkwHwYDVR0jBBgwFoAUCWmBM3sGc48j
TAoD3/cWgRGCEwUwgckGA1UdHwSBwTCBvjCBu6CBuKCBtYZUaHR0cDovL3d3dy5pbnRlbC5jb20v
cmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIw
M0EuY3Jshl1odHRwOi8vY2VydGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRl
bCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQS5jcmwwge8GCCsGAQUFBwEB
BIHiMIHfMGkGCCsGAQUFBzAChl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRp
ZmljYXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQS5jcnQw
cgYIKwYBBQUHMAKGZmh0dHA6Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2Vy
dGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDNBLmNy
dDAfBgNVHSUEGDAWBggrBgEFBQcDBAYKKwYBBAGCNwoDBDApBgkrBgEEAYI3FQoEHDAaMAoGCCsG
AQUFBwMEMAwGCisGAQQBgjcKAwQwSwYDVR0RBEQwQqAnBgorBgEEAYI3FAIDoBkMF2plc3NpY2Eu
emhhbmdAaW50ZWwuY29tgRdqZXNzaWNhLnpoYW5nQGludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOC
AQEAlkSHAnj2YSCjtyOIJJtoNia1mv4qLpp3rxqxeZzEG9Bk4k4hGHkozj1p+mi368ieYl/fTPtK
IIBDCwod9o12adTGGW7wyUHjZfalumhsFoKTXbUU/CC7lpooUKuDxCjaIjsc4rdDxP1MEAUX43IG
kLRqq9elDWluC0WjR+q+cAqKMJxLmAKhKz7JDTNrbfWwuoETGdCMkLUK464/FSvfDKoV+Ypkoq1x
YiTi71VhwWenYKPnyKbLgiULEgdfwQscMzJQ9rmq1iyfoXuXPSkCA6nfZKoSkBOVJQXjW/+B2wxe
YmaO9Qc5P3CJvsmgmgX5mK2wyKEw0JCwTHE3w7FkFjGCA0EwggM9AgEBMGQwVjELMAkGA1UEBhMC
VVMxGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBC
YXNpYyBJc3N1aW5nIENBIDNCAgoabC6wAAAAACl2MAkGBSsOAwIaBQCgggGyMBgGCSqGSIb3DQEJ
AzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTExMDEzMDA4MjYzMVowIwYJKoZIhvcNAQkE
MRYEFOdMw/ebIfz3FWicNTSBd2dJ2L2FMGcGCSqGSIb3DQEJDzFaMFgwCgYIKoZIhvcNAwcwDgYI
KoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMAcGBSsO
AwIaMAoGCCqGSIb3DQIFMHMGCSsGAQQBgjcQBDFmMGQwVjELMAkGA1UEBhMCVVMxGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5n
IENBIDNBAgp5ih1RAAAAAB8rMHUGCyqGSIb3DQEJEAILMWagZDBWMQswCQYDVQQGEwJVUzEaMBgG
A1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElz
c3VpbmcgQ0EgM0ECCnmKHVEAAAAAHyswDQYJKoZIhvcNAQEBBQAEggEAVqJuyxAdSV8iAceSo5fq
wR91MG0IJXuvSWz/VTnxs2HhD+YzWWSE5za79gHw8YmDSIj6tn0K0+LleU5KXegdH4p3l9lbDwtm
9TbchKK4ADUCtEVz6fzznjloX9MYw9k9bdrhmJXberhD+4/SHTHMwtLo4bk7FUzkyXN/BrW9Lgij
qGHpanIDijIkiscGYpBV0snxCZNpVleaiyb01GpdJNbGrE+gnQMlHKknjP5h22n73VeUfoEvLp9+
UKlKHXY4O74hbvcATQBUEaYll7snlkVVAQ8sqN848tSMBYNd/Q0Rn8RRYJjWu7h4sVT6sFW2daco
5FwKBPc4r1zsI0yihwAAAAAAAA==

------=_NextPart_000_000F_01CBC014.57F87250--
