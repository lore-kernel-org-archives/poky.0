Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8F1434C80B71
	for <poky@yoctoproject.org>; Sat, 18 Dec 2010 11:26:40 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so1358724iyb.35
	for <poky@yoctoproject.org>; Sat, 18 Dec 2010 09:26:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type;
	bh=Drk04z53kaE7oq/fgnoOuMI0BQ4eXCbUZYwTtClRukg=;
	b=KVY1jL5mvutPv6aoLgUuizG6I5z2WWLN65jSror0tFPN15HwjwQDtvjAvWbRpqqA/b
	k7vsfOW1ZnTIdYIUX8LCbPquY3k2l+FW/I7i/64haMhBmc4bvwFLKCL000wDajm5KT2M
	Q84McQKMFf3NpBddvNzv2yjHhZU2ODuT1rGiA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=SkrKcZGr/wmKEKz5ib02qhMNbvspQWcyVuGo/hQT69Yd/KOBVswIKZHLAH1tDhzUnS
	mYid01h8FbbKwMpYpx9xiDgPdfgjUlesUaEInk8U/i5O295kgU7wnTzWuCUPb8iaBu0y
	3gCcLalVU3oABZMYJOzyrPWakJ4nVJR7MtMBQ=
MIME-Version: 1.0
Received: by 10.231.31.1 with SMTP id w1mr2146267ibc.7.1292693200246; Sat, 18
	Dec 2010 09:26:40 -0800 (PST)
Received: by 10.231.200.140 with HTTP; Sat, 18 Dec 2010 09:26:40 -0800 (PST)
Date: Sat, 18 Dec 2010 18:26:40 +0100
Message-ID: <AANLkTi=MRFdxg-0VO-shfgGf80607Fe9RhT1VtPMRwsF@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: poky@yoctoproject.org
Subject: mpd: COMMERCIAL_LICENSE etc
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
X-List-Received-Date: Sat, 18 Dec 2010 17:26:40 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I was trying to add mpd to poky and bumped upon COMMERCIAL_LICENSE
Should I set
COMMERCIAL_LICENSE = ""
in my local.conf. That allows me to add lame etc to mpd.
Not sure if that is the desired way. Overruling COMMERCIAL_LICENSE seems wrong.

I'm also stuct at how to add these conditionally.
The OE recipe has:
           ${@base_conditional('ENTERPRISE_DISTRO', '1', '', 'libmad
libid3tag lame', d)}"
I tried replacing ENTERPRISE_DISTRO with COMMERCIAL_LICENSE but that
did not work as it is not a boolean var
and my python is not good enough to come up with a better fix.

Frans.

PS: any suggestion on how/where to submit this recipe and the ones I
added for it (audiofile, faad2, liba0, libmkidmod)

