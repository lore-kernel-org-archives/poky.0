Return-Path: <vsailub4u@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id F0D014C80510
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 05:19:45 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwi14 with SMTP id 14so1104361pwi.35
	for <poky@yoctoproject.org>; Tue, 01 Mar 2011 03:19:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=kpLHkxhJr3xRTtv/0tsdbfciGIyun7g+DW2LBDePuFo=;
	b=qr7L4oArCPd8qucsGsLU821hJrVh2G/MVK5TjJICboWsv/90dL2NSeb5NJjWb4zYL9
	LbolG+ItvVy8uEO/wGfA9v8vaR5suB52Fu7T5hltHk6SsKXfeFDU3oSIpzPZJVRkwkPd
	avhswR+Vb0cLnnIO97pAehxLVvKY62fpboYQA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=OHETbJYmaNwxHCZe/g4y4Z7qI/kBVEKWeVhXg+7BBzj3k52XyJl2HZ3eEfsqXtWPQp
	DWxxf4FpI3PSHiDFoIZYhFiBaVv4n4wmr2Tm0zgKv88vQGt9Kg3WYxtx5fjeuxoPFDJr
	bga/V5GKsKImlTghCPOMr1lVijuRPgyjvCelg=
MIME-Version: 1.0
Received: by 10.142.128.1 with SMTP id a1mr5278324wfd.234.1298978385021; Tue,
	01 Mar 2011 03:19:45 -0800 (PST)
Received: by 10.142.127.4 with HTTP; Tue, 1 Mar 2011 03:19:44 -0800 (PST)
In-Reply-To: <AANLkTin8XXpY8EHEFia8bNqye2MCTM98uApaXxZ=0Lcb@mail.gmail.com>
References: <AANLkTin8XXpY8EHEFia8bNqye2MCTM98uApaXxZ=0Lcb@mail.gmail.com>
Date: Tue, 1 Mar 2011 16:49:44 +0530
Message-ID: <AANLkTikTgvWpc=LGWMBdnjwAX2zFMb5o4EDazUmYU6ta@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>, "Tian, Kevin" <kevin.tian@intel.com>,
	poky@yoctoproject.org, "Lu, Lianhao" <lianhao.lu@intel.com>
Subject: problem with alsa-tools in poky
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
X-List-Received-Date: Tue, 01 Mar 2011 11:19:46 -0000
Content-Type: multipart/alternative; boundary=000e0cd1482e35cc9f049d69f951

--000e0cd1482e35cc9f049d69f951
Content-Type: text/plain; charset=ISO-8859-1

Hi,


I got the same error previously then I found one patch  (*
alsa-tools-1.0.18-alt1.patch*) in the net  which may resolve this error, and
I added it to the alsa-tools folder. But yet I am facing the same errors as
follows:


*error:*
kuberasamrat/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/share/i586-poky-linux_config_site.d/eglibc_config
/home/kuberasamrat/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/share/i586-poky-linux_config_site.d/zlib_config

ERROR: Task failed: ('function do_compile failed',
'/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/alsa-tools-1.0.20-r0/temp/log.do_compile.32753')
ERROR: Logfile of failure stored in:
/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/alsa-tools-1.0.20-r0/temp/log.do_compile.32753
Log data follows:
| NOTE: make
| ./ac3dec
| configure.in:18: *warning: macro `AM_PATH_ALSA' not found in library*
| configure.in:18: *error: possibly undefined macro: AM_PATH_ALSA*
| If this token and others are legitimate, please use m4_pattern_allow.
| See the Autoconf documentation.
| make: *** [all] Error 1
| FATAL: oe_runmake failed
| DEBUG:
mkdirhier(/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/alsa-tools-1.0.20-r0/alsa-tools-1.0.20)
| DEBUG:
mkdirhier(/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/alsa-tools-1.0.20-r0/alsa-tools-1.0.20)
| DEBUG:
mkdirhier(/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/alsa-tools-1.0.20-r0/temp)
| DEBUG: SITE files /home/kuberasamrat/poky-chrome/meta/site/endian-little
/home/kuberasamrat/poky-chrome/meta/site/common-glibc
/home/kuberasamrat/poky-chrome/meta/site/ix86-common
/home/kuberasamrat/poky-chrome/meta/site/common
/home/kuberasamrat/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/share/i586-poky-linux_config_site.d/eglibc_config
/home/kuberasamrat/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/share/i586-poky-linux_config_site.d/zlib_config
| ERROR: Task failed: ('function do_compile failed',
'/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/alsa-tools-1.0.20-r0/temp/log.do_compile.32753')
NOTE: package alsa-tools-1.0.20-r0: task do_compile: Failed
ERROR: Task 1080
(/home/kuberasamrat/poky-chrome/meta/recipes-multimedia/alsa/
alsa-tools_1.0.20.bb, do_compile) failed with 1
ERROR: '/home/kuberasamrat/poky-chrome/meta/recipes-multimedia/alsa/
alsa-tools_1.0.20.bb' failed


Any help would be greatly appreciated.
Please help me in finding the solution.


-- 
Thanks & Regards,
SAI

--000e0cd1482e35cc9f049d69f951
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><div style=3D"color: rgb(0, 0, 0);" class=3D"gmail_quote">Hi,<br><br><b=
r>I got the same error previously then I found one patch=A0 (<b>alsa-tools-=
1.0.18-alt1.patch</b>) in the net=A0 which may resolve this error, and I ad=
ded it to the alsa-tools folder. But yet I am facing the same errors as fol=
lows:<br>
<br><br>
<u><b>error:</b></u><br>kuberasamrat/poky-chrome/build/tmp/sysroots/core2-p=
oky-linux/usr/share/i586-poky-linux_config_site.d/eglibc_config /home/kuber=
asamrat/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/share/i586-poky=
-linux_config_site.d/zlib_config <br>

ERROR: Task failed: (&#39;function do_compile failed&#39;, &#39;/home/kuber=
asamrat/poky-chrome/build/tmp/work/core2-poky-linux/alsa-tools-1.0.20-r0/te=
mp/log.do_compile.32753&#39;)<br>ERROR: Logfile of failure stored in: /home=
/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/alsa-tools-1.0.20=
-r0/temp/log.do_compile.32753<br>

Log data follows:<br>| NOTE: make<br>| ./ac3dec<br>| <a href=3D"http://conf=
igure.in:18" target=3D"_blank">configure.in:18</a>: <b>warning: macro `AM_P=
ATH_ALSA&#39; not found in library</b><br>| <a href=3D"http://configure.in:=
18" target=3D"_blank">configure.in:18</a>: <b>error: possibly undefined mac=
ro: AM_PATH_ALSA</b><br>

|       If this token and others are legitimate, please use m4_pattern_allo=
w.<br>|       See the Autoconf documentation.<br>| make: <b>*</b> [all] Err=
or 1<br>| FATAL: oe_runmake failed<br>| DEBUG: mkdirhier(/home/kuberasamrat=
/poky-chrome/build/tmp/work/core2-poky-linux/alsa-tools-1.0.20-r0/alsa-tool=
s-1.0.20)<br>

| DEBUG: mkdirhier(/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky=
-linux/alsa-tools-1.0.20-r0/alsa-tools-1.0.20)<br>| DEBUG: mkdirhier(/home/=
kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/alsa-tools-1.0.20-=
r0/temp)<br>

| DEBUG: SITE files /home/kuberasamrat/poky-chrome/meta/site/endian-little =
/home/kuberasamrat/poky-chrome/meta/site/common-glibc /home/kuberasamrat/po=
ky-chrome/meta/site/ix86-common /home/kuberasamrat/poky-chrome/meta/site/co=
mmon /home/kuberasamrat/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr=
/share/i586-poky-linux_config_site.d/eglibc_config /home/kuberasamrat/poky-=
chrome/build/tmp/sysroots/core2-poky-linux/usr/share/i586-poky-linux_config=
_site.d/zlib_config<br>

| ERROR: Task failed: (&#39;function do_compile failed&#39;, &#39;/home/kub=
erasamrat/poky-chrome/build/tmp/work/core2-poky-linux/alsa-tools-1.0.20-r0/=
temp/log.do_compile.32753&#39;)<br>NOTE: package alsa-tools-1.0.20-r0: task=
 do_compile: Failed<br>

ERROR: Task 1080 (/home/kuberasamrat/poky-chrome/meta/recipes-multimedia/al=
sa/<a href=3D"http://alsa-tools_1.0.20.bb" target=3D"_blank">alsa-tools_1.0=
.20.bb</a>, do_compile) failed with 1<br>ERROR: &#39;/home/kuberasamrat/pok=
y-chrome/meta/recipes-multimedia/alsa/<a href=3D"http://alsa-tools_1.0.20.b=
b" target=3D"_blank">alsa-tools_1.0.20.bb</a>&#39; failed<br>

<br><br>Any help would be greatly appreciated.<br>Please help me in finding=
 the solution.<br clear=3D"all"><br><br>-- <br>Thanks &amp; Regards,<br>SAI=
<br><br><br>
</div><br>

--000e0cd1482e35cc9f049d69f951--
