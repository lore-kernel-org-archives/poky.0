Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id CA0DF4C800A2
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 09:05:07 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3IE5590013512;
	Mon, 18 Apr 2011 15:05:05 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 13382-03; Mon, 18 Apr 2011 15:05:01 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3IE4wKC013498
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 18 Apr 2011 15:04:59 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4DAC417D.8070601@mlbassoc.com>
References: <4D9F2423.7060900@mlbassoc.com>  <4DAC417D.8070601@mlbassoc.com>
Date: Mon, 18 Apr 2011 15:04:50 +0100
Message-ID: <1303135490.5518.124.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] Control over when package init scripts are run
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
X-List-Received-Date: Mon, 18 Apr 2011 14:05:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-04-18 at 07:49 -0600, Gary Thomas wrote:
> On 04/08/2011 09:05 AM, Gary Thomas wrote:
> > The script /etc/rcS.d/S98configure is run on the first boot only
> > to process any postponed package post-install scripts. The default
> > position of this (98 == last) can be wrong, so let the distribution
> > set this (just a matter of ?= assignment). This patch also removes
> > some slugos stuff and extends the flexibility to systems which use
> > RPM packaging as well.
> >
> > Tested on my PowerPC router, running as S00configure - works a treat.
> >
> 
> What about this patch?  It's been 10 days - no discussion.

Sorry, many of us were travelling for Collab/ELC and it was the Yocto
1.0 launch there. I'm trying to get through my backlog now :)

> Note: the patch has no effect on normal operation, it just lets a user
> or distribution control when the package init scripts are run (and then
> this is only on the initial boot)
> 
> Note 2: this is a case where I can't override this behaviour in my local
> layers, so a core change is required.

I'm ok with the patch but could you rename the variable to something
generic like POSTINSTALL_INITPOSITION please?

Cheers,

Richard


