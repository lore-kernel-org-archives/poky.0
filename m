Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B07EE00CC1; Tue, 24 Oct 2017 06:29:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.54 listed in dnsbl.sorbs.net]
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E22A8E00C45
	for <poky@yoctoproject.org>; Tue, 24 Oct 2017 06:29:07 -0700 (PDT)
Received: by mail-it0-f54.google.com with SMTP id p138so9972986itp.2
	for <poky@yoctoproject.org>; Tue, 24 Oct 2017 06:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NtBI46WWGaXZKf8dSVpKd8KKb4r0YyM0YwpcqOXxe1g=;
	b=W7XFxb1Pw+sNj1Y3HdLwY1h+rkaxkVE1iZVnl4oKhcZhJ00iutdYBlRFGbOOQsOWha
	lBaMDLOMSUsRPO6OnJA7KxJDA5e1AM6u7sAUJJsQ+45FUGQf2Wn7rrSJ1SoWKSqaD2nW
	dIkQjr7SmLJAc6bYi9HuGNcNGIHiCjVwCAd97lFZo8Nr6qWHvT+p4ksRgNPA3/C3F+g0
	mxTjAvqC0Ai0DxFNWJ7sxn/I6HcajXQ22PDGD7cmUZhVUpPf8B/eeH6r9oO5nytXLW+S
	+7rmkpjIQfYEguWEdgdQRBwCdWsmeuT++RdSuuezly6Hgmnrr8T5fcnVATZGAoVaei/M
	9W4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NtBI46WWGaXZKf8dSVpKd8KKb4r0YyM0YwpcqOXxe1g=;
	b=Z2rj9rkRLrGCCncLVGdKL0ja/uBUhqVz5Crab1V/nPvQbatoq1hX9qzToc/vBlLsRF
	aZwLYx38edfItkZTk/Lj30MvR4vwBS+i28LyUSkAZ9AvvXlSf9U6R7tS+m2aFHJW8E6O
	WXUyx8f2Sj0hE8zLNiOYlw7/C29wQt0wXgS0d6lGu6sJUAqFxEm9vDTvlyyIO7hmq7hW
	NcdURndb/3be3NOsphaDyUThvCrULLNAFR59qwePFBdwWRG8RCPNqUfWz77mcuuIDlDb
	auhlImtOL47yAMdniQXMerieIQ5AlmZSDrXmsd0dEEDZdJ+fxloODi4QcfCnoEiXcx1V
	Jhug==
X-Gm-Message-State: AMCzsaXNu3oKr6rKg3kLpVmmNmhsixMpUFZK6FzfedHjTPnjaqzOCpxY
	+BfYiFhB6655/2ppRv0+QpF4oa43IktZEULgPomSiA==
X-Google-Smtp-Source: ABhQp+RvF8xnVfjwoZG8we25R/FlYqT6JUgS3/zNpnGVABaITZuxluygyZ0m77fuLsfhWnmdMvRJVIp9aXKkQ6wJH40=
X-Received: by 10.36.161.15 with SMTP id y15mr13812981ite.151.1508851747020;
	Tue, 24 Oct 2017 06:29:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Tue, 24 Oct 2017 06:28:46 -0700 (PDT)
In-Reply-To: <trinity-0e3ed1cd-c3b2-47d0-aac1-bfea6bc974ac-1508851020788@3c-app-gmx-bs63>
References: <trinity-0e3ed1cd-c3b2-47d0-aac1-bfea6bc974ac-1508851020788@3c-app-gmx-bs63>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 24 Oct 2017 14:28:46 +0100
Message-ID: <CAJTo0LYbB0qWGZVk1Lkdx++iTn53y9XbWw+QRT3UiYdJTQkORA@mail.gmail.com>
To: Arno Steffens <star@gmx.li>
Cc: "pokyyoctoproject.org" <poky@yoctoproject.org>
Subject: Re: snmpd
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
X-List-Received-Date: Tue, 24 Oct 2017 13:29:09 -0000
Content-Type: multipart/alternative; boundary="f403045fbf04667ac5055c4aeca7"

--f403045fbf04667ac5055c4aeca7
Content-Type: text/plain; charset="UTF-8"

On 24 October 2017 at 14:17, Arno Steffens <star@gmx.li> wrote:

> Sorry for asking - how to get snmpd into my rootfs?
>
> I added net-snmp to my IMAGE_INSTALL. It creates the packages, but at
> least the net-snmp-server-snmpd is not included in my rootfs. Is there
> something to add?
>

If you want the net-snmp-server-snmpd package in your image then add that
to IMAGE_INSTALL.  Adding a recipe name doesn't automatically add all
packages as that is rarely what you want to happen.

Ross

--f403045fbf04667ac5055c4aeca7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 24 October 2017 at 14:17, Arno Steffens <span dir=3D"lt=
r">&lt;<a href=3D"mailto:star@gmx.li" target=3D"_blank">star@gmx.li</a>&gt;=
</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmail_quote"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">Sorry for asking - how to get snmpd into my roo=
tfs?<br>
<br>
I added net-snmp to my IMAGE_INSTALL. It creates the packages, but at least=
 the net-snmp-server-snmpd is not included in my rootfs. Is there something=
 to add?<br></blockquote><div><br></div><div>If you want the net-snmp-serve=
r-snmpd package in your image then add that to IMAGE_INSTALL.=C2=A0 Adding =
a recipe name doesn&#39;t automatically add all packages as that is rarely =
what you want to happen.</div><div><br></div><div>Ross=C2=A0</div></div></d=
iv></div>

--f403045fbf04667ac5055c4aeca7--
