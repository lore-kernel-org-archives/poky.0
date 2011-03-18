Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 98F314C800A4
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 09:05:44 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwr19 with SMTP id 19so5402675iwr.35
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 07:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=lYCXoEmZEsvK8d5nIFN5lc/br3LN+FLtGbo21Cdaexo=;
	b=fljH0pwXiHKXvTmQ0JRXs26+fH8+qLaTHK+cvikwecsYtbBTwHBu8hqABY8XkFy3zm
	xhb58A5l0I2hLkp0PvSTQw4NBI0w0bYilWvbr9eqaCg5vXq+ABGCk5Z4sq3h+NQM7gCy
	P/1p53/14w6X8Ug9NGOLpAIacr/V3j9zX/7Es=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=GcNlN4JlMeaqB6H33GqdBpFvp2DzXgbZCv8PWA8SP4jM6G+nE81nbWfYweZfSpay5Q
	vcBN0HPiUkTs5YmdgvMqD5U/EN2Oxx+FHWq58pzkEuCIhKkOR7IEuhSANXkj5hRl3pM2
	yHk1F15qHEaaClQJ8A7sRszApYXO999ogtiI4=
MIME-Version: 1.0
Received: by 10.42.149.194 with SMTP id x2mr1524643icv.388.1300457143939; Fri,
	18 Mar 2011 07:05:43 -0700 (PDT)
Received: by 10.231.147.134 with HTTP; Fri, 18 Mar 2011 07:05:43 -0700 (PDT)
In-Reply-To: <1bdc18$jtdv00@fmsmga002.fm.intel.com>
References: <1bdc18$jtdv00@fmsmga002.fm.intel.com>
Date: Fri, 18 Mar 2011 10:05:43 -0400
Message-ID: <AANLkTikFB9w+x9XNk407hf8MEVum0E4bqxPT1mGYmp6G@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [KERNEL][linux-yocto][PATCH 0/1] Fix for bug 888
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
X-List-Received-Date: Fri, 18 Mar 2011 14:05:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 17, 2011 at 2:45 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
>
> Fixes [BUGID #888]. =A0Please pull.
>
> Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib.git
> =A0Branch: tzanussi/crownbay-bugfix-888
> =A0Browse: http://git.pokylinux.org/cgit/cgit.cgi/linux-yocto-2.6.37-cont=
rib/log/?h=3Dtzanussi/crownbay-bugfix-888

I'm back to location in the world with a working access to the
internet :)

These look good to me.

What's the timeline for getting this into the tree? I can merge this in abo=
ut
10 hours from now, and have it in for the weekend.

Cheers,

Bruce

>
> Tom Zanussi (1):
> =A0crownbay: update a handful of EMGD licenses
>
> =A0drivers/gpu/drm/emgd/emgd/pal/Makefile.include =A0 =A0 | =A0 39 ++--
> =A0.../emgd/pvr/services4/system/common/sysconfig.c =A0 | =A0287 ++++++++=
++----------
> =A0.../drm/emgd/pvr/services4/system/plb/sysconfig.c =A0| =A0 64 +++---
> =A0.../drm/emgd/pvr/services4/system/tnc/sysconfig.c =A0| =A0 64 +++---
> =A0.../gpu/drm/emgd/pvr/services4/system/tnc/systnc.h | =A0 48 ++--
> =A05 files changed, 246 insertions(+), 256 deletions(-)
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

