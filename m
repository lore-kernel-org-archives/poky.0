Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21499E006AD
	for <poky@yoctoproject.org>; Thu,  5 Jul 2012 09:12:09 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q65GC8X1001954;
	Thu, 5 Jul 2012 17:12:08 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 00976-04; Thu,  5 Jul 2012 17:12:04 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q65GC1fe001948
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 5 Jul 2012 17:12:02 +0100
Message-ID: <1341504720.19821.18.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>
Date: Thu, 05 Jul 2012 17:12:00 +0100
In-Reply-To: <4FF5B4EA.5000302@intel.com>
References: <cover.1341354357.git.raj.khem@gmail.com>
	<4FF5B4EA.5000302@intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [denzil][PATCH 0/9] bitbake fetch improvements backport to denzil
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
X-List-Received-Date: Thu, 05 Jul 2012 16:12:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-07-05 at 08:38 -0700, Scott Garman wrote:
> On 07/03/2012 03:31 PM, Khem Raj wrote:
> > On denzil bitbake was still trying to go out to internet for git repos
> > when BB_NO_NETWORK was set. This set of backports fix that issue
> > and now BB_NO_NETWORK works as expected
> 
> Hi Khem,
> 
> Denzil 1.2.1 is already in release candidate phase and going through QA. 
> I'm not sure if we can take this for 1.2.1, it may have to wait for 
> 1.2.2. Richard should probably weigh in here.

Its 1.2.2 material at this point but we should try and get things into
the branch sooner than later after release.

I am worried about this series introducing bugs. We did have some bugs
found in some of the series of fetcher changes I made in master.

Cheers,

Richard


