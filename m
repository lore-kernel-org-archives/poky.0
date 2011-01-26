Return-Path: <aalonso00@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 85DA34C80B6E
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 11:50:32 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bwz8 with SMTP id 8so1689888bwz.35
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 09:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=7LIgEXVPC8sJM3Z5m3iGvhdthgbh3AR1Dp3oo/HpAt8=;
	b=PGVuh4Maj6Th3/uXibxOQyrdnjlFkOL62UFXDT47tBMfEPWKsF9emspBaDUOo1pFRs
	uHMfHXLET+F2i0k3kPxdnjni8pBab86BsSEA2bSxjgel4YVgLMASi0zkYHKYHKhb7RDb
	BcsULfFUyZvG6jXOGvqt67m1jlhKXMrXufBBU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	b=IMuH8qmtJuKwGZ+Cuqlde/eZESQBb460/82cKZg9we87n0LkBNYSGMRy0lYwbBcvrM
	JYiV2qIR3lBMY4tZa+5HAUzxfwPlWNt1EbT02qhEyCnFgfJEoS/2qfqCP1k34vYzMe/E
	icS6BqqFr3HQs3fqD2eLyvf8x+zGZaosW48hY=
MIME-Version: 1.0
Received: by 10.103.241.16 with SMTP id t16mr3739165mur.23.1296063677956; Wed,
	26 Jan 2011 09:41:17 -0800 (PST)
Sender: aalonso00@gmail.com
Received: by 10.103.163.8 with HTTP; Wed, 26 Jan 2011 09:41:17 -0800 (PST)
In-Reply-To: <4D3F42AB.9000002@linux.intel.com>
References: <1295989756-7967-1-git-send-email-aalonso@secretlab.ca>
	<4D3F42AB.9000002@linux.intel.com>
Date: Wed, 26 Jan 2011 11:41:17 -0600
X-Google-Sender-Auth: HRgkK8NjqVgb_T339q3qZiMTgvI
Message-ID: <AANLkTin0Ejp=g3Le1xaCL5OTk8sHRJU3L+fDPCmBqeUA@mail.gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Josh Lock <joshua.lock@intel.com>, poky@yoctoproject.org
Subject: Re: [PATCH 05/25][v2] u-boot: disable -Os option not supported by gcc
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
X-List-Received-Date: Wed, 26 Jan 2011 17:50:36 -0000
Content-Type: multipart/alternative; boundary=001636b43120221d22049ac3571b

--001636b43120221d22049ac3571b
Content-Type: text/plain; charset=ISO-8859-1

Got me,

Yep the OPTFLAGS was not been set in u-boot.
I end up overriding EXTRA_OEMAKE to set OPTFLAGS=-O2
Powerpc targets only builds with this option and is related to gcc bugs
described in previous treads.

In queue should patch v3

Regards

On Tue, Jan 25, 2011 at 3:37 PM, Darren Hart <dvhart@linux.intel.com> wrote:

> On 01/25/2011 01:09 PM, Adrian Alonso wrote:
>
>> * Disable -Os optspace option not supported by gcc
>> * v2 use OPTFLAGS variable, remove meke file patch
>> * Bump PR
>>
>> Signed-off-by: Adrian Alonso<aalonso@secretlab.ca>
>> ---
>>  recipes-bsp/uboot/u-boot-xilinx_git.bb |    6 ++++--
>>  1 files changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/recipes-bsp/uboot/u-boot-xilinx_git.bb b/recipes-bsp/uboot/
>> u-boot-xilinx_git.bb
>> index 50d99e3..499ce0b 100644
>> --- a/recipes-bsp/uboot/u-boot-xilinx_git.bb
>> +++ b/recipes-bsp/uboot/u-boot-xilinx_git.bb
>> @@ -1,9 +1,11 @@
>>  require ../meta/recipes-bsp/uboot/u-boot.inc
>> -PR = "r2"
>> +PR = "r3"
>>
>> +OPTFLAGS=""
>>
>
> Have you tested this build? Looking at the Makefile, it doesn't do a
> conditional assignment, so I would expect OPTFLAGS set here to be ignored.
> This is why I added it to EXTRA_OEMAKE, which overrides anything in the
> Makefil, regardless of how it is assigned. At least, that was my
> understanding of the mechanism.
>
> EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS=''"
>
>
> Josh, I think you may had something to do with my education in this area -
> can you comment? Am I all wet here?
>
> --
> Darren
>
>
>   BRANCH="master"
>>  TAG="e094f2479ea339d7f48b6826f06f0be4984d9a98"
>> -SRC_URI = "git://
>> git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git<http://git.xilinx.com/u-boot-xlnx.git;branch=$%7BBRANCH%7D;protocol=git>
>> "
>> +SRC_URI = "git://
>> git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git<http://git.xilinx.com/u-boot-xlnx.git;branch=$%7BBRANCH%7D;protocol=git>\
>> +          "
>>  SRCREV = "${TAG}"
>>
>>  inherit xilinx-boot
>>
>
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--001636b43120221d22049ac3571b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Got me,<div><br></div><div>Yep the OPTFLAGS was not been set in u-boot.</di=
v><div>I end up overriding=A0<meta http-equiv=3D"content-type" content=3D"t=
ext/html; charset=3Dutf-8">EXTRA_OEMAKE to set OPTFLAGS=3D-O2</div><div>Pow=
erpc targets only builds with this option and is related to gcc bugs</div>
<div>described in previous treads.</div><div><br></div><div>In queue should=
 patch v3</div><div><br></div><div>Regards<br><br><div class=3D"gmail_quote=
">On Tue, Jan 25, 2011 at 3:37 PM, Darren Hart <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:dvhart@linux.intel.com">dvhart@linux.intel.com</a>&gt;</span> w=
rote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div class=3D"im">On 01/25/2011 01:09 PM, A=
drian Alonso wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
* Disable -Os optspace option not supported by gcc<br>
* v2 use OPTFLAGS variable, remove meke file patch<br>
* Bump PR<br>
<br>
Signed-off-by: Adrian Alonso&lt;<a href=3D"mailto:aalonso@secretlab.ca" tar=
get=3D"_blank">aalonso@secretlab.ca</a>&gt;<br>
---<br>
 =A0recipes-bsp/uboot/<a href=3D"http://u-boot-xilinx_git.bb" target=3D"_bl=
ank">u-boot-xilinx_git.bb</a> | =A0 =A06 ++++--<br>
 =A01 files changed, 4 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/recipes-bsp/uboot/<a href=3D"http://u-boot-xilinx_git.bb" targ=
et=3D"_blank">u-boot-xilinx_git.bb</a> b/recipes-bsp/uboot/<a href=3D"http:=
//u-boot-xilinx_git.bb" target=3D"_blank">u-boot-xilinx_git.bb</a><br>
index 50d99e3..499ce0b 100644<br>
--- a/recipes-bsp/uboot/<a href=3D"http://u-boot-xilinx_git.bb" target=3D"_=
blank">u-boot-xilinx_git.bb</a><br>
+++ b/recipes-bsp/uboot/<a href=3D"http://u-boot-xilinx_git.bb" target=3D"_=
blank">u-boot-xilinx_git.bb</a><br>
@@ -1,9 +1,11 @@<br>
 =A0require ../meta/recipes-bsp/uboot/u-boot.inc<br>
-PR =3D &quot;r2&quot;<br>
+PR =3D &quot;r3&quot;<br>
<br>
+OPTFLAGS=3D&quot;&quot;<br>
</blockquote>
<br></div>
Have you tested this build? Looking at the Makefile, it doesn&#39;t do a co=
nditional assignment, so I would expect OPTFLAGS set here to be ignored. Th=
is is why I added it to EXTRA_OEMAKE, which overrides anything in the Makef=
il, regardless of how it is assigned. At least, that was my understanding o=
f the mechanism.<br>

<br>
EXTRA_OEMAKE =3D &quot;CROSS_COMPILE=3D${TARGET_PREFIX} OPTFLAGS=3D&#39;&#3=
9;&quot;<br>
<br>
<br>
Josh, I think you may had something to do with my education in this area - =
can you comment? Am I all wet here?<br>
<br>
--<br>
Darren<div><div></div><div class=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =A0BRANCH=3D&quot;master&quot;<br>
 =A0TAG=3D&quot;e094f2479ea339d7f48b6826f06f0be4984d9a98&quot;<br>
-SRC_URI =3D &quot;git://<a href=3D"http://git.xilinx.com/u-boot-xlnx.git;b=
ranch=3D$%7BBRANCH%7D;protocol=3Dgit" target=3D"_blank">git.xilinx.com/u-bo=
ot-xlnx.git;branch=3D${BRANCH};protocol=3Dgit</a>&quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://git.xilinx.com/u-boot-xlnx.git;b=
ranch=3D$%7BBRANCH%7D;protocol=3Dgit" target=3D"_blank">git.xilinx.com/u-bo=
ot-xlnx.git;branch=3D${BRANCH};protocol=3Dgit</a> \<br>
+ =A0 =A0 =A0 =A0 =A0&quot;<br>
 =A0SRCREV =3D &quot;${TAG}&quot;<br>
<br>
 =A0inherit xilinx-boot<br>
</blockquote>
<br>
<br>
-- <br></div></div><font color=3D"#888888">
Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Linux Kernel<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</font></blockquote></div><br></div>

--001636b43120221d22049ac3571b--
