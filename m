Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2175E4C80287
	for <poky@lists.pokylinux.org>; Sun, 21 Nov 2010 06:26:06 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oALCQ6ZL014707;
	Sun, 21 Nov 2010 12:26:06 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 14290-07; Sun, 21 Nov 2010 12:26:02 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oALCPuYq014701
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 21 Nov 2010 12:25:59 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4CE8EC19.6030103@mlbassoc.com>
References: <4CE8EC19.6030103@mlbassoc.com>
Date: Sun, 21 Nov 2010 12:25:37 +0000
Message-ID: <1290342337.1272.15331.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: meta-toolchain-sdk
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
X-List-Received-Date: Sun, 21 Nov 2010 12:26:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2010-11-21 at 02:53 -0700, Gary Thomas wrote:
> I just did a build of the SDK using a fairly recent tree (from 2010-11-17).
> I was surprised to find the resulting tarball stored in my home directory,
> not tmp/deploy/sdk!
> 
> Is this expected?  When/why was this change made?
> 
> Just curious...

There has been no change with the effect, it should be tmp/deploy/sdk as
always. Was anything placed into the sdk directory? This sounds a little
odd/worrying if it has changed...

Cheers,

Richard



