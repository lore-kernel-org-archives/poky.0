Return-Path: <vsailub4u@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0068F4C800A4
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 04:45:54 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pvg6 with SMTP id 6so984860pvg.35
	for <poky@yoctoproject.org>; Tue, 01 Mar 2011 02:45:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=bOdrV8xyJmtPpeL6JTLlJuTOTWa4puBn3t2urWu9BA0=;
	b=hIBGAu2ISmXno9kqTXiogSseywtENag2GlSHHyYw7KDJDzuYFigTeekl/c4O+jXCJF
	xWIQ8bzB9bA6WCqxICma2ZiKpzStdz/xz+clDfUKZWS1KwMjS4QWNJrXXy/11Se3ErT6
	Da2BS6uiNlBYnlRJGwuto6hkcX+bskbu8Vzg4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=tVAeqx/yZAaCA8xqFA9mPuF0II61vqqVA+sWI8Csc+nBAL0YeCIiKmEhiZW7TNi7R7
	kpJ9TT1+0w3EkHkj153V+lHEhR/OeTPm8yhEcM2Ug6D2j52rJ2NOLdgNVOVnT4kHrhR6
	Af8+hiRai/Qmx2nwHgsFUiq04EcNKLswiy+mQ=
MIME-Version: 1.0
Received: by 10.142.200.17 with SMTP id x17mr5283200wff.177.1298976354623;
	Tue, 01 Mar 2011 02:45:54 -0800 (PST)
Received: by 10.142.127.4 with HTTP; Tue, 1 Mar 2011 02:45:54 -0800 (PST)
Date: Tue, 1 Mar 2011 16:15:54 +0530
Message-ID: <AANLkTi=CVPBSLQ_8345OrL_YKde=Mf3bqrxRZru75vSR@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>, "Tian, Kevin" <kevin.tian@intel.com>,
	poky@yoctoproject.org
Subject: got error while trying to pull the krb5 package into poky
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
X-List-Received-Date: Tue, 01 Mar 2011 10:45:55 -0000
Content-Type: multipart/alternative; boundary=000e0cd28df63063b5049d6980b1

--000e0cd28df63063b5049d6980b1
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi,

I tried with the following


              bitbake krb5  -c cleanall
              bitbake krb5
But again I am getting the same error and krb5 rpm file is not generated at
tmp/deploy/rpm.


 The value is

*PACKAGE_CLASSES ?=3D "package_rpm package_ipk"*

*
error:*
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
'/home/sailaja/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-min=
imal-akshat-1.0-r0/temp/log.do_rootfs.9313')
NOTE: package poky-image-minimal-akshat-1.0-r0: task do_rootfs: Failed*
ERROR: Task 179 (/home/sailaja/poky-chrome/meta/recipes-core/images/
poky-image-minimal-akshat.bb, do_rootfs) failed with 1
ERROR: '/home/sailaja/poky-chrome/meta/recipes-core/images/
poky-image-minimal-akshat.bb' failed



Please help me in finding the solution.
Any help  would be greatly apprecited.

Thanks & Regards,
SAI








 Hi SAI,
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

--000e0cd28df63063b5049d6980b1
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<span style=3D"color: rgb(51, 102, 102);">Hi,</span><br style=3D"color: rgb=
(51, 102, 102);"><br style=3D"color: rgb(51, 102, 102);"><span style=3D"col=
or: rgb(51, 102, 102);">I tried with the following </span><br style=3D"colo=
r: rgb(51, 102, 102);">


<span style=3D"font-size: 10.5pt; color: rgb(51, 102, 102);" lang=3D"EN-US"=
><span><span style=3D"font: 7pt &quot;Times New Roman&quot;;">=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
</span></span><br><br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0 bitbake krb5 =
=A0-c cleanall =A0 <br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0 bitbake krb5</=
span><br style=3D"color: rgb(51, 102, 102);"><span style=3D"color: rgb(51, =
102, 102);">But again I am getting the same error and krb5 rpm file is not =
generated at=A0 tmp/deploy/rpm.</span><br>

<br style=3D"color: rgb(51, 102, 102);">
<br style=3D"color: rgb(51, 102, 102);"><span style=3D"color: rgb(51, 102, =
102);">=A0The value is </span><br><br><b style=3D"color: rgb(51, 153, 153);=
">PACKAGE_CLASSES ?=3D &quot;package_rpm package_ipk&quot;</b><br><br><b><b=
r>error:</b><br>

<span style=3D"color: rgb(51, 102, 102);" lang=3D"EN-US">=A0Generating solv=
e db for /home/sailaja/poky-chrome/build/tmp/deploy/rpm/atom-pc...<br>
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
|=A0=A0=A0 install:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
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
|=A0=A0=A0 readhdr:=A0=A0=A0=A0=A0=A0=A0=A0=A0
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
failed</span><br style=3D"color: rgb(51, 102, 102);"><br><br><br><span styl=
e=3D"color: rgb(51, 102, 102);">Please help me in finding the solution.</sp=
an><br style=3D"color: rgb(51, 102, 102);">
<span style=3D"color: rgb(51, 102, 102);">Any help=A0 would be greatly appr=
ecited.</span><br style=3D"color: rgb(51, 102, 102);"><br style=3D"color: r=
gb(51, 102, 102);"><span style=3D"color: rgb(51, 102, 102);">Thanks &amp; R=
egards,</span><br style=3D"color: rgb(51, 102, 102);">


<span style=3D"color: rgb(51, 102, 102);">SAI</span><br><br><br><br style=
=3D"color: rgb(51, 153, 153);"><br><br><br><br><div class=3D"gmail_quote"><=
br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; bo=
rder-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">













<div link=3D"blue" vlink=3D"purple" lang=3D"ZH-CN">

<div>

<p class=3D"MsoNormal"><span style=3D"font-size: 10.5pt; color: rgb(31, 73,=
 125);" lang=3D"EN-US">Hi SAI,</span></p>

<p class=3D"MsoNormal"><span style=3D"font-size: 10.5pt; color: rgb(31, 73,=
 125);" lang=3D"EN-US">=A0</span></p>

<p class=3D"MsoNormal"><span style=3D"font-size: 10.5pt; color: rgb(31, 73,=
 125);" lang=3D"EN-US">Please try the following to rebuild the krb5 to see =
if the rpm
is generated:</span></p>

<p class=3D"MsoNormal"><span style=3D"font-size: 10.5pt; color: rgb(31, 73,=
 125);" lang=3D"EN-US">=A0</span></p>

<p style=3D"margin-left: 18pt;"><span style=3D"font-size: 10.5pt; color: rg=
b(31, 73, 125);" lang=3D"EN-US"><span>-<span style=3D"font: 7pt &quot;Times=
 New Roman&quot;;">=A0=A0=A0=A0=A0=A0=A0=A0=A0
</span></span></span><span style=3D"font-size: 10.5pt; color: rgb(31, 73, 1=
25);" lang=3D"EN-US">bitbake krb5 =A0-c cleanall</span></p>

<p style=3D"margin-left: 18pt;"><span style=3D"font-size: 10.5pt; color: rg=
b(31, 73, 125);" lang=3D"EN-US"><span>-<span style=3D"font: 7pt &quot;Times=
 New Roman&quot;;">=A0=A0=A0=A0=A0=A0=A0=A0=A0
</span></span></span><span style=3D"font-size: 10.5pt; color: rgb(31, 73, 1=
25);" lang=3D"EN-US">bitbake krb5</span></p>

<p class=3D"MsoNormal"><span style=3D"font-size: 10.5pt; color: rgb(31, 73,=
 125);" lang=3D"EN-US">=A0</span></p>

<p class=3D"MsoNormal"><span style=3D"font-size: 10.5pt; color: rgb(31, 73,=
 125);" lang=3D"EN-US">This should generate the rpm file under the director=
y of =93tmp/deploy/rpm=94.
</span></p>

<p class=3D"MsoNormal"><span style=3D"font-size: 10.5pt; color: rgb(31, 73,=
 125);" lang=3D"EN-US">=A0</span></p>

<p class=3D"MsoNormal"><span style=3D"font-size: 10.5pt; color: rgb(31, 73,=
 125);" lang=3D"EN-US">b.t.w. what=92s the value set to the variable PACKAG=
E_CLASSES
in your conf/local.conf? </span></p>

<p class=3D"MsoNormal"><span style=3D"font-size: 10.5pt; color: rgb(31, 73,=
 125);" lang=3D"EN-US">=A0</span></p>

<p class=3D"MsoNormal"><span style=3D"font-size: 10.5pt; color: rgb(31, 73,=
 125);" lang=3D"EN-US">Best Regards,</span></p>

<p class=3D"MsoNormal"><span style=3D"font-size: 10.5pt; color: rgb(31, 73,=
 125);" lang=3D"EN-US">Lianhao Lu</span></p><br></div>

</div>


</blockquote></div><br>

--000e0cd28df63063b5049d6980b1--
