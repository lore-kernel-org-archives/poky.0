Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 72EFF4C81110
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 17:24:38 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0KNQMXq009151; Thu, 20 Jan 2011 23:26:23 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id zT4MSVuDB4Qc; Thu, 20 Jan 2011 23:26:22 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0KNQEB5009087
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 20 Jan 2011 23:26:16 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Wolfgang Denk <wd@denx.de>
In-Reply-To: <20110120230537.5CF85D301D7@gemini.denx.de>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
	<1295296178-18590-5-git-send-email-aalonso@secretlab.ca>
	<4D3884A0.8030602@linux.intel.com>
	<20110120230537.5CF85D301D7@gemini.denx.de>
Date: Thu, 20 Jan 2011 23:24:14 +0000
Message-ID: <1295565854.14388.27977.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Adrian Alonso <aalonso@secretlab.ca>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 05/25] u-boot: disable -Os option not supported by gcc
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
X-List-Received-Date: Thu, 20 Jan 2011 23:24:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-21 at 00:05 +0100, Wolfgang Denk wrote:
> Dear Darren Hart,
> 
> In message <4D3884A0.8030602@linux.intel.com> you wrote:
> >
> > I ran into this in the recent u-boot_git.bb recipe I added. Rather than 
> > create a patch to the Makefile, I found it simpler to adding OPTFLAGS to 
> > the EXTRA_OEMAKE variable in the recipe:
> > 
> > EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS=''"
> > 
> > This negates the -Os in the Makefile.
> 
> What exactly is the reason that -Os is not supported?

Its not so much not supported, its that gcc 4.5 seems to have totally
broken it and for better or worse, we're on that gcc version. Until we
have a toolchain where the option works what do we do?

> Note that -Os makes is intentional in U-Boot, and omitting it may
> cause problems on a number of systems.
> 
> -O2 will create significantly larger code which does not fit into
> flash sectors on some systems; on other systems, the code will not
> fit any more in the size limitations given by the NAND loader.
> 
> In other works, -O2 breaks a number of systems.
> 
> I discourage doing this.

Well, its a case of "totally broken" or a risk of size issues on some
systems so I'm in favour of the latter. I agree the toolchain issues
need to be resolved and I'm sure they will sooner or later. I have
noticed upstream gcc don't seem to like the -Os option though and it
often seems to be the source of problems...

Cheers,

Richard


