Return-Path: <aalonso00@gmail.com>
Received: from mail-ew0-f48.google.com (mail-ew0-f48.google.com
	[209.85.215.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 160A64C80B6E
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 12:56:00 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ewy20 with SMTP id 20so384458ewy.35
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 10:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=NLOIn4Oa7wvGCO70CI7mgiJskH+1lFLEFBEa6nCnAcs=;
	b=LYKepk3Z3MaGX5WXAlQC/57ycKSsdQ02uJZzyF8/g3Fbd4GX6ZYfj70kYKuFPYaidb
	Lgt46a4cBgY806SZs+Mp2ETAeYI4njb5FcFd3uPk38kH9dFUvabx/m3saJoN5BNcH/y5
	KHdZPD3G+Tg8lJY9bus2SAP/s+w3B4qGK+d/Y=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	b=bFpYcWOuqiQSCPM47qiTgf/iDbnlbbk1rOWhn2hPrm9wGOfo98NDFJYHo07WSHti8Y
	a6gaXj6vRZGnPbtcvi7SxjV6Mqdbo9UjMcAqEWi4qqphwZlPFbHBJf8+DvTr/EIYVbV3
	QFUSaNnbnKjyH2Lb2LvCW323FcheIB5a9U+wM=
MIME-Version: 1.0
Received: by 10.103.241.16 with SMTP id t16mr3879864mur.23.1296068159789; Wed,
	26 Jan 2011 10:55:59 -0800 (PST)
Sender: aalonso00@gmail.com
Received: by 10.103.163.8 with HTTP; Wed, 26 Jan 2011 10:55:59 -0800 (PST)
In-Reply-To: <4D4067CF.3010505@linux.intel.com>
References: <1296063743-4676-1-git-send-email-aalonso@secretlab.ca>
	<4D406152.3010009@linux.intel.com>
	<4D4067CF.3010505@linux.intel.com>
Date: Wed, 26 Jan 2011 12:55:59 -0600
X-Google-Sender-Auth: OhgB7-xOMiHnQv6XBVc4k-l0TQ4
Message-ID: <AANLkTimDkigWN8YWY5Smkg8hio90CFchy3jum8QNtdoU@mail.gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: Saul Wold <sgw@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 05/25][v3] u-boot: disable -Os option not supported by gcc
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
X-List-Received-Date: Wed, 26 Jan 2011 18:56:01 -0000
Content-Type: multipart/alternative; boundary=001636b4312044e032049ac462d0

--001636b4312044e032049ac462d0
Content-Type: text/plain; charset=ISO-8859-1

Yep that's correct all 25 patch's belong to xilinx bsp meta layer;
I could define in the meta layer a revision inc file for all the recipes
that set a SRCREV version.

Regards

On Wed, Jan 26, 2011 at 12:28 PM, Saul Wold <sgw@linux.intel.com> wrote:

> On 01/26/2011 10:00 AM, Darren Hart wrote:
>
>> On 01/26/2011 09:42 AM, Adrian Alonso wrote:
>>
>>> * Disable -Os optspace option not supported by gcc use insted -O2
>>> * v2 Remove Make file patch
>>> * v3 use EXTRA_OEMAKE variable, override default OPTFLAGS settings
>>> in u-boot.inc, Powerpc targets build only with -O1, -O2 optflags
>>> Build failures are related to gcc bugs #44392 and #45052
>>> * Bump PR
>>>
>>> Signed-off-by: Adrian Alonso<aalonso@secretlab.ca>
>>>
>>
>> Looks good for the -Os problem.
>>
>> Reviewed-by: Darren Hart<dvhart@linux.intel.com>
>>
>> I noticed that the SRCREV is defined in this file.
>> Typically this should be in
>> meta/conf/distro/include/poky-default-revisions.inc
>>
>>  If I remember this correctly, these are in a layer, so the
> default-revision.inc does not get updated.
>
> Sau!
>
>
>  --
>> Darren
>>
>>
>>  ---
>>> recipes-bsp/uboot/u-boot-xilinx_git.bb | 6 ++++--
>>> 1 files changed, 4 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/recipes-bsp/uboot/u-boot-xilinx_git.bb
>>> b/recipes-bsp/uboot/u-boot-xilinx_git.bb
>>> index 50d99e3..a373428 100644
>>> --- a/recipes-bsp/uboot/u-boot-xilinx_git.bb
>>> +++ b/recipes-bsp/uboot/u-boot-xilinx_git.bb
>>> @@ -1,9 +1,11 @@
>>> require ../meta/recipes-bsp/uboot/u-boot.inc
>>> -PR = "r2"
>>> +PR = "r3"
>>>
>>> +EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS='-O2'"
>>> BRANCH="master"
>>> TAG="e094f2479ea339d7f48b6826f06f0be4984d9a98"
>>> -SRC_URI =
>>> "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git<http://git.xilinx.com/u-boot-xlnx.git;branch=$%7BBRANCH%7D;protocol=git>
>>> "
>>> +SRC_URI =
>>> "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git<http://git.xilinx.com/u-boot-xlnx.git;branch=$%7BBRANCH%7D;protocol=git>\
>>> + "
>>> SRCREV = "${TAG}"
>>>
>>> inherit xilinx-boot
>>>
>>
>>
>>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--001636b4312044e032049ac462d0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Yep that&#39;s correct all 25 patch&#39;s=A0belong=A0to xilinx bsp meta lay=
er;<div>I could define in the meta layer a revision inc file for all the re=
cipes</div><div>that set a SRCREV version.</div><div><br></div><div>Regards=
<br>
<br><div class=3D"gmail_quote">On Wed, Jan 26, 2011 at 12:28 PM, Saul Wold =
<span dir=3D"ltr">&lt;<a href=3D"mailto:sgw@linux.intel.com">sgw@linux.inte=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">
<div class=3D"im">On 01/26/2011 10:00 AM, Darren Hart wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 01/26/2011 09:42 AM, Adrian Alonso wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
* Disable -Os optspace option not supported by gcc use insted -O2<br>
* v2 Remove Make file patch<br>
* v3 use EXTRA_OEMAKE variable, override default OPTFLAGS settings<br>
in u-boot.inc, Powerpc targets build only with -O1, -O2 optflags<br>
Build failures are related to gcc bugs #44392 and #45052<br>
* Bump PR<br>
<br>
Signed-off-by: Adrian Alonso&lt;<a href=3D"mailto:aalonso@secretlab.ca" tar=
get=3D"_blank">aalonso@secretlab.ca</a>&gt;<br>
</blockquote>
<br>
Looks good for the -Os problem.<br>
<br>
Reviewed-by: Darren Hart&lt;<a href=3D"mailto:dvhart@linux.intel.com" targe=
t=3D"_blank">dvhart@linux.intel.com</a>&gt;<br>
<br>
I noticed that the SRCREV is defined in this file.<br>
Typically this should be in<br>
meta/conf/distro/include/poky-default-revisions.inc<br>
<br>
</blockquote></div>
If I remember this correctly, these are in a layer, so the default-revision=
.inc does not get updated.<br>
<br>
Sau!<div class=3D"im"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
--<br>
Darren<br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
---<br>
recipes-bsp/uboot/<a href=3D"http://u-boot-xilinx_git.bb" target=3D"_blank"=
>u-boot-xilinx_git.bb</a> | 6 ++++--<br>
1 files changed, 4 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/recipes-bsp/uboot/<a href=3D"http://u-boot-xilinx_git.bb" targ=
et=3D"_blank">u-boot-xilinx_git.bb</a><br>
b/recipes-bsp/uboot/<a href=3D"http://u-boot-xilinx_git.bb" target=3D"_blan=
k">u-boot-xilinx_git.bb</a><br>
index 50d99e3..a373428 100644<br>
--- a/recipes-bsp/uboot/<a href=3D"http://u-boot-xilinx_git.bb" target=3D"_=
blank">u-boot-xilinx_git.bb</a><br>
+++ b/recipes-bsp/uboot/<a href=3D"http://u-boot-xilinx_git.bb" target=3D"_=
blank">u-boot-xilinx_git.bb</a><br>
@@ -1,9 +1,11 @@<br>
require ../meta/recipes-bsp/uboot/u-boot.inc<br>
-PR =3D &quot;r2&quot;<br>
+PR =3D &quot;r3&quot;<br>
<br>
+EXTRA_OEMAKE =3D &quot;CROSS_COMPILE=3D${TARGET_PREFIX} OPTFLAGS=3D&#39;-O=
2&#39;&quot;<br>
BRANCH=3D&quot;master&quot;<br>
TAG=3D&quot;e094f2479ea339d7f48b6826f06f0be4984d9a98&quot;<br>
-SRC_URI =3D<br>
&quot;git://<a href=3D"http://git.xilinx.com/u-boot-xlnx.git;branch=3D$%7BB=
RANCH%7D;protocol=3Dgit" target=3D"_blank">git.xilinx.com/u-boot-xlnx.git;b=
ranch=3D${BRANCH};protocol=3Dgit</a>&quot;<br>
+SRC_URI =3D<br>
&quot;git://<a href=3D"http://git.xilinx.com/u-boot-xlnx.git;branch=3D$%7BB=
RANCH%7D;protocol=3Dgit" target=3D"_blank">git.xilinx.com/u-boot-xlnx.git;b=
ranch=3D${BRANCH};protocol=3Dgit</a> \<br>
+ &quot;<br>
SRCREV =3D &quot;${TAG}&quot;<br>
<br>
inherit xilinx-boot<br>
</blockquote>
<br>
<br>
</blockquote>
<br></div><div><div></div><div class=3D"h5">
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</div></div></blockquote></div><br></div>

--001636b4312044e032049ac462d0--
