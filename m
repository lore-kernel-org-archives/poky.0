Return-Path: <vsailub4u@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F0524C800B1
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 08:37:42 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pvg6 with SMTP id 6so794672pvg.35
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 06:37:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=Afx0yURnCvVc5bS/G2sbdRgSuBkZ6PeEBeRbjKeeU54=;
	b=r2LyRO7eOUuqzoQsVkEDkTrzDOVgUNnBaZ8clCVl4lN4YRVrAvNRbjqT2qYA5hLbvK
	vkpzKeQb1rHYKVOFoWm3ijzVTcYNjmBlZBKUCUkD1q2fl37i2JMcsErhN/WXuFYYEctD
	xvc9TRnC4/ccJXV60FtqOWyZ79oMv1LjwabBY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=CQ4qla3HvbEvQC95oni44WRWbfUOq14mKs/VuJoEQg7qIHvBBXV4jQvlM2ATuBAKi3
	MV804SPYNwiD6fnQFErHIli5Ek9dmGOTrsjxjgSsMWHjv2TQLW/KFNNluPqV21/pxe76
	wVA6OQaymmLgmmGiX5jhHyIjKlbzJ27SqcDW4=
MIME-Version: 1.0
Received: by 10.142.128.1 with SMTP id a1mr4340960wfd.234.1298903861769; Mon,
	28 Feb 2011 06:37:41 -0800 (PST)
Received: by 10.142.127.4 with HTTP; Mon, 28 Feb 2011 06:37:41 -0800 (PST)
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F15053E6AC8FB0@shsmsx502.ccr.corp.intel.com>
References: <AANLkTin31iKNweKt-KET12gm6Fw4v4FJay+p1aE-ZkV_@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F15052FC80F00B@shsmsx502.ccr.corp.intel.com>
	<AANLkTin+4oP4eTeG120dceTMcNeYF4JF+RXQBxc6JD1u@mail.gmail.com>
	<AANLkTi=Sr0=P2--sYZZs6g2YD+KSJi4qfJK7A19PsJOO@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F15053E6AC8FB0@shsmsx502.ccr.corp.intel.com>
Date: Mon, 28 Feb 2011 20:07:41 +0530
Message-ID: <AANLkTikyHZDeOo0WQVKvkTfRPJCxTLnb6iM82np6NEuZ@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, poky@yoctoproject.org
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
X-List-Received-Date: Mon, 28 Feb 2011 14:37:42 -0000
Content-Type: multipart/alternative; boundary=000e0cd1482e4737d4049d589f7e

--000e0cd1482e4737d4049d589f7e
Content-Type: text/plain; charset=ISO-8859-1

Hi Kevin,


I get resolved from the error:
mv: cannot stat
`/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/image/usr/bin/ftp':
No such file or directory

I find the ftp and built it but again its showing an error like

 Generating solve db for
/home/sailaja/poky-chrome/build/tmp/deploy/rpm/atom-pc...
|    total:               1      0.000000 MB      0.871674 secs
|    order:               1      0.000000 MB      0.090471 secs
|    fingerprint:       537      0.007286 MB      0.081155 secs
|    install:           278      0.000000 MB      0.179576 secs
|    dbadd:             278      0.000000 MB      0.081411 secs
|    dbget:            8678      1.128312 MB      0.016757 secs
|    dbput:            5035      2.213572 MB      0.020290 secs
|    readhdr:          2781      2.267168 MB      0.206626 secs
|    hdrload:        194461    256.103876 MB      1.118980 secs
|    hdrget:        3861605      0.000000 MB      6.181097 secs
| *Processing krb5...
| Unable to find package krb5!
| ERROR: Task failed: ('function do_rootfs failed',
'/home/sailaja/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-akshat-1.0-r0/temp/log.do_rootfs.9313')
NOTE: package poky-image-minimal-akshat-1.0-r0: task do_rootfs: Failed*
ERROR: Task 179 (/home/sailaja/poky-chrome/meta/recipes-core/images/
poky-image-minimal-akshat.bb, do_rootfs) failed with 1
ERROR: '/home/sailaja/poky-chrome/meta/recipes-core/images/
poky-image-minimal-akshat.bb' failed



Any help would be greatly appreciated.




Thanks & Regards,
> SAI
>
>
>
>
>
>
>
>

--000e0cd1482e4737d4049d589f7e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br>Hi Kevin,<br><br><br>I get resolved from the error:<span style=3D"font-=
size: 13.5pt;" lang=3D"EN-US"><br>mv: cannot stat `/home/sailaja/poky-chrom=
e/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/image/usr/bin/ftp&#39;: No =
such file or directory</span> <br>
<br>I find the ftp and built it but again its showing an error like<br><br>=
=A0Generating solve db for /home/sailaja/poky-chrome/build/tmp/deploy/rpm/a=
tom-pc...<br>|=A0=A0=A0 total:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1=
=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 0.871674 secs<br>
|=A0=A0=A0 order:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=
=A0 0.000000 MB=A0=A0=A0=A0=A0 0.090471 secs<br>|=A0=A0=A0 fingerprint:=A0=
=A0=A0=A0=A0=A0 537=A0=A0=A0=A0=A0 0.007286 MB=A0=A0=A0=A0=A0 0.081155 secs=
<br>|=A0=A0=A0 install:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 278=A0=A0=A0=A0=A0 0.=
000000 MB=A0=A0=A0=A0=A0 0.179576 secs<br>|=A0=A0=A0 dbadd:=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 278=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 0.08141=
1 secs<br>
|=A0=A0=A0 dbget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 8678=A0=A0=A0=A0=A0 1.12=
8312 MB=A0=A0=A0=A0=A0 0.016757 secs<br>|=A0=A0=A0 dbput:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 5035=A0=A0=A0=A0=A0 2.213572 MB=A0=A0=A0=A0=A0 0.020290 sec=
s<br>|=A0=A0=A0 readhdr:=A0=A0=A0=A0=A0=A0=A0=A0=A0 2781=A0=A0=A0=A0=A0 2.2=
67168 MB=A0=A0=A0=A0=A0 0.206626 secs<br>|=A0=A0=A0 hdrload:=A0=A0=A0=A0=A0=
=A0=A0 194461=A0=A0=A0 256.103876 MB=A0=A0=A0=A0=A0 1.118980 secs<br>
|=A0=A0=A0 hdrget:=A0=A0=A0=A0=A0=A0=A0 3861605=A0=A0=A0=A0=A0 0.000000 MB=
=A0=A0=A0=A0=A0 6.181097 secs<br>| <b>Processing krb5...<br>| Unable to fin=
d package krb5!<br>| ERROR: Task failed: (&#39;function do_rootfs failed&#3=
9;, &#39;/home/sailaja/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-i=
mage-minimal-akshat-1.0-r0/temp/log.do_rootfs.9313&#39;)<br>
NOTE: package poky-image-minimal-akshat-1.0-r0: task do_rootfs: Failed</b><=
br>ERROR: Task 179 (/home/sailaja/poky-chrome/meta/recipes-core/images/<a h=
ref=3D"http://poky-image-minimal-akshat.bb">poky-image-minimal-akshat.bb</a=
>, do_rootfs) failed with 1<br>
ERROR: &#39;/home/sailaja/poky-chrome/meta/recipes-core/images/<a href=3D"h=
ttp://poky-image-minimal-akshat.bb">poky-image-minimal-akshat.bb</a>&#39; f=
ailed<br><br><br><br>Any help would be greatly appreciated.<br><br><br><br>
<br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"m=
argin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204); paddin=
g-left: 1ex;"><div link=3D"blue" vlink=3D"purple" lang=3D"ZH-CN"><div><div =
style=3D"border-width: medium medium medium 1.5pt; border-style: none none =
none solid; border-color: -moz-use-text-color -moz-use-text-color -moz-use-=
text-color blue; padding: 0cm 0cm 0cm 4pt;">
<div><div class=3D"h5"><div><blockquote style=3D"border-width: medium mediu=
m medium 1pt; border-style: none none none solid; border-color: -moz-use-te=
xt-color -moz-use-text-color -moz-use-text-color rgb(204, 204, 204); paddin=
g: 0cm 0cm 0cm 6pt; margin-left: 4.8pt; margin-right: 0cm;">
<div><div><div><div><div><div style=3D"border-width: medium medium medium 1=
.5pt; border-style: none none none solid; padding: 0cm 0cm 0cm 4pt; border-=
color: -moz-use-text-color -moz-use-text-color -moz-use-text-color blue;">
<div><div><p class=3D"MsoNormal" style=3D"margin-bottom: 12pt;"><span lang=
=3D"EN-US">Thanks &amp; Regards,<br>SAI<br><br><br><br><br></span></p></div=
></div></div></div></div></div><p class=3D"MsoNormal"><span lang=3D"EN-US">=
=A0</span></p>
</div></div></blockquote></div><p class=3D"MsoNormal"><span lang=3D"EN-US">=
=A0</span></p></div></div></div></div></div></blockquote></div><br>

--000e0cd1482e4737d4049d589f7e--
