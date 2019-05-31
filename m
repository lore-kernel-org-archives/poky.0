Return-Path: <quentin.schulz@streamunlimited.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F30CE00A0C; Fri, 31 May 2019 06:39:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [213.33.87.19 listed in list.dnswl.org]
Received: from bsmtp7.bon.at (bsmtp7.bon.at [213.33.87.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FB45E009EA
	for <poky@yoctoproject.org>; Fri, 31 May 2019 06:39:27 -0700 (PDT)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp7.bon.at (Postfix) with ESMTPSA id 45Flt62Dftz5tl9;
	Fri, 31 May 2019 15:39:26 +0200 (CEST)
Date: Fri, 31 May 2019 15:39:25 +0200
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20190531133925.vn5xb2n6hpl73sup@qschulz>
References: <20190531090953.shdqfcmj27ei4evb@qschulz>
	<f5917aa1aeba82bf983822060561e231ab8378fe.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <f5917aa1aeba82bf983822060561e231ab8378fe.camel@linuxfoundation.org>
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
X-List-Received-Date: Fri, 31 May 2019 13:39:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Richard,

On Fri, May 31, 2019 at 02:35:30PM +0100, Richard Purdie wrote:
> On Fri, 2019-05-31 at 11:09 +0200, Quentin Schulz wrote:
> > CORE_IMAGE_EXTRA_INSTALL += "plop"
> > 
> > BAD_RECOMMENDATIONS += "bluez5"
> > 
> > with plop.bb being:
> > DESCRIPTION = "Plap"
> > LICENSE = "CLOSED"
> > 
> > RDEPENDS_${PN} += "bluez5"
> > 
> > do_install() {
> >         install -d ${D}${bindir}
> >         echo "plip" > ${D}${bindir}/plep
> > }
> 
> Do you mean RDEPENDS_${PN} += "bluez5" above or RRECOMMENDS?
> 

I mean RDEPENDS_${PN}. If it is RRECOMMENDS, then my understanding is
that it won't be packaged, in that case BAD_RECOMMENDATIONS and
RRECOMMENDS works as expected.

However, BAD_RECOMMENDATIONS and RDEPENDS_${PN} (we have RRECOMMENDS
elsewhere but I think it does not really matter for the big picture as
it gets "cancelled" by BAD_RECOMMENDATIONS anyway?) don't seem to work
well together in that case.

Quentin
-- 
StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
Fax: +43 1 667 20 02 4401
quentin.schulz@streamunlimited.com, www.streamunlimited.com

