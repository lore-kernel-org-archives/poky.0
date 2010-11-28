Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id D4C1D4C80039
	for <poky@lists.pokylinux.org>; Sun, 28 Nov 2010 15:19:27 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASLJQRC021031;
	Sun, 28 Nov 2010 21:19:26 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20784-04; Sun, 28 Nov 2010 21:19:22 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASLJF37021024
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 28 Nov 2010 21:19:18 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4CE408E8.2030102@mlbassoc.com>
References: <4CE408E8.2030102@mlbassoc.com>
Date: Sun, 28 Nov 2010 12:13:40 +0000
Message-ID: <1290946420.27143.49.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Noexec tasks?
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
X-List-Received-Date: Sun, 28 Nov 2010 21:19:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-11-17 at 09:55 -0700, Gary Thomas wrote:
> Messages like these are [fairly] new:
>    NOTE: Noexec task 3045 of 3117 (ID: 505, /local/poky-amltd/meta/recipes-devtools/gcc/gcc-cross_4.5.0.bb, do_package_write)
> I don't see that they add much (any?) value and just increase the
> noise.  For example, if I rerun 'bitbake some-image' which has N
> steps, I get N-2 of these followed by a couple of steps that actually
> do the work.  Pretty annoying when N is large (for most images, N is
> measured in thousands of steps)
> 
> Can these messages be suppressed?  Is there any good reason to show them?

They're meant to appear once, the first time a noexec task is "skipped"
in the same way the other running task X of Y messages appear. I found
the bug that was causing the to repeat all the time and will push a fix
which should make the messages much less annoying :).

Cheers,

Richard



