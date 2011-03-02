Return-Path: <vsailub4u@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7CBB04C800A4
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 05:35:24 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwi14 with SMTP id 14so12897pwi.35
	for <poky@yoctoproject.org>; Wed, 02 Mar 2011 03:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=KFyoMjAl+iyXrCf3bCRhLFSpJtE/0yJHYnO6pV3Q3VE=;
	b=b+APVlYxc/IhvFfR9b53rCcdD0zvJhCyfJTLImS26TvOCKZbNPMiV28mZhNDpXC2X7
	dLz+rui/aQLA9VyXdo8zcafzEgzXWSr6wi/pMnBavC7Eh3bQKehGy+kP3YxhGWJi+wmu
	ZeT116CJDEWYQsDjFVDCM7CFQ0+JuLIqQQD78=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=s9bmhbpa+dzlRSbCPa3Ol6MlyfFLVZnxCbrDIxW/HWjnm3THa56UOgttf/0AvGTgbi
	VLWla+OVRJOHoo8vPPNLKWoEBUz+1RfpcS25nx8wINl/zzYyiUkat9CokygA4sg42LgR
	OH1YhKaMlUWhWKTsceACsr5eWFCOmhd0As+xY=
MIME-Version: 1.0
Received: by 10.142.200.17 with SMTP id x17mr6348026wff.177.1299065723326;
	Wed, 02 Mar 2011 03:35:23 -0800 (PST)
Received: by 10.142.127.4 with HTTP; Wed, 2 Mar 2011 03:35:23 -0800 (PST)
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F216C10FCA3@shsmsx502.ccr.corp.intel.com>
References: <AANLkTi=CVPBSLQ_8345OrL_YKde=Mf3bqrxRZru75vSR@mail.gmail.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F216C10FCA3@shsmsx502.ccr.corp.intel.com>
Date: Wed, 2 Mar 2011 17:05:23 +0530
Message-ID: <AANLkTikfVT=RbM7EdTE2Ua4OeX8x-+dNff8Owk1Gvipb@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>, poky@yoctoproject.org
Subject: Re: got error while trying to pull the krb5 package into poky
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
X-List-Received-Date: Wed, 02 Mar 2011 11:35:24 -0000
Content-Type: multipart/alternative; boundary=000e0cd28df6fa91a6049d7e4e74

--000e0cd28df6fa91a6049d7e4e74
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Lianhao,

There are *krb5-dev-1.6.3-r6.core2.rpm* and *krb5-dbg-1.6.3-r6.core2.rpm*
in
/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/dep=
loy-rpms
.
But  there is* no specific rpm on krb5* like * krb5-1.6.3-r6.rpm*.

Again its showing an error as follows:

*error:*

readhdr:          2781      2.267168 MB      0.206626 secs
|    hdrload:        194461    256.103876 MB      1.118980 secs
|    hdrget:        3861605      0.000000 MB      6.181097 secs
| *Processing krb5...
| Unable to find package krb5!
| ERROR: Task failed: ('function do_rootfs failed',
'/home/sailaja/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-min=
imal-akshat-1.0-r0/temp/log.do_rootfs.9313')
NOTE: package poky-image-minimal-akshat-1.0-r0: task do_rootfs: Failed*
ERROR: Task 179 (/home/sailaja/poky-chrome/meta/recipes-core/images/
poky-image-minimal-akshat.bb, do_rootfs) failed with 1
ERROR: '/home/sailaja/poky-chrome/meta/recipes-core/images/
poky-image-minimal-akshat.bb' failed


I am facing the same problem with some more packages like *xcb-proto*

 Processing xcb-proto...
| *Unable to find package xcb-proto!*
| ERROR: Task failed: ('function do_rootfs failed',
'/home/sailaja/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-min=
imal-akshat-1.0-r0/temp/log.do_rootfs.16360')
NOTE: package poky-image-minimal-akshat-1.0-r0: task do_rootfs: Failed
ERROR: Task 191 (/home/sailaja/poky-chrome/meta/recipes-core/images/
poky-image-minimal-akshat.bb, do_rootfs) failed with 1
ERROR: '/home/sailaja/poky-chrome/meta/recipes-core/images/
poky-image-minimal-akshat.bb' failed.


Please help in fixing the problem.
Could you please tell me what can I do now?

Thanks & Regards,
SAI




 Hi SAI,
>
>
>
> Does the =93bitbake krb5=94 succeed? If it does, the rpm file it generate=
d
> should be  under the directory tmp/deploy/rpm/core2 if you set MACHINE to
> atom-pc in conf/local.conf. Or you may check at the directory
> =93/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r=
6/deploy-rpms=94,
> the RPM file is actually created here and later gets copied to
> tmp/deploy/rpm.
>
>
>
> Best Regards,
>
> Lianhao
>
>
>
> *From:* v sailaja [mailto:vsailub4u@gmail.com]
> *Sent:* Tuesday, March 01, 2011 6:46 PM
> *To:* Lu, Lianhao; Tian, Kevin; poky@yoctoproject.org
> *Subject:* got error while trying to pull the krb5 package into poky
>
>
>
> Hi,
>
> I tried with the following
>
>
>               bitbake krb5  -c cleanall
>               bitbake krb5
> But again I am getting the same error and krb5 rpm file is not generated
> at  tmp/deploy/rpm.
>
>
>  The value is
>
> *PACKAGE_CLASSES ?=3D "package_rpm package_ipk"*
>
> *
> error:*
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
> Please help me in finding the solution.
> Any help  would be greatly apprecited.
>
> Thanks & Regards,
> SAI
>
>
>
>
>
>
>
>
> Hi SAI,
>
>
>
> Please try the following to rebuild the krb5 to see if the rpm is
> generated:
>
>
>
> -          bitbake krb5  -c cleanall
>
> -          bitbake krb5
>
>
>
> This should generate the rpm file under the directory of =93tmp/deploy/rp=
m=94.
>
>
>
> b.t.w. what=92s the value set to the variable PACKAGE_CLASSES in your
> conf/local.conf?
>
>
>
> Best Regards,
>
> Lianhao Lu
>
>
>
>
>

--000e0cd28df6fa91a6049d7e4e74
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Lianhao,<br><br>There are <b>krb5-dev-1.6.3-r6.core2.rpm</b> and=A0<b>kr=
b5-dbg-1.6.3-r6.core2.rpm</b>=A0 in=A0 <span style=3D"font-size: 10.5pt; co=
lor: rgb(31, 73, 125);" lang=3D"EN-US">/home/sailaja/poky-chrome/build/tmp/=
work/core2-poky-linux/krb5-1.6.3-r6/deploy-rpms</span>.<br>
But=A0 there is<b> no specific rpm on krb5</b> like=A0<b> <span style=3D"fo=
nt-size: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">krb5-1.6.3-r6</sp=
an>.rpm</b>.<br><br>Again its showing an error as follows:<br><br><u><b>err=
or:</b></u><br>
<br><span lang=3D"EN-US"><span style=3D"color: rgb(51, 102, 102);">readhdr:=
=A0=A0=A0=A0=A0=A0=A0=A0=A0
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
=3D"http://poky-image-minimal-akshat.bb/" target=3D"_blank">poky-image-mini=
mal-akshat.bb</a>,
do_rootfs) failed with 1<br>
ERROR: &#39;/home/sailaja/poky-chrome/meta/recipes-core/images/<a href=3D"h=
ttp://poky-image-minimal-akshat.bb/" target=3D"_blank">poky-image-minimal-a=
kshat.bb</a>&#39;
failed<br>
</span></span><br><br>I am facing the same problem with some more packages =
like <b>xcb-proto</b><br><br>=A0Processing xcb-proto...<br>| <b>Unable to f=
ind package xcb-proto!</b><br>| ERROR: Task failed: (&#39;function do_rootf=
s failed&#39;, &#39;/home/sailaja/poky-chrome/build/tmp/work/atom-pc-poky-l=
inux/poky-image-minimal-akshat-1.0-r0/temp/log.do_rootfs.16360&#39;)<br>
NOTE: package poky-image-minimal-akshat-1.0-r0: task do_rootfs: Failed<br>E=
RROR: Task 191 (/home/sailaja/poky-chrome/meta/recipes-core/images/<a href=
=3D"http://poky-image-minimal-akshat.bb">poky-image-minimal-akshat.bb</a>, =
do_rootfs) failed with 1<br>
ERROR: &#39;/home/sailaja/poky-chrome/meta/recipes-core/images/<a href=3D"h=
ttp://poky-image-minimal-akshat.bb">poky-image-minimal-akshat.bb</a>&#39; f=
ailed.<br><br><br>Please help in fixing the problem.<br>Could you please te=
ll me what can I do now?<br>
<br>Thanks &amp; Regards,<br>SAI<br><br><br><br><div class=3D"gmail_quote">=
<br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; b=
order-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">








<div link=3D"blue" vlink=3D"purple" lang=3D"ZH-CN">

<div>

<p class=3D"MsoNormal" style=3D"text-align: justify;"><span style=3D"font-s=
ize: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">Hi SAI,</span></p>

<p class=3D"MsoNormal" style=3D"text-align: justify;"><span style=3D"font-s=
ize: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">=A0</span></p>

<p class=3D"MsoNormal" style=3D"text-align: justify;"><span style=3D"font-s=
ize: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">Does the =93bitbake k=
rb5=94 succeed? If it does, the rpm
file it generated should be =A0under the directory tmp/deploy/rpm/core2 if
you set MACHINE to atom-pc in conf/local.conf. Or you may check at the
directory =93/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5=
-1.6.3-r6/deploy-rpms=94,
the RPM file is actually created here and later gets copied to tmp/deploy/r=
pm.</span></p>

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
rom:</span></b><span style=3D"font-size: 10pt;" lang=3D"EN-US"> v sailaja [=
mailto:<a href=3D"mailto:vsailub4u@gmail.com" target=3D"_blank">vsailub4u@g=
mail.com</a>] <br>

<b>Sent:</b> Tuesday, March 01, 2011 6:46 PM<br>
<b>To:</b> Lu, Lianhao; Tian, Kevin; <a href=3D"mailto:poky@yoctoproject.or=
g" target=3D"_blank">poky@yoctoproject.org</a><br>
<b>Subject:</b> got error while trying to pull the krb5 package into poky</=
span></p>

</div>

</div><div><div></div><div class=3D"h5">

<p class=3D"MsoNormal"><span lang=3D"EN-US">=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin-bottom: 12pt;"><span style=3D"color:=
 rgb(51, 102, 102);" lang=3D"EN-US">Hi,<br>
<br>
I tried with the following <br>
</span><span style=3D"font-size: 7pt; color: rgb(51, 102, 102);" lang=3D"EN=
-US">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
</span><span style=3D"font-size: 10.5pt; color: rgb(51, 102, 102);" lang=3D=
"EN-US"><br>
<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0
bitbake krb5 =A0-c cleanall =A0 <br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0
bitbake krb5</span><span style=3D"color: rgb(51, 102, 102);" lang=3D"EN-US"=
><br>
But again I am getting the same error and krb5 rpm file is not generated
at=A0 tmp/deploy/rpm.</span><span lang=3D"EN-US"><br>
<span style=3D"color: rgb(51, 102, 102);"><br>
<br>
=A0The value is </span><br>
<br>
<b><span style=3D"color: rgb(51, 153, 153);">PACKAGE_CLASSES ?=3D &quot;pac=
kage_rpm
package_ipk&quot;</span></b><br>
<br>
<b><br>
error:</b><br>
<span style=3D"color: rgb(51, 102, 102);">=A0Generating solve db for
/home/sailaja/poky-chrome/build/tmp/deploy/rpm/atom-pc...<br>
|=A0=A0=A0
total:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
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
|=A0=A0=A0
dbadd:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
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
=3D"http://poky-image-minimal-akshat.bb/" target=3D"_blank">poky-image-mini=
mal-akshat.bb</a>,
do_rootfs) failed with 1<br>
ERROR: &#39;/home/sailaja/poky-chrome/meta/recipes-core/images/<a href=3D"h=
ttp://poky-image-minimal-akshat.bb/" target=3D"_blank">poky-image-minimal-a=
kshat.bb</a>&#39;
failed<br>
</span><br>
<br>
<br>
<span style=3D"color: rgb(51, 102, 102);">Please help me in finding the sol=
ution.<br>
Any help=A0 would be greatly apprecited.<br>
<br>
Thanks &amp; Regards,<br>
SAI</span><br>
<br>
<br>
<span style=3D"color: rgb(51, 153, 153);"><br>
</span><br>
<br>
<br>
</span></p>

<div>

<blockquote style=3D"border-width: medium medium medium 1pt; border-style: =
none none none solid; border-color: -moz-use-text-color -moz-use-text-color=
 -moz-use-text-color rgb(204, 204, 204); padding: 0cm 0cm 0cm 6pt; margin: =
5pt 0cm 5pt 4.8pt;">


<p class=3D"MsoNormal"><span lang=3D"EN-US">=A0</span></p>

<div>

<div>

<p class=3D"MsoNormal" style=3D"margin-left: 4.8pt;"><span style=3D"font-si=
ze: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">Hi
SAI,</span><span lang=3D"EN-US"></span></p>

<p class=3D"MsoNormal" style=3D"margin-left: 4.8pt;"><span style=3D"font-si=
ze: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">=A0</span><span lang=
=3D"EN-US"></span></p>

<p class=3D"MsoNormal" style=3D"margin-left: 4.8pt;"><span style=3D"font-si=
ze: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">Please
try the following to rebuild the krb5 to see if the rpm is generated:</span=
><span lang=3D"EN-US"></span></p>

<p class=3D"MsoNormal" style=3D"margin-left: 4.8pt;"><span style=3D"font-si=
ze: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">=A0</span><span lang=
=3D"EN-US"></span></p>

<p style=3D"margin-left: 22.8pt;"><span style=3D"font-size: 10.5pt; color: =
rgb(31, 73, 125);" lang=3D"EN-US">-</span><span style=3D"font-size: 7pt; co=
lor: rgb(31, 73, 125);" lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=A0=A0
</span><span style=3D"font-size: 10.5pt; color: rgb(31, 73, 125);" lang=3D"=
EN-US">bitbake krb5
=A0-c cleanall</span><span lang=3D"EN-US"></span></p>

<p style=3D"margin-left: 22.8pt;"><span style=3D"font-size: 10.5pt; color: =
rgb(31, 73, 125);" lang=3D"EN-US">-</span><span style=3D"font-size: 7pt; co=
lor: rgb(31, 73, 125);" lang=3D"EN-US">=A0=A0=A0=A0=A0=A0=A0=A0=A0
</span><span style=3D"font-size: 10.5pt; color: rgb(31, 73, 125);" lang=3D"=
EN-US">bitbake krb5</span><span lang=3D"EN-US"></span></p>

<p class=3D"MsoNormal" style=3D"margin-left: 4.8pt;"><span style=3D"font-si=
ze: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">=A0</span><span lang=
=3D"EN-US"></span></p>

<p class=3D"MsoNormal" style=3D"margin-left: 4.8pt;"><span style=3D"font-si=
ze: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">This
should generate the rpm file under the directory of
=93tmp/deploy/rpm=94. </span><span lang=3D"EN-US"></span></p>

<p class=3D"MsoNormal" style=3D"margin-left: 4.8pt;"><span style=3D"font-si=
ze: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">=A0</span><span lang=
=3D"EN-US"></span></p>

<p class=3D"MsoNormal" style=3D"margin-left: 4.8pt;"><span style=3D"font-si=
ze: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">b.t.w.
what=92s the value set to the variable PACKAGE_CLASSES in your
conf/local.conf? </span><span lang=3D"EN-US"></span></p>

<p class=3D"MsoNormal" style=3D"margin-left: 4.8pt;"><span style=3D"font-si=
ze: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">=A0</span><span lang=
=3D"EN-US"></span></p>

<p class=3D"MsoNormal" style=3D"margin-left: 4.8pt;"><span style=3D"font-si=
ze: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">Best
Regards,</span><span lang=3D"EN-US"></span></p>

<p class=3D"MsoNormal" style=3D"margin-left: 4.8pt;"><span style=3D"font-si=
ze: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">Lianhao
Lu</span><span lang=3D"EN-US"></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-US">=A0</span></p>

</div>

</div>

</blockquote>

</div>

<p class=3D"MsoNormal"><span lang=3D"EN-US">=A0</span></p>

</div></div></div>

</div>

</div>


</blockquote></div><br>

--000e0cd28df6fa91a6049d7e4e74--
