Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3DFCA4C81199
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 06:46:52 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB7CkpkF003090;
	Tue, 7 Dec 2010 12:46:51 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02099-10; Tue,  7 Dec 2010 12:46:47 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB7CkhmH003013
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 7 Dec 2010 12:46:43 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <201012061606.45790.paul.eggleton@linux.intel.com>
References: <201012031634.56033.paul.eggleton@linux.intel.com>
	<1291414305.14277.2746.camel@rex>
	<201012061606.45790.paul.eggleton@linux.intel.com>
Date: Tue, 07 Dec 2010 12:46:36 +0000
Message-ID: <1291725996.11475.22.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: sstate status
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
X-List-Received-Date: Tue, 07 Dec 2010 12:46:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Paul,

On Mon, 2010-12-06 at 16:06 +0000, Paul Eggleton wrote:
> On Friday 03 December 2010 22:11:45 Richard Purdie wrote:
> > I notice a number of patches in your branches which shouldn't be needed
> > if we use the two patches at the head of: 
> > 
> > http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=rpurdie/tweaks2
> > 
> > Could you please test using those two changes, or let me know if those
> > changes cause problems.
> 
> I just tested with your branch; it definitely obviates the need to
> exclude large amounts of variables, however BB_TASKHASH is still being
> included in the hash and this causes many mismatches.

Agreed, I'll take that patch on its own, I just want to move carefully
to the end result.

Can you rebase your sstate branch onto master, pull in the above changes
not already in master and lets see where we are?

Cheers,

Richard


