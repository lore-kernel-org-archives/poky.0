Return-Path: <anders@chargestorm.se>
Received: from STOEXHUB01.domain01.net (STOEXHUB01.domain01.net
	[83.145.59.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56D7EE01549
	for <poky@yoctoproject.org>; Tue, 10 Sep 2013 01:36:38 -0700 (PDT)
Received: from ad.chargestorm.se (83.252.255.124) by STOEXHUB01.domain01.net
	(10.12.10.1) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Tue, 10 Sep 2013 10:34:51 +0200
Date: Tue, 10 Sep 2013 10:36:34 +0200
From: Anders Darander <anders@chargestorm.se>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <20130910083634.GB5871@ad.chargestorm.se>
Mail-Followup-To: Bruce Ashfield <bruce.ashfield@windriver.com>,
	"richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <cover.1378500902.git.bruce.ashfield@windriver.com>
	<373355466ed7a2c31efd16f1b07c0d089c9d38d5.1378500902.git.bruce.ashfield@windriver.com>
	<20130910080836.GA5871@ad.chargestorm.se>
	<522ED553.1080202@windriver.com>
MIME-Version: 1.0
In-Reply-To: <522ED553.1080202@windriver.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 3/4] beagleboard: upgrade the kernel to 3.10.x
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
X-List-Received-Date: Tue, 10 Sep 2013 08:36:40 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Bruce Ashfield <bruce.ashfield@windriver.com> [130910 10:16]:

> On 13-09-10 04:08 AM, Anders Darander wrote:
> > * Bruce Ashfield <bruce.ashfield@windriver.com> [130906 22:59]:
> >> From: Liming Wang <liming.wang@windriver.com>

> >> In 3.10.x linux kernel, uImage can't be compiled by default. But zImage
> >> has been supported by the latest u-boot, so use zImage as the default kernel
> >> image file. In u-boot command, use "bootz", instead of "bootm", to boot the kernel.

> > NAK. (At least based on the info given above regarding the uImage to
> > zImage transfer).

> > I missed this patch earlier...

> > What's the issue with uImage on 3.10.x?
> > I'm running a kernel.org 3.10.x using linux-yocto-custom just fine here
> > (although for another board).

> > I suspect the issue (that I guess Liming had), is due to the powerpc
> > being mixed into his build. (Bruce replied on the oe-core list to a
> > path which corrected the path to the DTS).

> No, that wasn't the issue. uImage requires a LOADADDR in many cases and
> that isn't currently encoded in the machine configs.

Ah, ok. Then I'll obviously redraw my NAK-wishes for this patch.

I think the reason that uImage can't be compiled should have been stated
in the commit log, though. If for nothing else, just to make it clear to
everyone that there's no general uImage issue; rather an issue with the
specific board setup.

Cheers,
Anders

> zImage works fine, want to expand our coverage with the reference boards,
> so no, there's no NAK of this. It's fine as is.

> Other layers and BSPs are free to use uImage, just as this reference
> is free to use the zImage.


-- 
Anders Darander
ChargeStorm AB / eStorm AB

