Return-Path: <kergoth@gmail.com>
Received: from mail-ew0-f48.google.com (mail-ew0-f48.google.com
	[209.85.215.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5C9DA4C81065
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 11:54:37 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ewy20 with SMTP id 20so3403574ewy.35
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 09:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=SH7lebdfjhwWMOFzPSz5ZyVTWRRCI1uZjsQzrO0oycI=;
	b=fNgEv1MpXSDnprz18JbEp68kXRjydZpjlJQobh1+VSmo6lZdTwS6czQt0OWvI1mTsg
	GhfvqxOnFL3Y8HCLrA2zouWDrtsmmqEg17dolVWCNpTWHpb+qhDdZWcHnv+UU2t0oRuF
	KKqdnWkaU5FGU7gg+meaPDoczIaafHgXCpPN0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=mblPRcJhWGSQVkqPrE7vRDTxwkbjyEJ4dqJfkGHGW1IKG60UcMqtTlDYgVPLZB9F3z
	+5Jr1kDvbNvknwgpXG7aPuYIoihPzwn1/T5lDls29I8mAxtBaw1vETt4x8myW0ljs2Oc
	kxAvAOs70UInyQuZLmQbvlmBQOjUy3pmo5HR0=
Received: by 10.216.155.75 with SMTP id i53mr1500978wek.27.1295373154037; Tue,
	18 Jan 2011 09:52:34 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.254.91 with HTTP; Tue, 18 Jan 2011 09:51:16 -0800 (PST)
In-Reply-To: <5D53183E-2C2C-4DAC-9ED9-51DA01F33E77@dominion.thruhere.net>
References: <5D53183E-2C2C-4DAC-9ED9-51DA01F33E77@dominion.thruhere.net>
From: Chris Larson <clarson@kergoth.com>
Date: Tue, 18 Jan 2011 10:51:16 -0700
X-Google-Sender-Auth: cznm6icAtRfmab3w0upxG0I6gQo
Message-ID: <AANLkTimQe+wMuRZjmQ+y0PAhN7Gby67FH99cMa4AgicS@mail.gmail.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Cc: poky@yoctoproject.org
Subject: Re: install-info creates package clashes for e.g. external python tarball
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
X-List-Received-Date: Tue, 18 Jan 2011 17:54:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 18, 2011 at 12:51 AM, Koen Kooi <koen@dominion.thruhere.net> wr=
ote:
> When building external-python-tarball I get:
>
>
> | =C2=A0* check_data_file_clashes: Package libreadline6 wants to install =
file /OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnue=
abi/external-python-tarball-1.0-r0/sdk/image/usr/local/angstrom/x86_64/sysr=
oots/x86_64-angstromsdk-linux/usr/share/info/dir
> | =C2=A0 =C2=A0 =C2=A0 But that file is already provided by package =C2=
=A0* eglibc-nativesdk
> | =C2=A0* opkg_install_cmd: Cannot install package python-nativesdk-core.
>
> I vaguely recall running into this a few years ago in OE, but I can only =
find this one: http://cgit.openembedded.org/cgit.cgi/openembedded/commit/?i=
d=3D7b774a106f6936fd050abb4cbe90a84bd0b67025
>
>
> Does anyone have an idea on how to fix this in yocto without resorting to=
 --force-overwrite?

I don't know much about info, but I'd take a wild guess that dir is an
index of what's available, and that we should create a bbclass that
adds a postinst to update it on install for packages that add files to
infodir.  Maybe someone else actually has a clue about info though :)
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

