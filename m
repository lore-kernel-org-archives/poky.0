Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08C3FE00E94; Wed, 24 Jan 2018 05:40:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D72EE00E88
	for <poky@yoctoproject.org>; Wed, 24 Jan 2018 05:40:51 -0800 (PST)
Received: by mail-it0-f41.google.com with SMTP id m11so18398175iti.1
	for <poky@yoctoproject.org>; Wed, 24 Jan 2018 05:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yVgnxyW/SvevemOUdqXUf8Xtrm/IZkCC8TWRHF/uA/w=;
	b=MtIDa/2+BLMKZsOYk8utRh5TcyL/3jGhzxgTQyfYJrSbISmam78PBf9H43PuuG9j7l
	hBJ2PMPEjxG7q2CXqHSWb87yonQq48mxNWGk4FxyUGhjOuSGM/eb11IPEPSrMV0QhAqx
	QErWBRHBDVK/UA61qjntL6e/XPDGLmCLimFQUDKTEV1oUyHh5GmnbM/sD1+r8aKWnVL2
	z/OMbt9JhVR4n8KP4R2oEeC9w+U53VhISKcSaYrYZHXcSub+qNPQzOtGb7nVojtcSKkA
	g7LQ9nCZPVrNz02wNW7hZ83RdDHNsZWRrSFAU3WjrBePKAUGlCl0RXF9mJIT0lNya5Hc
	PyCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yVgnxyW/SvevemOUdqXUf8Xtrm/IZkCC8TWRHF/uA/w=;
	b=ifMq4a/adTKTEKn0R/rZcZUdRwcTCKOtHc6QYjYqAJlyfwefxBSbLugMQwvddsw4Pf
	Vzwu+pk6nyKrFgJWICQSSxkLLj4rNrJ54YN98jv4EMEEaVVZCos/e0XUQZAuj7u0RExw
	r1nS18AmFWFUo2Gms23Iu/mbrHu9e1J3mhSYRKSdpGyajWQf5ero8UHFmLY2Eq1JLr0z
	JY9oBaiA7YCJ5sIdV2jSSRucsmTOv3BZsJoq7lelbzPAAd8dkmevxK4t4eK8O4ANupro
	kg9Wl6KClZv5/pRvAjk07ynSsxFqJZefMa8U68Q4nLrYChxllIyLAaZckIeSpnrH7fNj
	54fw==
X-Gm-Message-State: AKwxytcfva5KXvtrYoEdGYpckmGAwhgf+ZWv9pgJZPgqd9zh3gm47j58
	KHRWqWu0Ce2YuYiyfTjKHo2A7EBhRTW1+/FD3UZvSw==
X-Google-Smtp-Source: AH8x226YMo3gev017gqneQhPrDq7m9lN0S3IpFCKK/ylT0Etn/z1NhtgaKOOsOMEeWTH5bqUElIsr36xZtK+ScXSyDE=
X-Received: by 10.36.86.20 with SMTP id o20mr8696929itb.53.1516801251553; Wed,
	24 Jan 2018 05:40:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.206 with HTTP; Wed, 24 Jan 2018 05:40:31 -0800 (PST)
In-Reply-To: <af197fb8-a676-bbfd-91fc-183a2aed77b9@luxoft.com>
References: <af197fb8-a676-bbfd-91fc-183a2aed77b9@luxoft.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 24 Jan 2018 13:40:31 +0000
Message-ID: <CAJTo0LZfHC8SOOqPTDMyVh1=wDiVxkD9toy-TfgEw1daEpzwog@mail.gmail.com>
To: "Mardegan, Alberto" <AMardegan@luxoft.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Getting python-dbusmock into the SDK
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 24 Jan 2018 13:40:53 -0000
Content-Type: multipart/alternative; boundary="001a1144d5eacb6b85056385cfc0"

--001a1144d5eacb6b85056385cfc0
Content-Type: text/plain; charset="UTF-8"

On 24 January 2018 at 13:31, Mardegan, Alberto <AMardegan@luxoft.com> wrote:

> ============
> ERROR: Nothing PROVIDES 'nativesdk-dbus-glib' (but
> virtual:nativesdk:/home/mardy/pelux/build/../sources/meta-
> openembedded/meta-python/recipes-devtools/python/python-dbus_1.2.4.bb
> DEPENDS on or otherwise requires it). Close matches:
>   nativesdk-dbus
>   nativesdk-json-glib
>   nativesdk-glibc
> ============
>
> Do I need to continue adding BBCLASSEXTEND+=" nativesdk" to the packages
> as I get new failures, or am I doing something wrong?
> I became suspicious when I saw "nativesdk-glib" appearing in the logs
> above; I guess we can safely assume that glibc is available in the host
> system, so the need to add it as a native SDK package got me puzzled.
>

Those are close matches on the assumption that maybe you did a typo.

Yes, you need to add BBCLASSEXTEND as appropriate.  Once you've verified
that the recipes actually build correctly in nativesk please send those
additions to oe-core.

Ross

--001a1144d5eacb6b85056385cfc0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 24 January 2018 at 13:31, Mardegan, Alberto <span dir=
=3D"ltr">&lt;<a href=3D"mailto:AMardegan@luxoft.com" target=3D"_blank">AMar=
degan@luxoft.com</a>&gt;</span> wrote:<div class=3D"gmail_extra"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
ERROR: Nothing PROVIDES &#39;nativesdk-dbus-glib&#39; (but<br>
virtual:nativesdk:/home/mardy/<wbr>pelux/build/../sources/meta-<wbr>openemb=
edded/meta-python/<wbr>recipes-devtools/python/<a href=3D"http://python-dbu=
s_1.2.4.bb" rel=3D"noreferrer" target=3D"_blank">python<wbr>-dbus_1.2.4.bb<=
/a><br>
DEPENDS on or otherwise requires it). Close matches:<br>
=C2=A0 nativesdk-dbus<br>
=C2=A0 nativesdk-json-glib<br>
=C2=A0 nativesdk-glibc<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
Do I need to continue adding BBCLASSEXTEND+=3D&quot; nativesdk&quot; to the=
 packages<br>
as I get new failures, or am I doing something wrong?<br>
I became suspicious when I saw &quot;nativesdk-glib&quot; appearing in the =
logs<br>
above; I guess we can safely assume that glibc is available in the host<br>
system, so the need to add it as a native SDK package got me puzzled.<br></=
blockquote><div><br></div><div>Those are close matches on the assumption th=
at maybe you did a typo.</div><div><br></div><div>Yes, you need to add BBCL=
ASSEXTEND as appropriate.=C2=A0 Once you&#39;ve verified that the recipes a=
ctually build correctly in nativesk please send those additions to oe-core.=
</div><div><br></div><div>Ross=C2=A0</div></div></div></div>

--001a1144d5eacb6b85056385cfc0--
