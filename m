Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id DD7914C80B70
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 10:58:00 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9GvwBo009661;
	Thu, 9 Dec 2010 16:57:58 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09080-09; Thu,  9 Dec 2010 16:57:54 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9GvovJ009654
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 9 Dec 2010 16:57:50 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Leon Woestenberg <leon.woestenberg@gmail.com>
In-Reply-To: <AANLkTikvUb+SmGvn3i=U7KpEiYHq24XbOnjZMFTh6K1j@mail.gmail.com>
References: <1291756443-28767-1-git-send-email-wd@denx.de>
	<201012081124.45901.paul.eggleton@linux.intel.com>
	<20101208113542.9D65E140688@gemini.denx.de>
	<4D00042C.6040403@linux.intel.com>
	<20101209085846.264F5D301D6@gemini.denx.de>
	<1291897825.6078.11.camel@scimitar>
	<AANLkTikvUb+SmGvn3i=U7KpEiYHq24XbOnjZMFTh6K1j@mail.gmail.com>
Date: Thu, 09 Dec 2010 16:57:38 +0000
Message-ID: <1291913858.1554.909.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/5] Fedora 14 Patches
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
X-List-Received-Date: Thu, 09 Dec 2010 16:58:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-09 at 16:43 +0100, Leon Woestenberg wrote:
> Is something preventing the Yocto guys to look at the OpenEmbedded
> GIT, where these machines and recipes came from in the first place?

No, this is something we do a lot of the time and you can see it in the
commit logs. When something comes from OE, credit is given.

> Obviously most of these machines come directly from OE.
> 
> What I don't understand is that all that is sitting in OpenEmbedded is
> considered 'new' in Poky/Yocto, while it was thrown away in the first
> place by Poky and Yocto.

Nothing has ever been thrown away. Poky has been around a long time,
things get added to OE which didn't make it into Poky. What Joshua is
trying to understand is what missing.

> We have had numerous discussion on how we can extend Yocto back to
> include the PowerPC, ARM, MIPS stuff again, but it takes people to
> look across the wall again.

qemuppc, qemuarm and qemumips built and boot in Poky, we test this
extremely regularly so there is no fundamental architecture issue. Where
did this come from? Large chunks of it from OE. There is obviously some
problem for certain classes of machines. I'd very much like to
understand what is broken so we can go and fix it.

> If there's legal issues involved in looking over the wall, I'ld like
> to see that confirmed, as it greatly influences the way we can work
> with the community.

There are no legal issues.

Cheers,

Richard


