Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 96AFF4C811E1
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 15:20:00 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASLJvPO021086;
	Sun, 28 Nov 2010 21:19:57 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20784-07; Sun, 28 Nov 2010 21:19:53 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASLJmaC021074
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 28 Nov 2010 21:19:51 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Paul Eggleton <paul.eggleton@intel.com>
In-Reply-To: <201011221718.57086.paul.eggleton@intel.com>
References: <cover.1290423211.git.paul.eggleton@intel.com>
	<e159ff2c957d06e1106b7ba221e7b36d3bc06fe9.1290423211.git.paul.eggleton@intel.com>
	<1290445511.1272.17129.camel@rex>
	<201011221718.57086.paul.eggleton@intel.com>
Date: Sun, 28 Nov 2010 14:41:40 +0000
Message-ID: <1290955300.27143.241.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PATCH 3/3] qemu: fix failure to find zlib header files during configure
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
X-List-Received-Date: Sun, 28 Nov 2010 21:20:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-22 at 17:18 +0000, Paul Eggleton wrote:
> On Monday 22 November 2010 17:05:11 Richard Purdie wrote:
> > Should this be $CFLAGS? I just wonder what the effect of injecting
> > BUILD_CFLAGS would be in the target case (qemu vs. qemu-native)?
> > 
> > In the native case CFLAGS == BUILD_CFLAGS.
> 
> Yes, actually the initial version of my patch used CFLAGS which works
> just fine (for qemu-native, I have to admit to not testing qemu), so
> I'm happy to for that to be changed.

Ok, I think it was me who suggested BUILD_CFLAGS to Joshua as I thought
this was a native only patch. Using CFLAGS in this context is fine.

I've updated the patch and also added a header to the patch indicating
what problem it solves and why its there. Please try and ensure you add
that next time as it really helps when you look at the patch again 12
months later and wonder what it does!

Cheers,

Richard


