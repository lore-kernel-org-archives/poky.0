Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A202E00CDC; Tue,  7 Jun 2016 19:04:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B91BE00CD3
	for <poky@yoctoproject.org>; Tue,  7 Jun 2016 19:04:36 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga101.jf.intel.com with ESMTP; 07 Jun 2016 19:04:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,436,1459839600"; d="scan'208";a="117951045"
Received: from ntjioe-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.211])
	by fmsmga004.fm.intel.com with ESMTP; 07 Jun 2016 19:04:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 08 Jun 2016 14:04:25 +1200
Message-ID: <7594751.4jX4A9SZEL@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.5.5-201.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <20160602094012.GA11730@pek-khao-d1>
References: <1464853867-111723-1-git-send-email-kexin.hao@windriver.com>
	<CAHiDW_GmskgusdR6wuGwnUtoKTwh1bQq0ZjCFyJ0c+xexei4Fw@mail.gmail.com>
	<20160602094012.GA11730@pek-khao-d1>
MIME-Version: 1.0
Subject: Re: [PATCH] yocto-bsps: u-boot: Search for rootfs partitions on both SD and eMMC
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 08 Jun 2016 02:04:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thu, 02 Jun 2016 17:40:12 Kevin Hao wrote:
> On Thu, Jun 02, 2016 at 11:57:25AM +0300, Jussi Kukkonen wrote:
> > > +Upstream-Status: Inappropriate [not author]
> > > +
> > > +Signed-off-by: Jussi Laako <jussi.laako@linux.intel.com>
> > > +[Kevin: Add the Upstream-Status tag]
> > 
> > I realise there are cases when upstreaming is not a good choice but ... I
> > don't think this was what Saul was hoping for when he recommended
> > upstreaming and asked for an Upstream-Status the first time this patch
> > was sent.
> 
> I only saw that Saul asked to add the Upstream-Status tag in the patch in
> order to be compatible with the yocto requirement. I didn't noticed that he
> also asked to submit this patch to upstream.
> 
> For upstreaming:
> 1) This is not a patch from me.
> 2) The macro DEFAULT_MMC_TI_ARGS is also used by other TI boards. Some
> boards may not have the mmc 1 device at all. So this change makes no sense
> to these boards.
> 3) We have many ways to overwrite the default value of "finduuid" such as
>    (boot.scr, uEnv.txt). The default env for this board is already very
>    complex, I don't like to make it even more complex.
> 
> Give the above reasons, I am fine to integrate this patch to yocto-bsps for
> our convenient. But I will not take the responsibility to upstreaming it.

I hadn't realised until I checked, but we do actually officially list 
"Inappropriate [not author]" as a reason that can be given, so as things stand 
right now officially there's nothing wrong with using this status.

I don't think that's ideal though. I'm not suggesting requiring submitters to 
take responsibility for upstreaming the patch, but I think we do need a better 
distinction between "this patch isn't appropriate to be sent upstream [for 
this reason relating to the patch itself]" and "this patch looks like it could 
go upstream if someone took the responsibility of doing it in the future". It 
would be nice if when scanning through for patches for upstreaming at least on 
the first pass we could filter out the "Inappropriate" ones without filtering 
out patches that may in fact be appropriate for upstreaming based on the patch 
content alone.

I wonder if it's time to revisit our Upstream-Status values and check if we 
want to do an overhaul - besides the above I've always felt that "Denied" was 
poorly named and I know "Pending" has raised some complaints about being too 
vague also.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

