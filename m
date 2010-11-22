Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B9C14C80052
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 07:54:04 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 7EBCC12EC1C5
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 08:31:21 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <4CE8FECD.5050905@mlbassoc.com>
References: <4CE8FECD.5050905@mlbassoc.com>
Date: Mon, 22 Nov 2010 13:53:55 +0000
Message-ID: <1290434035.2579.15.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.0 (2.32.0-2.fc14) 
Subject: Re: BBFILE_PRIORITY confusion
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
X-List-Received-Date: Mon, 22 Nov 2010 13:54:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2010-11-21 at 04:13 -0700, Gary Thomas wrote:
> I'm building a multi-layered system, something like this:
>    meta-manufacturer/...
>    meta-platform/...
> 
> The idea is that we'll put any packages and support that are
> useful for all platforms we make in meta-manufacturer/ and only
> target platform specifics in meta-platform/
> 
> I had set BBFILE_PRIORITY=6 in meta-manufacturer/ and 7 in meta-platform/
> 
> Here's the confusion.  I originally had something like this for our internal
> kernel packages:
>    meta-manufacturer/packages/linux/linux-manufacturer_2.6.32.bb
>    meta-platform/packages/linux/linux-manufacturer_2.6.28.bb
> This was due to the fact that some other platform we make is already
> using 2.6.32, but we still have some back at 2.6.28
> 
> Today, I tried to bring one of those platforms to 2.6.32, so I added
> this (exactly as I have done for other platforms already running 2.6.32):
>    meta-platform/packages/linux/linux-manufacturer_2.6.32.bbappend
> initially leaving the linux-manufacturer_2.6.28.bb in place.
> 
> Much to my surprise, bitbake/poky never even reads the linux-manufacturer_2.6.32.bbappend
> file!  This seems to be related to BBFILE_PRIORITY - when I swapped the
> priorities around, it started to work.  While this gets me moving, I think
> it's wrong - I may need at some point for this platform to be able to override
> some manufacturer recipe, etc.
> 
> It seems to me that BBFILE_PRIORITY is a bit too zealous; barring any other
> constraint, I should think that the 2.6.32 recipe should always take precedence.
> 
> Am I missing something here, or is it a bug?
> 

This is working exactly as intended, you've told bitbake that the
manufacturer layer has a higher priority so it's using that to satisfy
any recipe it can, regardless of version. If you'd like the platform to
be able to be prioritised over the manufacturer you'd need to adjust the
priority accordingly.

If you want the most highest version recipe to be used, regardless of
layer, you could set the priorities to be the same.

Perhaps you could work around this by having your platforms pin specific
kernel versions when they need an older kernel?

Hope that helps clarify things.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


