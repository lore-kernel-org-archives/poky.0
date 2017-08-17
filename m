Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E025E00D24; Thu, 17 Aug 2017 00:47:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 314 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Aug 2017 00:47:45 PDT
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E60BE00B77
	for <poky@yoctoproject.org>; Thu, 17 Aug 2017 00:47:45 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v7H7gRYq017797
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Thu, 17 Aug 2017 08:42:28 +0100
Message-ID: <1502955747.13978.184.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>,
	poky@yoctoproject.org
Date: Thu, 17 Aug 2017 08:42:27 +0100
In-Reply-To: <20170817002540.27741-1-alejandro.hernandez@linux.intel.com>
References: <20170817002540.27741-1-alejandro.hernandez@linux.intel.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.11
	(dan.rpsys.net [192.168.3.1]);
	Thu, 17 Aug 2017 08:42:28 +0100 (BST)
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Subject: Re: [PATCH] genericx86-common.inc: Stop autoloading uvesa module at boot
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 17 Aug 2017 07:47:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-08-16 at 17:25 -0700, Alejandro Hernandez wrote:
> After commit e8b1c653946ef921b65d47e52aea0dc530ef4286, we started
> seeing
> errors like the following during boot:
> 
> uvesafb: failed to execute /sbin/v86d
> uvesafb: probe of uvesafb.0 failed with error -22
> uvesafb: vbe_init() failed with -22
> uvesafb: Getting VBE info block failed (eax=0x4f00, err=-2)
> 
> These were caused because the uvesa module was being loaded during
> boot.
> 
> Since genericx86-common.inc includes qemuboot-x86, the module also
> tries
> to be loaded on genericx86 MACHINES, this patch removes it when this
> is the
> case, getting rid of the errors.
> 
> [YOCTO #11879]
> 
> Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.c
> om>
> ---
>  meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 3 +++
>  1 file changed, 3 insertions(+)

No, we can't do this, sorry. I really dislike having any usage of
remove in the core code. The reason is that its near impossible to undo
a remove operation and if we need one, it suggests we really should
restructure something instead.

So please find a different way to fix this.

This commit message also doesn't really tell me why we need to stop
loading uvesa on genericx86.

Cheers,

Richard

