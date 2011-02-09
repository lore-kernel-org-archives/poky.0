Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 408854C80053;
	Wed,  9 Feb 2011 05:13:13 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p19BD3l5031369;
	Wed, 9 Feb 2011 11:13:03 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31160-05; Wed,  9 Feb 2011 11:12:59 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p19BCwNW031363
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 9 Feb 2011 11:12:58 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <cover.1297232160.git.bruce.ashfield@windriver.com>
References: <cover.1297232160.git.bruce.ashfield@windriver.com>
Date: Wed, 09 Feb 2011 11:12:57 +0000
Message-ID: <1297249977.1395.6323.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/1] linux-yocto/stable: streamline BSP processing
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
X-List-Received-Date: Wed, 09 Feb 2011 11:13:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Bruce,

On Wed, 2011-02-09 at 01:22 -0500, Bruce Ashfield wrote:
> The subject is a bit deceiving, since the 'streamlining' that I've been
> working on for BSP / external board building for a while, actually
> solves a lot of the SRCREV/race conditions that we've been seeing.
> 
> With the new fetcher and some factoring of the code, I've been able
> to delete 99% of the anonymous python and simply the processing
> for new BSPs.
> 
> To create a BSP against the yocto kernels all one must do is put
> the variable YOCTO_KERNEL_EXTERNAL_BRANCH and indicate the branch
> name that should be used. The tools and processing does the rest.
> 
> I built all existing boards, and bootstrapped a BSP against the
> stable and devel yocto kernels while testing this. Everything
> worked well.
> 
> Darren: I haven't touched the preempt_rt recipes (yet), but we
> can streamline them as well.
> 
> This is the first step in some other refactoring and cleanups for
> easier inclusion of the yocto kernel parts, but we'll let this
> soak first before stacking more changes on top.

Looks good, nice to see this cleaning up, thanks! :)

Cheers,

Richard


