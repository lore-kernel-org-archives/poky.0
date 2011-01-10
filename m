Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id F3E904C80050
	for <poky@yoctoproject.org>; Mon, 10 Jan 2011 12:13:22 -0600 (CST)
Received: from [192.168.0.7] (5ad4d7b0.bb.sky.com [90.212.215.176])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 66C6D12EC118
	for <poky@yoctoproject.org>; Mon, 10 Jan 2011 12:53:27 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <1292872200.2466.58.camel@scimitar>
References: <1292872200.2466.58.camel@scimitar>
Date: Mon, 10 Jan 2011 18:13:15 +0000
Message-ID: <1294683195.2451.12.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: Poky Laverne point release
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
X-List-Received-Date: Mon, 10 Jan 2011 18:13:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-12-20 at 19:10 +0000, Joshua Lock wrote:
> Hi all,
> 
> I've a branch on poky-contrib (josh/laverne) which fixes the Makefiles
> in several recipes such that I can do builds of all our targets on
> Fedora 14 with it's new, stricter, make version (3.82).
> 
> This makes me think it's time to start pulling together a Laverne point
> release but we don't really have a handle on what these should include.
> 
> For the Green point release I cooked I just went through commits since
> the release and did sniff testing, but I think we can do better.
> Plus I started to do that for Laverne but there's been some almost 900
> commits since then... 
> 
> So, to the point of this message, I'm looking for people to nominate
> fixes for the Laverne branch. Even better if you share a git hash.
> 
> To start the ball rolling I'm going to suggest:
> * Make 3.82 fixes
> * Qemu script enhancements/fixes
> * Bitbake fetcher fixes
> 
> 
> And you? What fixes would you suggest?

<gentle nudge for feedback>

I guess we don't have many users of Laverne?

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


