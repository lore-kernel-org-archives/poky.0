Return-Path: <rpurdie@linux.intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id E09A54C801BF
	for <poky@lists.pokylinux.org>; Tue, 19 Oct 2010 11:43:33 -0500 (CDT)
Received: by pug.o-hand.com (Postfix)
	id 773D312EC33C; Tue, 19 Oct 2010 12:18:58 -0500 (CDT)
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id AB69C12EC225
	for <poky@o-hand.com>; Tue, 19 Oct 2010 12:18:57 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9JGhTQW001923;
	Tue, 19 Oct 2010 17:43:29 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01380-09; Tue, 19 Oct 2010 17:43:25 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9JGhMtH001917
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 19 Oct 2010 17:43:23 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: Joe Sauer <jsauer@vernier.com>
In-Reply-To: <AANLkTimT6dmQHiOq4Qve36h6=3HNXiF2zckvVjbj8PMK@mail.gmail.com>
References: <AANLkTimT6dmQHiOq4Qve36h6=3HNXiF2zckvVjbj8PMK@mail.gmail.com>
Date: Tue, 19 Oct 2010 17:43:17 +0100
Message-ID: <1287506597.1720.1691.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@o-hand.com
Subject: Re: qemu-arm broke after Ubuntu 10.04 libc upgrade
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Oct 2010 16:43:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-10-18 at 16:40 -0700, Joe Sauer wrote:
> A few days ago my Ubuntu 10.04 build machine pulled in this upgrade:
> 
> Upgrade: linux-libc-dev (2.6.32-24.42, 2.6.32-25.44),
> linux-image-2.6.32-24-generic-pae (2.6.32-24.42, 2.6.32-24.43)
> 
> and now I can't build binary locales -- I get these errors building
> glibc:
> 
> qemu-arm: relocation error: qemu-arm: symbol fcntl,  version GLIBC_2.0
> not defined in file libpthread.so.0 with link time reference
> qemu-arm: relocation error: qemu-arm: symbol unlink, version GLIBC_2.0
> not defined in file libc.so.6 with link time reference
> 
> Short of trying to back out that upgrade does anyone have an idea of a
> fix?

If you run a build with the -DDDv options you'll see the command that is
failing. Does this fail outright by itself if you just run the command?

Can you simply it any further and have it work?

Failing that try running this command under strace and see if those logs
show up anything useful?

Cheers,

Richard


