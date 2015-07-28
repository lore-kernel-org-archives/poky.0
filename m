Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CABA2E0099A; Tue, 28 Jul 2015 07:23:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.44 listed in list.dnswl.org]
Received: from mail-qg0-f44.google.com (mail-qg0-f44.google.com
	[209.85.192.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26CAEE00985
	for <poky@yoctoproject.org>; Tue, 28 Jul 2015 07:23:31 -0700 (PDT)
Received: by qgii95 with SMTP id i95so75704390qgi.2
	for <poky@yoctoproject.org>; Tue, 28 Jul 2015 07:23:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=3LWjqpxk75lqDet2W7+WnI4LO5kaI8rYvoYJqX9EmPQ=;
	b=IDx4cUPKQt0eSx3Cz3rnWr/XNHGlc9v/LMxz3mvOtVddhHM+7ofQhktR14B2iIFDLa
	eRD+dLY7REv+0ycbqDk5E4KhdsOjbrbq5pzeMfU2Z6McgmS6RtKt8OEfZXPPrhZkeXKg
	2X2UC4ONsr9yAZ4FHXUeOXQe+eDhVi+69Ch35pp9ywI8hn5WLBu2tH4Jq0/LeTlMlBg+
	E8aiYvgBsqJOjyi6jPORizIa6CeDhgdwwL6YpiKI6b2o8q1U24jLLjViABiOWap/itS9
	xtDnwwoto0OnuWCwtXN1nHAD3ZHmet6fGYPZo9Q4RWg00qEMl6pZz/SEDFXnAgLSVhPQ
	9x4A==
X-Gm-Message-State: ALoCoQl4SVSLYBXwm6tPHzBKcya+DUR0x9KtMh+nOhkLuSTyA68Nb1YuVdn0P81TRQII8X3FBjT2
X-Received: by 10.140.150.142 with SMTP id 136mr52229657qhw.17.1438093410693; 
	Tue, 28 Jul 2015 07:23:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Tue, 28 Jul 2015 07:23:11 -0700 (PDT)
In-Reply-To: <DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E54E@AUSX7MCPS305.AMER.DELL.COM>
References: <DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E54E@AUSX7MCPS305.AMER.DELL.COM>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 28 Jul 2015 15:23:11 +0100
Message-ID: <CAJTo0LbEHR+mvZKHS6Z1sG4aUseYedNy6vwms=owdhATcwhr3g@mail.gmail.com>
To: Jack_Fewx@dell.com
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Missing dependencies after setscene, postinst fails
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
X-List-Received-Date: Tue, 28 Jul 2015 14:23:35 -0000
Content-Type: multipart/alternative; boundary=001a11357d4ae60913051bf03698

--001a11357d4ae60913051bf03698
Content-Type: text/plain; charset=UTF-8

On 28 July 2015 at 15:12, <Jack_Fewx@dell.com> wrote:

> In this scenario I am consistently seeing 3 Poky recipes fail at
> postinst.  I have triaged the problem to be missing native-class
> dependencies for each of the 3 packages.
>
> The problem packages are: ca-certificates, nss, and gdk-pixbuf-native.
> ca-certificates and nss both depend on their own native-class builds, so
> ca-certificates-native and nss-native respectively, and they fail after
> doing do_package_write_ipk_setscene.  gdk-pixbuf-native needs jpeg-native
> in order to complete do_populate_sysroot_setscene, but fails due to its
> absence.
>

The problem is an ordering one - as I understand it setscene depends are
restored in the reverse order to what you'd expect so any hooks that run in
populate_sysroot need to explicitly add dependencies.  The pixbuf one is
known and we should probably merge the ugly fix before doing the right
thing, but the others are unknown to me at least.

A good start would be to put those missing depends statements in the
recipe, can you prepare a patch for oe-core?

Ross

--001a11357d4ae60913051bf03698
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 July 2015 at 15:12,  <span dir=3D"ltr">&lt;<a href=3D"mailto:Jack_Few=
x@dell.com" target=3D"_blank">Jack_Fewx@dell.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div id=3D":2zo" class=3D"a3s" style=3D"overf=
low:hidden">In this scenario I am consistently seeing 3 Poky recipes fail a=
t postinst.=C2=A0 I have triaged the problem to be missing native-class dep=
endencies for each of the 3 packages.<br>
<br>
The problem packages are: ca-certificates, nss, and gdk-pixbuf-native.=C2=
=A0 ca-certificates and nss both depend on their own native-class builds, s=
o ca-certificates-native and nss-native respectively, and they fail after d=
oing do_package_write_ipk_setscene.=C2=A0 gdk-pixbuf-native needs jpeg-nati=
ve in order to complete do_populate_sysroot_setscene, but fails due to its =
absence.</div></blockquote></div><br>The problem is an ordering one - as I =
understand it setscene depends are restored in the reverse order to what yo=
u&#39;d expect so any hooks that run in populate_sysroot need to explicitly=
 add dependencies.=C2=A0 The pixbuf one is known and we should probably mer=
ge the ugly fix before doing the right thing, but the others are unknown to=
 me at least.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail=
_extra">A good start would be to put those missing depends statements in th=
e recipe, can you prepare a patch for oe-core?</div><div class=3D"gmail_ext=
ra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11357d4ae60913051bf03698--
