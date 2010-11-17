Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 784F54C80A74
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 08:28:54 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 0F98812EC1CD
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 09:05:54 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D31419AED@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D31419AED@shsmsx502.ccr.corp.intel.com>
Date: Wed, 17 Nov 2010 14:28:43 +0000
Message-ID: <1290004124.2518.4.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.0 (2.32.0-2.fc14) 
Subject: Re: a new problem with sstate
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
X-List-Received-Date: Wed, 17 Nov 2010 14:28:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-11-17 at 21:21 +0800, Tian, Kevin wrote:
> When looking into the problem why some prebuilts can't be reused, I've struggled with
> another issue these days. It's more severe because the 2nd build can't even succeed
> when prebuilt is used.
> 
> The failure happened randomly on eglibc, eglibc-initial, and gcc-runtime. The error log
> shows that either gcc libraries or eglibc headers are not correctly installed when building
> those recipes. This first led me to think about potential dependency problem among 
> those recipes. However this only happens when prebuilt is used. A fresh build just 
> succeeds.
> 
> Finally it turns out from two factors:
> 
> 	o sstate.bbclass has special handling about -initial and -intermediate recipes. If 
> a complete (e.g. gcc-cross or eglibc) setscene function has been invoked already, 
> installation for those special sstate packages is skipped, while still marked as 
> accelerate-able

The special casing in the sstate class was added to work around the fact
that the toolchain bootstrap overwrites some pieces of the sysroot
(bug#239).

http://bugzilla.yoctoproject.org/show_bug.cgi?id=239

If this is still not working is there anything stopping us from
expanding the workaround Richard started in
ecf2eb1efa145d5c8f350697ec605ea58beb9ba7 as a temporary fix until bug
239 is fixed?

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=ecf2eb1efa145d5c8f350697ec605ea58beb9ba7

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


