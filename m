Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 077C24C80097
	for <poky@pokylinux.org>; Wed,  9 Feb 2011 18:43:08 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1A0guRF008459;
	Thu, 10 Feb 2011 00:42:56 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 08272-04; Thu, 10 Feb 2011 00:42:52 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1A0glLo008453
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 10 Feb 2011 00:42:47 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4D532BF9.6080501@linux.intel.com>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
	<1297196798-23779-2-git-send-email-yanok@emcraft.com>
	<4D52D11C.50904@linux.intel.com> <4D531C1C.3020003@emcraft.com>
	<4D531D96.7060707@linux.intel.com> <4D532261.8090606@emcraft.com>
	<4D532562.9080403@linux.intel.com> <4D532693.9080908@emcraft.com>
	<4D532BF9.6080501@linux.intel.com>
Date: Thu, 10 Feb 2011 00:42:43 +0000
Message-ID: <1297298563.20543.1487.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@pokylinux.org, Ilya Yanok <yanok@emcraft.com>
Subject: Re: [PATCH 2/3] u-boot: add LIC_FILES_CHKSUM
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
X-List-Received-Date: Thu, 10 Feb 2011 00:43:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-09 at 16:06 -0800, Darren Hart wrote:
> On 02/09/2011 03:43 PM, Ilya Yanok wrote:
> > Hi Darren,
> >
> > 10.02.2011 2:38, Darren Hart wrote:
> >> Hrm, this appears to be a problem on my end - I sent email from a build
> >> system which I thought was configured properly, the mail did make it to
> >> me... but I don't see it on the archives either. Thanks for pointing
> >> that out.
> >>
> >> The patches are the top two here:
> >>
> >> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/uboot
> >
> > Thanks! So the policy is "LIC_FILES_CHKSUM should be near SRC_URI", right?
> 
> Well, Gary and I agree on that, but I haven't heard an official 
> statement regarding this. It certainly seems to me to be the only 
> maintainable way to do it.
> 
> Richard, any thoughts?

I agree that the two are very linked and should generally stick
together.

Cheers,

Richard




