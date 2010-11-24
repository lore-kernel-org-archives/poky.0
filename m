Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 13FC14C80052
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 05:47:37 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 8A7D912EC11B
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 06:25:00 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <4CECF7F0.3080303@mlbassoc.com>
References: <4CECEF5D.2040702@mlbassoc.com>  <4CECF7F0.3080303@mlbassoc.com>
Date: Wed, 24 Nov 2010 11:47:28 +0000
Message-ID: <1290599248.2799.16.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: bitbake package-index broken?
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
X-List-Received-Date: Wed, 24 Nov 2010 11:47:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-11-24 at 04:33 -0700, Gary Thomas wrote:
> On 11/24/2010 03:56 AM, Gary Thomas wrote:
> > With a recent build, bitbake package-index doesn't seem to do anything.
> > e.g. if I look at tmp/deploy/ipk/*/Packages.gz before and after, there
> > are no changes.
> >
> > I tried to build a simple package and add it to my database. Sadly,
> > it's not being updated at all, so the new package does not appear on
> > the board.
> >
> > Any ideas what might be wrong?
> 
> A quick check shows that do_build() in the package-index recipe is never
> really run!
> 
> I found a workaround by just building an image which has a root file system.
> This also forces a package database rebuild.  It would be nice to figure out
> what's broken though (it certainly _used_ to work)
> 

I'm not really familiar with the ipk classes so can't offer a quick
solution, could I ask you to file a bug so that we can track this issue
and assign resources to fix?

Thanks,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


