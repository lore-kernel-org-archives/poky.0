Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 95E034C80335
	for <poky@yoctoproject.org>; Thu, 19 May 2011 09:17:12 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4JEHBPL011151
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 19 May 2011 07:17:12 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 19 May 2011 07:17:11 -0700
Message-ID: <4DD52666.6050003@windriver.com>
Date: Thu, 19 May 2011 09:17:10 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4DD5239A.30404@mlbassoc.com>
In-Reply-To: <4DD5239A.30404@mlbassoc.com>
Subject: Re: RPM vs IPK
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
X-List-Received-Date: Thu, 19 May 2011 14:17:13 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 5/19/11 9:05 AM, Gary Thomas wrote:
> Building Poky for various targets, I see some striking differences
> based on the packaging.  I'm building for the beagleboard (RPM)
> and my own OMAP/3530 (IPK), so everything is the same for these
> packages (same compiler, architecture, etc), only the package
> method differs.  This was built on an otherwise idle box
> 4-way (Intel(R) Core(TM)2 Quad CPU    Q6600  @ 2.40GHz), with
>    BB_NUMBER_THREADS ?= "4"
>    PARALLEL_MAKE ?= "-j 4"
> 
> Each of these tests are a complete build of the package, with
> all dependencies already built.  For example, I use this sequence:
>    % bitbake perl
>    % bitbake perl -c clean
>    % rm sstate-cache/sstate-perl-arm*
>    % time bitbake perl
> 
> perl -      RPM                         IPK
>         real    12m15.520s          real    9m43.228s
>         user    5m42.988s           user    4m40.692s
>         sys     3m56.636s           sys     2m19.860s
> 
> eglibc     RPM                          IPK
>         real    32m19.984s          real    23m52.124s
>         user    15m32.732s          user    20m48.214s
>         sys     17m28.087s          sys     9m3.936s
> 
> Bottom line - it seems to take 20-30% longer to package via RPM.
> 
> I know there are reasons and tradeoffs for different packaging
> methods, but 30% extra?
> 

This matches my expectations for the most part.  RPM creates and processes a lot
more metadata then IPK.  IPK is well optimized for small systems, and certainly
I would advise someone generating a small system to use IPK.

For medium and (especially) large systems, RPM starts to give more abilities
that IPK due to the additional meta data.  This includes individual file type
information, file checksum generation and evaluation on install, sparse file
support, conflict detection and resolution [for multilib systems], ACID style
upgrade, repackaging abilities for rollback, etc..  (Some of the items for RPM
are not yet enabled in oe-core, but could be by individual developers.)

(I also wouldn't be surprised if we've got integration optimizations in the RPM
backend in oe-core that could help with those numbers.  The numbers seem to be
much worse on packages with large numbers of files, vs the typical package with
only a few to a hundred or so files.)

Downside of RPM for small systems is the Berkley DB and the amount of meta data.
 If you will be doing on-device upgrades the space required to handle the
berkley DB and related items is quite large..  Also many of the advanced
features available in RPM simple are not needed in small systems.

--Mark

