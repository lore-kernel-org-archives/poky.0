Return-Path: <aalonso00@gmail.com>
Received: from mail-ey0-f171.google.com (mail-ey0-f171.google.com
	[209.85.215.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id B5A2F4C80053
	for <poky@pokylinux.org>; Wed,  9 Feb 2011 12:05:13 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eyg5 with SMTP id 5so320452eyg.2
	for <poky@pokylinux.org>; Wed, 09 Feb 2011 10:05:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=R3ffnIIKNpZaK5cA/7+1PC5MljhLnf1OXyWZt6TdUs0=;
	b=xgN85VNa0ReQf3DfeYAJUZEXutFUQ7agyK3S+gb6PyQY2ogZofehx5PuKCtyfXPnRS
	iSj5gYhs+I3KNtv+qhX0VjA3J/Z8NE6I/d5xCNpKBTpI5UF669+WEWqyc/3anOMGCzjD
	gMUJn6SXvpSKiO94e9dWyAkkCXx+ybqbYOyEw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	b=l3E6jzMgXJlhe6qaEUxwdIARHq07k1Zxq/gayvw9M1/Zgv3XYUYmZYji7//6/9PayW
	a5q54SBBgnZoDB+3ZsOY/rz8+GqLKYN4tJnp3s8EjcGbSIx+TlCdQjoBy90tyMAn39c4
	FqGAmRt8YqVe9EIuzYIWkmYHK6q4eVL20uwl4=
MIME-Version: 1.0
Received: by 10.103.241.16 with SMTP id t16mr14472153mur.23.1297274711715;
	Wed, 09 Feb 2011 10:05:11 -0800 (PST)
Sender: aalonso00@gmail.com
Received: by 10.103.187.10 with HTTP; Wed, 9 Feb 2011 10:05:11 -0800 (PST)
In-Reply-To: <4D52D210.6070905@linux.intel.com>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
	<1297196798-23779-3-git-send-email-yanok@emcraft.com>
	<4D52D210.6070905@linux.intel.com>
Date: Wed, 9 Feb 2011 12:05:11 -0600
X-Google-Sender-Auth: X4y6Ie8Gi45u8FycvOSU13r6bvw
Message-ID: <AANLkTik6R6EwY2_565cn8uTxeCe910MbUg3eJdsOtTJ1@mail.gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@pokylinux.org, Ilya Yanok <yanok@emcraft.com>
Subject: Re: [PATCH 3/3] u-boot: compile with -O2 on PowerPC
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
X-List-Received-Date: Wed, 09 Feb 2011 18:05:14 -0000
Content-Type: multipart/alternative; boundary=001636b431205e2fc4049bdd4e01

--001636b431205e2fc4049bdd4e01
Content-Type: text/plain; charset=ISO-8859-1

I observe that with current gcc for powerpc uboot only builds with
OPTFLAGS=-O2, unsetting or using other OPT level the build fails
with undefined symbols.

I override the OPTFLAGS in the dedicated recipe for uboot under meta-xilinx
BSP
but for powerpc targets in main meta layer Ilya approach does the work.

On Wed, Feb 9, 2011 at 11:42 AM, Darren Hart <dvhart@linux.intel.com> wrote:

> On 02/08/2011 12:26 PM, Ilya Yanok wrote:
>
>> gcc on PowerPC is currently compiled with -Os optimization disabled so
>> we have to use -O2 on PowerPC instead.
>>
>> Signed-off-by: Ilya Yanok<yanok@emcraft.com>
>> ---
>>  meta/recipes-bsp/uboot/u-boot.inc |    7 ++++++-
>>  1 files changed, 6 insertions(+), 1 deletions(-)
>>
>> diff --git a/meta/recipes-bsp/uboot/u-boot.inc
>> b/meta/recipes-bsp/uboot/u-boot.inc
>> index 6492016..7694c77 100644
>> --- a/meta/recipes-bsp/uboot/u-boot.inc
>> +++ b/meta/recipes-bsp/uboot/u-boot.inc
>> @@ -22,7 +22,12 @@ do_compile () {
>>        unset CFLAGS
>>        unset CPPFLAGS
>>        oe_runmake ${UBOOT_MACHINE}
>> -       oe_runmake all
>> +       # -Os is disabled on PowerPC
>> +       if [ ${TARGET_ARCH} == "powerpc" ] ; then
>> +               oe_runmake OPTFLAGS=-O2 all
>> +       else
>> +               oe_runmake all
>> +       fi
>>
>
>
> This is already disabled in u-boot.inc with the following line:
>
> # GCC 4.5.1 builds unusable binaries using -Os, remove it from OPTFLAGS
> EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS=''"
>
> Resetting OPTFLAGS to '' removes the -Os from the variable in the Makefile.
> This isn't just a PowerPC problem, it also manifested on ARM, I believe it
> is a GCC 4.5.1 issue.
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--001636b431205e2fc4049bdd4e01
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I observe that with current gcc for powerpc uboot only builds with<div><met=
a http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8">OPTFLA=
GS=3D-O2, unsetting or using other OPT level the build fails</div><div>with=
 undefined symbols.</div>
<div><br></div><div>I override the OPTFLAGS in the dedicated recipe for ubo=
ot under meta-xilinx BSP</div><div>but for powerpc=A0targets in main meta l=
ayer Ilya approach does the work.</div><div><br><div class=3D"gmail_quote">
On Wed, Feb 9, 2011 at 11:42 AM, Darren Hart <span dir=3D"ltr">&lt;<a href=
=3D"mailto:dvhart@linux.intel.com">dvhart@linux.intel.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex;">
<div class=3D"im">On 02/08/2011 12:26 PM, Ilya Yanok wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
gcc on PowerPC is currently compiled with -Os optimization disabled so<br>
we have to use -O2 on PowerPC instead.<br>
<br>
Signed-off-by: Ilya Yanok&lt;<a href=3D"mailto:yanok@emcraft.com" target=3D=
"_blank">yanok@emcraft.com</a>&gt;<br>
---<br>
 =A0meta/recipes-bsp/uboot/u-boot.inc | =A0 =A07 ++++++-<br>
 =A01 files changed, 6 insertions(+), 1 deletions(-)<br>
<br>
diff --git a/meta/recipes-bsp/uboot/u-boot.inc b/meta/recipes-bsp/uboot/u-b=
oot.inc<br>
index 6492016..7694c77 100644<br>
--- a/meta/recipes-bsp/uboot/u-boot.inc<br>
+++ b/meta/recipes-bsp/uboot/u-boot.inc<br>
@@ -22,7 +22,12 @@ do_compile () {<br>
 =A0 =A0 =A0 =A0unset CFLAGS<br>
 =A0 =A0 =A0 =A0unset CPPFLAGS<br>
 =A0 =A0 =A0 =A0oe_runmake ${UBOOT_MACHINE}<br>
- =A0 =A0 =A0 oe_runmake all<br>
+ =A0 =A0 =A0 # -Os is disabled on PowerPC<br>
+ =A0 =A0 =A0 if [ ${TARGET_ARCH} =3D=3D &quot;powerpc&quot; ] ; then<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 oe_runmake OPTFLAGS=3D-O2 all<br>
+ =A0 =A0 =A0 else<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 oe_runmake all<br>
+ =A0 =A0 =A0 fi<br>
</blockquote>
<br>
<br></div>
This is already disabled in u-boot.inc with the following line:<br>
<br>
# GCC 4.5.1 builds unusable binaries using -Os, remove it from OPTFLAGS<br>
EXTRA_OEMAKE =3D &quot;CROSS_COMPILE=3D${TARGET_PREFIX} OPTFLAGS=3D&#39;&#3=
9;&quot;<br>
<br>
Resetting OPTFLAGS to &#39;&#39; removes the -Os from the variable in the M=
akefile. This isn&#39;t just a PowerPC problem, it also manifested on ARM, =
I believe it is a GCC 4.5.1 issue.<br><font color=3D"#888888">
<br>
-- <br>
Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Linux Kernel</font><div><div></div><div class=3D"h5"><br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</div></div></blockquote></div><br></div>

--001636b431205e2fc4049bdd4e01--
