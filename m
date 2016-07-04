Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3E5FE00CD2; Mon,  4 Jul 2016 06:31:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp485.redcondor.net (smtp485.redcondor.net [208.80.204.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98E80E00CBE
	for <poky@yoctoproject.org>; Mon,  4 Jul 2016 06:31:02 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20160704133059844_0485;
	Mon, 04 Jul 2016 13:30:59 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=56743 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bK3zP-0003Ea-1G; Mon, 04 Jul 2016 09:32:43 -0400
Date: Mon, 4 Jul 2016 09:29:59 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAMKF1soWb4UKJ6_5MZrxyRgu0miuAFeDC=QZ6xDsPeNpPuM24A@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1607040929080.10714@localhost.localdomain>
References: <alpine.LFD.2.20.1607040639330.6324@localhost.localdomain>
	<CAMKF1soWb4UKJ6_5MZrxyRgu0miuAFeDC=QZ6xDsPeNpPuM24A@mail.gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] meta-yocto: Delete PREFERRED_VERSION for obsolete version of U-Boot.
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
X-List-Received-Date: Mon, 04 Jul 2016 13:31:06 -0000
Content-Type: text/plain; charset=US-ASCII

On Mon, 4 Jul 2016, Khem Raj wrote:

> On Mon, Jul 4, 2016 at 3:47 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >
> > The OE recipe for U-Boot v2013.07 was deleted in 2014, so remove this
> > reference to it.
> >
> > Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> >
> > ---
> >
> > diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> > index f3ad12d..1e7de09 100644
> > --- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> > +++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> > @@ -22,7 +22,6 @@ XSERVER ?= "xserver-xorg \
> >              xf86-input-evdev \
> >              xf86-video-fbdev"
> >
> > -PREFERRED_VERSION_u-boot ?= "v2013.07%"
>
> while this is ok, I wonder if the new defaults work for this board ?

  i'm planning on testing a build for this later today, i can verify
that it at least compiles.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


