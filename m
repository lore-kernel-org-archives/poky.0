Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 737504C80BD4
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 09:58:33 -0600 (CST)
Received: from [192.168.1.88] (unknown [83.217.123.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id CCC0612EC1CD
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 10:39:11 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <4D3850B3.2030100@mlbassoc.com>
References: <4D3850B3.2030100@mlbassoc.com>
Date: Thu, 20 Jan 2011 15:58:23 +0000
Message-ID: <1295539103.2487.4.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: What's taking so long??
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
X-List-Received-Date: Thu, 20 Jan 2011 15:58:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-20 at 08:11 -0700, Gary Thomas wrote:
> My target platform/distro uses IPK and I have a local kernel
> recipe which is based on the pre linux-yocto recipe that was
> used by Poky.  When I build & package the kernel, I have
> terrible performance - this is new, it used to be just fine.
> 
> Here's what I mean.  Building for my kernel and timing the
> various steps, e.g.
>    % time bitbake virtual/kernel -c compile
> 
> My kernel:
>    compile            1m49s
>    deploy             0m16s
>    populate_sysroot   0m38s
>    package           23m20s
> 
> Just to compare, using OTS Poky for BeagleBoard:
>    compile            5m07s
>    deploy             0m36s
>    populate_sysroot   0m29s
>    package            5m02s
> 
> That's a five-fold difference in the time to build & package
> the kernel.

This is a significant performance impact. Thanks for taking the time to
do some profiling.

I've filed a bug http://bugzilla.pokylinux.org/show_bug.cgi?id=666 and
we'll get someone looking into that as a matter of priority.

> 
> What am I doing [wrong?] that makes this so?
> Would it be better if I switched to RPM like the BB is using?
> 

It looks like the slow paths are in package format independent code, so
probably not.

Regards,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


