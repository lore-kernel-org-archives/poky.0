Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96C7FE0044A
	for <poky@yoctoproject.org>; Tue,  6 Mar 2012 11:27:01 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Mar 2012 11:27:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="118315760"
Received: from unknown (HELO helios.localnet) ([10.252.123.138])
	by orsmga002.jf.intel.com with ESMTP; 06 Mar 2012 11:26:58 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 06 Mar 2012 19:26:56 +0000
Message-ID: <3919600.C6p42ZJ0so@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.0; i686; ; )
In-Reply-To: <4F564BBE.6030404@mlbassoc.com>
References: <4F5643EB.70909@mlbassoc.com> <4F564BBE.6030404@mlbassoc.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: How can a package I didn't ask for get included in my image?
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
X-List-Received-Date: Tue, 06 Mar 2012 19:27:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 06 March 2012 10:39:10 Gary Thomas wrote:
> On 2012-03-06 10:05, Gary Thomas wrote:
> > I'm trying to figure out why a particular package is ending up
> > in my final image. If I build something like this:
> > % bitbake my-image
> > If I then look, I find packages that were installed that I'm
> > never mentioning:
> > % grep firmware tmp/work/my-board/my-image/temp/log.do_rootfs
> > Installing linux-firmware-wl12xx
> > (0.0+git1+09c949f6d3196a7199eb2c7015bfa5d34ed723b5-r0) to root... so I
> > tried to figure out how this is getting in
> > % bitbake my-image -g
> > % grep firmware *.dot
> > ... comes up empty
> > 
> > To be fair, I had originally built this image with this in <my-board>.conf
> > MACHINE_EXTRA_RRECOMMENDS = " kernel-modules linux-firmware-wl12xx "
> > but that has since been removed. Somehow, it's ghost lingers on...
> > 
> > How can this be?
> > How can I get rid of it, short of a complete rebuild?
> > 
> > Thanks for any insight into this mystery.
> 
> Found it myself - the variable MACHINE_EXTRA_RRECOMMENDS was referenced
> by my core task, something like this:
>    RRECOMMENDS_task-my-distro-boot = "\
>      ${MACHINE_EXTRA_RRECOMMENDS} \
>    "
> I hadn't rebuilt that task, so the reference remained.  I'm still not
> sure why it didn't end up in the .dot graphs though.

The dot graphs produced by bitbake -g will include what's projected by the 
recipes, not already built packages; thus why after your change it no longer 
appeared in the graphs. The answer is not to effectively make changes to the 
tasks without bumping the task recipe's PR (or alternatively enable 
BasicHash).

FYI you can enable buildhistory (without enabling BUILDHISTORY_COMMIT if you 
don't need that) and this will produce some dependency graphs directly from 
the packages used to construct the rootfs. These graphs are more focused and 
thus can be a bit more useful when you're trying to figure out how a package 
got into your image; however producing them is part of do_rootfs so you have 
to go through the entire process of building the image in order to get them.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

