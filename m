Return-Path: <aalonso00@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A5FF4C803A5
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 23:02:52 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bwz9 with SMTP id 9so7582652bwz.35
	for <poky@yoctoproject.org>; Wed, 01 Dec 2010 21:02:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=vv0kAFubtcAU88S4YQox5iQrEr28CaVnsu3YVMQvwNo=;
	b=XRncCF7z5XyivBwbunZFSIVeOatikInxhBrpQHd8gkrup6SOSqHX+NTYjiHadzjBJr
	pik0/FaGvBkyXdgDFkZkqMAQWrbrhM4pu64wcImMPNK+gXzYa9AKWVHLR+VMY0cy9qnP
	jTZbp76kekEf0xQJo1ZhHjuEZkrKsT/m+TIbg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=cD3QGaCC+KJUGQqV4BWDl3hNUkczJV8+5BzeZlmq2mLkkWoSNuyaYPHIyqHSa/wBh8
	kOAXz3qoKnzI8JzlPn+DlcIqayncvGOSKEuhUxUi7f9b2ZJyW5QbdHKyjs4/UzbwnQNl
	X1Ltt+kRW5hnEUb9L1p8XwjvISWzuyqo4UYmk=
MIME-Version: 1.0
Received: by 10.204.62.202 with SMTP id y10mr51759bkh.120.1291266167943; Wed,
	01 Dec 2010 21:02:47 -0800 (PST)
Received: by 10.204.3.210 with HTTP; Wed, 1 Dec 2010 21:02:47 -0800 (PST)
In-Reply-To: <4CF726CC.7020505@intel.com>
References: <1291257381-21280-1-git-send-email-aalonso@secretlab.ca>
	<1291257381-21280-2-git-send-email-aalonso@secretlab.ca>
	<4CF726CC.7020505@intel.com>
Date: Wed, 1 Dec 2010 23:02:47 -0600
Message-ID: <AANLkTimnWdnV9nvrPqyNCDv6ZpDq+KLm8RBiV4K6MaJq@mail.gmail.com>
From: Adrian Alonso <aalonso00@gmail.com>
To: Saul Wold <saul.wold@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2] xrandr: fix license checksum
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
X-List-Received-Date: Thu, 02 Dec 2010 05:02:52 -0000
Content-Type: multipart/alternative; boundary=001636c5b5f14031ba0496665511

--001636c5b5f14031ba0496665511
Content-Type: text/plain; charset=ISO-8859-1

Ok,

Do yocto has a work queue page? like patchwork web interface
I saw some treads about LICENSE CHECKSUM errors
but only both propossed patchs prevent me to build poky-sato for
a demo that at presenting tomorrow at my school.

Regards

On Wed, Dec 1, 2010 at 10:55 PM, Saul Wold <saul.wold@intel.com> wrote:

> On 12/01/2010 06:36 PM, Adrian Alonso wrote:
>
>> * Fix FATAL: Licensing warning: LIC_FILES_CHKSUM does not match
>> * Bump PR
>>
>>  Adrian,
>
> Thanks for these patches, we already have this change queue as part of a
> consolidated request.  We hope to have it in master tomorrow sometime.
>
> Sau!
>
>
>  Signed-off-by: Adrian Alonso<aalonso@secretlab.ca>
>> ---
>>  meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb |    4 ++--
>>  1 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/meta/recipes-graphics/xorg-app/xrandr_1.3.4.bbb/meta/recipes-graphics/xorg-app/
>> xrandr_1.3.4.bb
>> index 8712ff6..7d2a678 100644
>> --- a/meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb
>> +++ b/meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb
>> @@ -2,10 +2,10 @@ require xorg-app-common.inc
>>
>>  DESCRIPTION = "X Resize and Rotate extension command."
>>  LICENSE= "BSD-X"
>> -LIC_FILES_CHKSUM = "file://COPYING;md5=4c5c132d3690478179d78ec3bf064584"
>> +LIC_FILES_CHKSUM = "file://COPYING;md5=fe1608bdb33cf8c62a4438f7d34679b3"
>>  DEPENDS += "libxrandr libxrender"
>>  PE = "1"
>> -PR = "r0"
>> +PR = "r1"
>>
>>  SRC_URI[md5sum] = "d6d20038257eba5178b523e10239d51c"
>>  SRC_URI[sha256sum] =
>> "5e4a2492e6cc51345aa571b95283c43c2771c4f444837dbce2699d62f76b4adb"
>>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
Saludos
Adrian Alonso
http://aalonso.wordpress.com

--001636c5b5f14031ba0496665511
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Ok,<div><br></div><div>Do yocto has a work queue page? like patchwork web i=
nterface</div><div>I saw some treads about LICENSE CHECKSUM errors</div><di=
v>but only both propossed patchs prevent me to build poky-sato for</div>
<div>a demo that at presenting tomorrow at my school.</div><div><br></div><=
div>Regards</div><div><br><div class=3D"gmail_quote">On Wed, Dec 1, 2010 at=
 10:55 PM, Saul Wold <span dir=3D"ltr">&lt;<a href=3D"mailto:saul.wold@inte=
l.com">saul.wold@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div class=3D"im">On 12/01/2010 06:36 PM, A=
drian Alonso wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
* Fix FATAL: Licensing warning: LIC_FILES_CHKSUM does not match<br>
* Bump PR<br>
<br>
</blockquote></div>
Adrian,<br>
<br>
Thanks for these patches, we already have this change queue as part of a co=
nsolidated request. =A0We hope to have it in master tomorrow sometime.<br>
<br>
Sau!<div><div></div><div class=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Signed-off-by: Adrian Alonso&lt;<a href=3D"mailto:aalonso@secretlab.ca" tar=
get=3D"_blank">aalonso@secretlab.ca</a>&gt;<br>
---<br>
 =A0meta/recipes-graphics/xorg-app/<a href=3D"http://xrandr_1.3.4.bb" targe=
t=3D"_blank">xrandr_1.3.4.bb</a> | =A0 =A04 ++--<br>
 =A01 files changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/meta/recipes-graphics/xorg-app/<a href=3D"http://xrandr_1.3.4.=
bb" target=3D"_blank">xrandr_1.3.4.bb</a> b/meta/recipes-graphics/xorg-app/=
<a href=3D"http://xrandr_1.3.4.bb" target=3D"_blank">xrandr_1.3.4.bb</a><br=
>
index 8712ff6..7d2a678 100644<br>
--- a/meta/recipes-graphics/xorg-app/<a href=3D"http://xrandr_1.3.4.bb" tar=
get=3D"_blank">xrandr_1.3.4.bb</a><br>
+++ b/meta/recipes-graphics/xorg-app/<a href=3D"http://xrandr_1.3.4.bb" tar=
get=3D"_blank">xrandr_1.3.4.bb</a><br>
@@ -2,10 +2,10 @@ require xorg-app-common.inc<br>
<br>
 =A0DESCRIPTION =3D &quot;X Resize and Rotate extension command.&quot;<br>
 =A0LICENSE=3D &quot;BSD-X&quot;<br>
-LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D4c5c132d3690478179d78ec3bf=
064584&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dfe1608bdb33cf8c62a4438f7d3=
4679b3&quot;<br>
 =A0DEPENDS +=3D &quot;libxrandr libxrender&quot;<br>
 =A0PE =3D &quot;1&quot;<br>
-PR =3D &quot;r0&quot;<br>
+PR =3D &quot;r1&quot;<br>
<br>
 =A0SRC_URI[md5sum] =3D &quot;d6d20038257eba5178b523e10239d51c&quot;<br>
 =A0SRC_URI[sha256sum] =3D &quot;5e4a2492e6cc51345aa571b95283c43c2771c4f444=
837dbce2699d62f76b4adb&quot;<br>
</blockquote>
<br></div></div>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div><br><br clear=3D"all"><br>-- <br>Saludos<br>Adrian Alons=
o<br><a href=3D"http://aalonso.wordpress.com">http://aalonso.wordpress.com<=
/a><br><br>
</div>

--001636c5b5f14031ba0496665511--
