Return-Path: <quentin.schulz@streamunlimited.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92A65E00D59; Fri, 31 May 2019 06:55:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [213.33.87.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bsmtp7.bon.at (bsmtp7.bon.at [213.33.87.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9DF9E00D52
	for <poky@yoctoproject.org>; Fri, 31 May 2019 06:55:39 -0700 (PDT)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp7.bon.at (Postfix) with ESMTPSA id 45FmDq09B7z5tlG;
	Fri, 31 May 2019 15:55:38 +0200 (CEST)
Date: Fri, 31 May 2019 15:55:37 +0200
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
To: richard.purdie@linuxfoundation.org
Message-ID: <20190531135537.vecrcb3rlqpaxq64@qschulz>
References: <20190531090953.shdqfcmj27ei4evb@qschulz>
	<f5917aa1aeba82bf983822060561e231ab8378fe.camel@linuxfoundation.org>
	<20190531133925.vn5xb2n6hpl73sup@qschulz>
	<0e978a095cb3397f06c0d67a44b592ab875aadf8.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <0e978a095cb3397f06c0d67a44b592ab875aadf8.camel@linuxfoundation.org>
User-Agent: NeoMutt/20180716
Cc: poky@yoctoproject.org
Subject: Re: opkg and BAD_RECOMMENDATIONS in thud 2.6.2
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
X-List-Received-Date: Fri, 31 May 2019 13:55:40 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Richard,

On Fri, May 31, 2019 at 02:46:07PM +0100, richard.purdie@linuxfoundation.org wrote:
> On Fri, 2019-05-31 at 15:39 +0200, Quentin Schulz wrote:
> > Hi Richard,
> > 
> > On Fri, May 31, 2019 at 02:35:30PM +0100, Richard Purdie wrote:
> > > On Fri, 2019-05-31 at 11:09 +0200, Quentin Schulz wrote:
> > > > CORE_IMAGE_EXTRA_INSTALL += "plop"
> > > > 
> > > > BAD_RECOMMENDATIONS += "bluez5"
> > > > 
> > > > with plop.bb being:
> > > > DESCRIPTION = "Plap"
> > > > LICENSE = "CLOSED"
> > > > 
> > > > RDEPENDS_${PN} += "bluez5"
> > > > 
> > > > do_install() {
> > > >         install -d ${D}${bindir}
> > > >         echo "plip" > ${D}${bindir}/plep
> > > > }
> > > 
> > > Do you mean RDEPENDS_${PN} += "bluez5" above or RRECOMMENDS?
> > > 
> > 
> > I mean RDEPENDS_${PN}. If it is RRECOMMENDS, then my understanding is
> > that it won't be packaged
> 
> That is not correct.
> 
> > , in that case BAD_RECOMMENDATIONS and
> > RRECOMMENDS works as expected.
> > 
> > However, BAD_RECOMMENDATIONS and RDEPENDS_${PN} (we have RRECOMMENDS
> > elsewhere but I think it does not really matter for the big picture
> > as
> > it gets "cancelled" by BAD_RECOMMENDATIONS anyway?) don't seem to
> > work
> > well together in that case.
> 
> RDEPENDS is a hard dependency. BAD_RECOMMENDATIONS only affects
> RRECOMMENDS, not RDEPENDS.
> 

Yes indeed.

Why is my package unable to be installed by opkg then?

Let me give more light on the actual setup.

Multiple images/multiple machines, some have bluetooth enabled, others
don't. Some recipes RRECOMMENDS bluez5 but it does not make sense to
have it packaged for the build of bluetooth-disabled machines/images,
that is the reason why bluez5 is a BAD_RECOMMENDATIONS.

However, some packages absolutely need bluez5 as RDEPENDS. RDEPENDS will
then take precedence over BAD_RECOMMENDATIONS and will be built. It
works. It really does from Yocto POV. Until opkg tries to install all
the packages, the bluez5 package is not found by opkg (it is there
though, at the same place as other ipk are, in the list of available
packages, etc.). Then the rootfs build fails with the log provided in
the original mail.

Why? RDEPENDS should take precedence over BAD_RECOMMENDATIONS, that is
what is expected and what is stated in the documentation. However, it
isn't the case for us in this case as opkg just does not find a bluez5
package even though it is there, where all others are, available in the
same list of packages.

With the patches given in the opening mail, Yocto build finished without
complaints.

Quentin
-- 
StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
quentin.schulz@streamunlimited.com, www.streamunlimited.com

