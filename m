Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9869DE00DC9; Tue,  5 Jul 2016 09:44:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 208 seconds by postgrey-1.32 at yocto-www;
	Tue, 05 Jul 2016 09:44:53 PDT
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2304BE00D8F
	for <poky@yoctoproject.org>; Tue,  5 Jul 2016 09:44:53 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20160705164122532_0685;
	Tue, 05 Jul 2016 09:41:22 -0700
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [99.240.204.5] (port=46592 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bKTRE-0004tK-Gp; Tue, 05 Jul 2016 12:43:08 -0400
Date: Tue, 5 Jul 2016 12:40:24 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAMKF1spr5ieFwHXJL_SnUNJDUk7hmQTDM1c5xxJ20A12pABikQ@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1607051239420.6050@localhost.localdomain>
References: <alpine.LFD.2.20.1607040639330.6324@localhost.localdomain>
	<CAMKF1soWb4UKJ6_5MZrxyRgu0miuAFeDC=QZ6xDsPeNpPuM24A@mail.gmail.com>
	<alpine.LFD.2.20.1607050616200.21917@localhost.localdomain>
	<CAMKF1spr5ieFwHXJL_SnUNJDUk7hmQTDM1c5xxJ20A12pABikQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 05 Jul 2016 16:44:57 -0000
Content-Type: text/plain; charset=US-ASCII

On Tue, 5 Jul 2016, Khem Raj wrote:

> On Tue, Jul 5, 2016 at 3:17 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> > On Mon, 4 Jul 2016, Khem Raj wrote:
> >
> >> On Mon, Jul 4, 2016 at 3:47 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >> >
> >> > The OE recipe for U-Boot v2013.07 was deleted in 2014, so remove this
> >> > reference to it.
> >> >
> >> > Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> >> >
> >> > ---
> >> >
> >> > diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> >> > index f3ad12d..1e7de09 100644
> >> > --- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> >> > +++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> >> > @@ -22,7 +22,6 @@ XSERVER ?= "xserver-xorg \
> >> >              xf86-input-evdev \
> >> >              xf86-video-fbdev"
> >> >
> >> > -PREFERRED_VERSION_u-boot ?= "v2013.07%"
> >>
> >> while this is ok, I wonder if the new defaults work for this board ?
> >
> >   still haven't tried to boot this yet, but given that the v2013.07
> > version of u-boot was removed back in (it seems) 2014, are you
> > suggesting no one has tried to build for this YP reference board for
> > two years? that would seem a bit ... odd.
> >
>
> there is meta-fsl-ppc and folks may have used that.

  that may be, but since the mpc8315e-rdb is the powerpc yocto
reference board, should it not build with only meta-yocto* layers?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


