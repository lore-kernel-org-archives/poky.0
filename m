Return-Path: <vsailub4u@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id CDBD04C800A4
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 00:42:46 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwi14 with SMTP id 14so1068139pwi.35
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 22:42:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=MzKmDxHXvRfKjMpQA7kHtepvnMQTWtCiG9AkfcJGVzE=;
	b=UiJrhxbl4NzTlAFGrS4C0oXQ5g1N2xU+vejImY7oiwYSTzcnqh7NQccimeUq/vGsrk
	GQgj+L59sl5WhEptntQUrQKQ/4CoDbcjn8+g/udRP2MRlYCmCgTVR2XTN+ddR1ZTA2zb
	/UOj6yXSSsHUhCT3bxk+RP87VsCkxqDZr+jE0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=gEMUOQ5U7qhRiLYC0nv4CpNopM5wLz1uLYBDKy5rBi9nV6g1m4+wVRPEZRECK0u37q
	oGkkj7an56ZHO8fZZpJytbn/wAVYXsPSUnOtC+iQWSTbSDp9usrUjUhQg1ho0htx2GcU
	k+Icn2bN97jFfmVwzXn4eLW3dKF3KvrMr/kSA=
MIME-Version: 1.0
Received: by 10.142.242.9 with SMTP id p9mr5113382wfh.291.1298961766098; Mon,
	28 Feb 2011 22:42:46 -0800 (PST)
Received: by 10.142.127.4 with HTTP; Mon, 28 Feb 2011 22:42:46 -0800 (PST)
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F216C10F601@shsmsx502.ccr.corp.intel.com>
References: <AANLkTin31iKNweKt-KET12gm6Fw4v4FJay+p1aE-ZkV_@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F15052FC80F00B@shsmsx502.ccr.corp.intel.com>
	<AANLkTin+4oP4eTeG120dceTMcNeYF4JF+RXQBxc6JD1u@mail.gmail.com>
	<AANLkTi=Sr0=P2--sYZZs6g2YD+KSJi4qfJK7A19PsJOO@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F15053E6AC8FB0@shsmsx502.ccr.corp.intel.com>
	<AANLkTikyHZDeOo0WQVKvkTfRPJCxTLnb6iM82np6NEuZ@mail.gmail.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F216C10F601@shsmsx502.ccr.corp.intel.com>
Date: Tue, 1 Mar 2011 12:12:46 +0530
Message-ID: <AANLkTim8bguYXV+gJgZC+v1nNi7rTnsmvrYmxyAj6=3F@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>, "Tian, Kevin" <kevin.tian@intel.com>,
	poky@yoctoproject.org
Subject: Re: problems while building an image uasing poky
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
X-List-Received-Date: Tue, 01 Mar 2011 06:42:47 -0000
Content-Type: multipart/alternative; boundary=000e0cd2e5aaa5297c049d661ac2

--000e0cd2e5aaa5297c049d661ac2
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

 Hi,


I tried to find out the* krb5 rpm package file* but* it is not there in my
poky*.

could you please tell me what to do now?







 Hi SAI,
>
>
>
> Could you make sure the krb5 rpm package file is generated and is in the
> proper subdirectory(corresponding to your target architecture) under
> =93tmp/deploy/rpm=94?
>
>
>
> Best Regards,
>
> Lianhao
>
>
>
> *From:* poky-bounces@yoctoproject.org [mailto:
> poky-bounces@yoctoproject.org] *On Behalf Of *v sailaja
> *Sent:* Monday, February 28, 2011 10:38 PM
>
> *To:* Tian, Kevin; poky@yoctoproject.org
> *Subject:* Re: [poky] problems while building an image uasing poky
>
>
>
>
> Hi Kevin,
>
>
> It resolved from the error:
>
> mv: cannot stat
> `/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/=
image/usr/bin/ftp':
> No such file or directory
>
> I find the ftp and built it but again its showing an error like
>
>  Generating solve db for
> /home/sailaja/poky-chrome/build/tmp/deploy/rpm/atom-pc...
> |    total:               1      0.000000 MB      0.871674 secs
> |    order:               1      0.000000 MB      0.090471 secs
> |    fingerprint:       537      0.007286 MB      0.081155 secs
> |    install:           278      0.000000 MB      0.179576 secs
> |    dbadd:             278      0.000000 MB      0.081411 secs
> |    dbget:            8678      1.128312 MB      0.016757 secs
> |    dbput:            5035      2.213572 MB      0.020290 secs
> |    readhdr:          2781      2.267168 MB      0.206626 secs
> |    hdrload:        194461    256.103876 MB      1.118980 secs
> |    hdrget:        3861605      0.000000 MB      6.181097 secs
> | *Processing krb5...
> | Unable to find package krb5!
> | ERROR: Task failed: ('function do_rootfs failed',
> '/home/sailaja/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-m=
inimal-akshat-1.0-r0/temp/log.do_rootfs.9313')
> NOTE: package poky-image-minimal-akshat-1.0-r0: task do_rootfs: Failed*
> ERROR: Task 179 (/home/sailaja/poky-chrome/meta/recipes-core/images/
> poky-image-minimal-akshat.bb, do_rootfs) failed with 1
> ERROR: '/home/sailaja/poky-chrome/meta/recipes-core/images/
> poky-image-minimal-akshat.bb' failed
>
>
>
> Any help would be greatly appreciated.
>
>
>
>          Thanks & Regards,
> SAI
>
>
>
>
>
>
>
>
>

--000e0cd2e5aaa5297c049d661ac2
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<br><font size=3D"4">=A0<span style=3D"color: rgb(51, 102, 102);">Hi,</span=
><br style=3D"color: rgb(51, 102, 102);"><br style=3D"color: rgb(51, 102, 1=
02);"><span style=3D"color: rgb(51, 102, 102);">=A0</span><br style=3D"colo=
r: rgb(51, 102, 102);">
<span style=3D"color: rgb(51, 102, 102);">I tried to find out the</span><b =
style=3D"color: rgb(51, 102, 102);"> krb5 rpm package file</b><span style=
=3D"color: rgb(51, 102, 102);"> but</span><b style=3D"color: rgb(51, 102, 1=
02);"> it is not there in my poky</b><span style=3D"color: rgb(51, 102, 102=
);">.</span><br style=3D"color: rgb(51, 102, 102);">
</font><br style=3D"color: rgb(51, 102, 102);"><span style=3D"color: rgb(51=
, 102, 102);">could you please tell me what to do now?</span><br>=A0<br><di=
v class=3D"gmail_quote"><br><br><br><br><br><br><blockquote class=3D"gmail_=
quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, =
204, 204); padding-left: 1ex;">









<div link=3D"blue" vlink=3D"purple" lang=3D"ZH-CN">

<div>

<p class=3D"MsoNormal" style=3D"text-align: justify;"><span style=3D"font-s=
ize: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">Hi SAI,</span></p>

<p class=3D"MsoNormal" style=3D"text-align: justify;"><span style=3D"font-s=
ize: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">=A0</span></p>

<p class=3D"MsoNormal" style=3D"text-align: justify;"><span style=3D"font-s=
ize: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">Could you make sure t=
he krb5 rpm package file is generated and is
in the proper subdirectory(corresponding to your target architecture) under=
 =93tmp/deploy/rpm=94?</span></p>

<p class=3D"MsoNormal" style=3D"text-align: justify;"><span style=3D"font-s=
ize: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">=A0</span></p>

<p class=3D"MsoNormal" style=3D"text-align: justify;"><span style=3D"font-s=
ize: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">Best Regards,</span><=
/p>

<p class=3D"MsoNormal" style=3D"text-align: justify;"><span style=3D"font-s=
ize: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">Lianhao</span></p>

<p class=3D"MsoNormal"><span style=3D"font-size: 10.5pt; color: rgb(31, 73,=
 125);" lang=3D"EN-US">=A0</span></p>

<div style=3D"border-width: medium medium medium 1.5pt; border-style: none =
none none solid; border-color: -moz-use-text-color -moz-use-text-color -moz=
-use-text-color blue; padding: 0cm 0cm 0cm 4pt;">

<div>

<div style=3D"border-width: 1pt medium medium; border-style: solid none non=
e; border-color: rgb(181, 196, 223) -moz-use-text-color -moz-use-text-color=
; padding: 3pt 0cm 0cm;">

<p class=3D"MsoNormal"><b><span style=3D"font-size: 10pt;" lang=3D"EN-US">F=
rom:</span></b><span style=3D"font-size: 10pt;" lang=3D"EN-US"> <a href=3D"=
mailto:poky-bounces@yoctoproject.org" target=3D"_blank">poky-bounces@yoctop=
roject.org</a>
[mailto:<a href=3D"mailto:poky-bounces@yoctoproject.org" target=3D"_blank">=
poky-bounces@yoctoproject.org</a>] <b>On Behalf Of </b>v sailaja<br>
<b>Sent:</b> Monday, February 28, 2011 10:38 PM<div class=3D"im"><br>
<b>To:</b> Tian, Kevin; <a href=3D"mailto:poky@yoctoproject.org" target=3D"=
_blank">poky@yoctoproject.org</a><br>
<b>Subject:</b> Re: [poky] problems while building an image uasing poky</di=
v></span></p>

</div>

</div>

<p class=3D"MsoNormal"><span lang=3D"EN-US">=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom: 12pt;"><span lang=3D"EN-US">=
<br><div><div></div><div class=3D"h5">
Hi Kevin,<br>
<br>
<br>
It resolved from the error:</div></div></span></p><div><div></div><div clas=
s=3D"h5"><span style=3D"font-size: 13.5pt;" lang=3D"EN-US"><br>
mv: cannot stat `/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/=
krb5-1.6.3-r6/image/usr/bin/ftp&#39;:
No such file or directory</span><span lang=3D"EN-US"> <br>
<br>
I find the ftp and built it but again its showing an error like<br>
<br>
=A0Generating solve db for
/home/sailaja/poky-chrome/build/tmp/deploy/rpm/atom-pc...<br>
|=A0=A0=A0 total:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
1=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0
0.871674 secs<br>
|=A0=A0=A0
order:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
1=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0
0.090471 secs<br>
|=A0=A0=A0 fingerprint:=A0=A0=A0=A0=A0=A0
537=A0=A0=A0=A0=A0 0.007286 MB=A0=A0=A0=A0=A0
0.081155 secs<br>
|=A0=A0=A0
install:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
278=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0
0.179576 secs<br>
|=A0=A0=A0 dbadd:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
278=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0
0.081411 secs<br>
|=A0=A0=A0
dbget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
8678=A0=A0=A0=A0=A0 1.128312 MB=A0=A0=A0=A0=A0
0.016757 secs<br>
|=A0=A0=A0
dbput:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
5035=A0=A0=A0=A0=A0 2.213572 MB=A0=A0=A0=A0=A0
0.020290 secs<br>
|=A0=A0=A0
readhdr:=A0=A0=A0=A0=A0=A0=A0=A0=A0
2781=A0=A0=A0=A0=A0 2.267168 MB=A0=A0=A0=A0=A0
0.206626 secs<br>
|=A0=A0=A0 hdrload:=A0=A0=A0=A0=A0=A0=A0
194461=A0=A0=A0 256.103876 MB=A0=A0=A0=A0=A0 1.118980
secs<br>
|=A0=A0=A0 hdrget:=A0=A0=A0=A0=A0=A0=A0
3861605=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0
6.181097 secs<br>
| <b>Processing krb5...<br>
| Unable to find package krb5!<br>
| ERROR: Task failed: (&#39;function do_rootfs failed&#39;,
&#39;/home/sailaja/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image=
-minimal-akshat-1.0-r0/temp/log.do_rootfs.9313&#39;)<br>
NOTE: package poky-image-minimal-akshat-1.0-r0: task do_rootfs: Failed</b><=
br>
ERROR: Task 179 (/home/sailaja/poky-chrome/meta/recipes-core/images/<a href=
=3D"http://poky-image-minimal-akshat.bb" target=3D"_blank">poky-image-minim=
al-akshat.bb</a>,
do_rootfs) failed with 1<br>
ERROR: &#39;/home/sailaja/poky-chrome/meta/recipes-core/images/<a href=3D"h=
ttp://poky-image-minimal-akshat.bb" target=3D"_blank">poky-image-minimal-ak=
shat.bb</a>&#39;
failed<br>
<br>
<br>
<br>
Any help would be greatly appreciated.<br>
<br>
<br>
<br>
</span></div></div>

<div>

<blockquote style=3D"border-width: medium medium medium 1pt; border-style: =
none none none solid; padding: 0cm 0cm 0cm 6pt; margin: 5pt 0cm 5pt 4.8pt; =
border-color: -moz-use-text-color -moz-use-text-color -moz-use-text-color r=
gb(204, 204, 204);">


<div>

<div>

<div style=3D"border-width: medium medium medium 1.5pt; border-style: none =
none none solid; padding: 0cm 0cm 0cm 4pt; border-color: -moz-use-text-colo=
r -moz-use-text-color -moz-use-text-color blue;">

<div>

<div>

<div>

<blockquote style=3D"border-width: medium medium medium 1pt; border-style: =
none none none solid; border-color: -moz-use-text-color -moz-use-text-color=
 -moz-use-text-color windowtext; padding: 0cm 0cm 0cm 6pt; margin: 5pt 0cm =
5pt 4.8pt;">


<div>

<div>

<div>

<div>

<div>

<div style=3D"border-width: medium medium medium 1.5pt; border-style: none =
none none solid; padding: 0cm 0cm 0cm 4pt; border-color: -moz-use-text-colo=
r -moz-use-text-color -moz-use-text-color blue;">

<div>

<div>

<p class=3D"MsoNormal" style=3D"margin-bottom: 12pt; margin-left: 9.6pt;"><=
span lang=3D"EN-US">Thanks &amp; Regards,<br>
SAI<br>
<br>
<br>
<br>
</span></p>

</div>

</div>

</div>

</div>

</div>

</div>

<p class=3D"MsoNormal" style=3D"margin-left: 9.6pt;"><span lang=3D"EN-US">=
=A0</span></p>

</div>

</div>

</blockquote>

</div>

<p class=3D"MsoNormal" style=3D"margin-left: 4.8pt;"><span lang=3D"EN-US">=
=A0</span></p>

</div>

</div>

</div>

</div>

</div>

</blockquote>

</div>

<p class=3D"MsoNormal"><span lang=3D"EN-US">=A0</span></p>

</div>

</div>

</div>


</blockquote></div><br>

--000e0cd2e5aaa5297c049d661ac2--
