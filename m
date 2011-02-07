Return-Path: <kergoth@gmail.com>
Received: from mail-wy0-f172.google.com (mail-wy0-f172.google.com
	[74.125.82.172])
	by mx1.pokylinux.org (Postfix) with ESMTP id E589B4C80097
	for <poky@lists.pokylinux.org>; Mon,  7 Feb 2011 15:42:38 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyf23 with SMTP id 23so5315593wyf.3
	for <poky@lists.pokylinux.org>; Mon, 07 Feb 2011 13:42:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=2wSYgwEcSZ9UKGKXXvVhW630WTw3DvC6GXchtAIIGb8=;
	b=fQ+ScDO9hCAwvRdyZZTIKQ6WIUVruAW30LmCwa6jccSz9Bka+z6+KJvTIKqOudMzSl
	MKEVpnsY7VZRLGQkUZ6hTCNOV4nRbldFQ/LKLlBEh4y9ema1gL8UapBFZcI1S5NuB4VI
	VCYxaM2/fvQTBhGJSYN4WiNE7+OYUi2K2A7rQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=c8sWG1IflyhhJ59MGx/fXKw29hMe8eNvvPR/YxIjM3mh7k9/K4ImwtlZXIiSohjgZJ
	0cFstMuaIK9WiDpfuTfh6yCcv8g5AIi3z3kXg5DeGDODZ+J0r7sDKa/3+vHoDwbZf417
	ZLWLwNXeg9FlIlgUpgGOMg8Sw5fu7GryzLEmU=
Received: by 10.216.169.202 with SMTP id n52mr10478792wel.15.1297114957622;
	Mon, 07 Feb 2011 13:42:37 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.17.11 with HTTP; Mon, 7 Feb 2011 13:42:17 -0800 (PST)
In-Reply-To: <4D5064FA.2040403@mlbassoc.com>
References: <4D5064FA.2040403@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Mon, 7 Feb 2011 14:42:17 -0700
X-Google-Sender-Auth: JIvyEbwX3g1UTDxPNTcVqn0euJg
Message-ID: <AANLkTi=UauG2fGWXZ+j=x5SuZWjOFfa4yru8oWQStGwA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: DISTRO_FEATURES only extendable?
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
X-List-Received-Date: Mon, 07 Feb 2011 21:42:39 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 7, 2011 at 2:32 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> I have my own distribution which is an extension of Poky
> (my DISTRO.conf is based on poky.conf via requires)
>
> Is there some reason that DISTRO_FEATURES is fixed by poky.conf
> and not overridable? =C2=A0e.g. my systems seldom have WiFi or PCMCIA,
> so it's silly to include that support.
>
> Would the attached patch be acceptable to the mainstream?

Note that there's no reason you can't override it now, just do it
after the require of poky.conf :)  Of course, using ?=3D makes it easier
to override it from local.conf without using an override, but they are
*distro* features after all, its intended to be in the distro's hands.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

