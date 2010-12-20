Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id DC8A54C8106A
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 05:34:42 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 8B86312EC331
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 06:13:34 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <AANLkTi=MRFdxg-0VO-shfgGf80607Fe9RhT1VtPMRwsF@mail.gmail.com>
References: <AANLkTi=MRFdxg-0VO-shfgGf80607Fe9RhT1VtPMRwsF@mail.gmail.com>
Date: Mon, 20 Dec 2010 11:34:35 +0000
Message-ID: <1292844875.2466.11.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: mpd: COMMERCIAL_LICENSE etc
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
X-List-Received-Date: Mon, 20 Dec 2010 11:34:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2010-12-18 at 18:26 +0100, Frans Meulenbroeks wrote:
> Hi,
> 
> I was trying to add mpd to poky and bumped upon COMMERCIAL_LICENSE
> Should I set
> COMMERCIAL_LICENSE = ""
> in my local.conf. That allows me to add lame etc to mpd.
> Not sure if that is the desired way. Overruling COMMERCIAL_LICENSE seems wrong.

This is something we need to document better, and I filed a bug about
that recently (#576).

There's a comment in poky.conf on how the variable is used
(http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/conf/distro/poky.conf#n130) as well as a comment on the bug I filed (http://bugzilla.pokylinux.org/show_bug.cgi?id=576#c1)

> 
> I'm also stuct at how to add these conditionally.
> The OE recipe has:
>            ${@base_conditional('ENTERPRISE_DISTRO', '1', '', 'libmad
> libid3tag lame', d)}"
> I tried replacing ENTERPRISE_DISTRO with COMMERCIAL_LICENSE but that
> did not work as it is not a boolean var
> and my python is not good enough to come up with a better fix.

I think adding a boolean value for detecting whether we can build this
software would be a great idea, care to file a bug?

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


