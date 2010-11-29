Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id C52344C80FA4
	for <poky@pokylinux.org>; Mon, 29 Nov 2010 05:48:49 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oATBml3n031800;
	Mon, 29 Nov 2010 11:48:47 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31216-10; Mon, 29 Nov 2010 11:48:42 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oATBmW3l031794
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 29 Nov 2010 11:48:34 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <201011291028.04628.paul.eggleton@linux.intel.com>
References: <cover.1290423211.git.paul.eggleton@intel.com>
	<201011221718.57086.paul.eggleton@intel.com>
	<1290955300.27143.241.camel@rex>
	<201011291028.04628.paul.eggleton@linux.intel.com>
Date: Mon, 29 Nov 2010 03:48:17 -0800
Message-ID: <1291031297.14277.892.camel@rex>
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
X-List-Received-Date: Mon, 29 Nov 2010 11:48:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-29 at 10:28 +0000, Paul Eggleton wrote:
> On Sunday 28 November 2010 14:41:40 Richard Purdie wrote:
> > I've updated the patch and also added a header to the patch indicating
> > what problem it solves and why its there. Please try and ensure you add
> > that next time as it really helps when you look at the patch again 12
> > months later and wonder what it does!
> 
> That's a good point, but actually Joshua already mentioned this and
> that's why in the (revised) posted patch you're replying to you'll see
> there is a note at the top of the source patch explaining what it
> does. ;)
> 
> Of course I will endeavour to include this on all future source
> patches (and mark revised patches more clearly when posting to the
> list).

Sorry, I see it now. I must have got the two different versions confused
as the version I applied to my checkout didn't seem to have it :/

Cheers,

Richard



