Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id BC57D4C81065
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 03:20:46 -0600 (CST)
Received: from [192.168.0.7] (5ad4d7b0.bb.sky.com [90.212.215.176])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 3897E12EC1CA;
	Fri, 21 Jan 2011 04:01:27 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <3E98DC04-B56F-4E97-A7AD-F2CFA0FB166C@dominion.thruhere.net>
References: <cover.1295397702.git.edwin.zhai@intel.com>
	<4D38BC0B.7080501@intel.com>  <4D38DFB5.3000907@intel.com>
	<1295600248.2382.10.camel@scimitar>
	<3E98DC04-B56F-4E97-A7AD-F2CFA0FB166C@dominion.thruhere.net>
Date: Fri, 21 Jan 2011 09:20:38 +0000
Message-ID: <1295601638.2382.13.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/6] 2nd pull request: UX, gtk+/apr, Edwin, Jan19, 2011
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
X-List-Received-Date: Fri, 21 Jan 2011 09:20:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-21 at 10:00 +0100, Koen Kooi wrote:
> >> Our poky seems never has stable release, and always use development 
> >> branch. Maybe we want some new feature? RP can comment. Another benefit 
> >> is development branch is under svn, so we can selectively pick some 
> >> modules instead of big whole repo. Given development branch, there is no 
> >> even/odd difference.
> >> 
> >> I have a plan to change it to stable release with the cost of long 
> >> download & compile time, but I'm afraid can't make it in this release cycle.
> > 
> > I think we need someone else to own downgrading this recipe for the next
> > release then, we can't commit to a 6month stable cycle with an unstable
> > software package. 
> 
> You might want to fix glib-2.0 as well, only a 2.27.x recipe is in yocto currently

Yes, definitely.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


