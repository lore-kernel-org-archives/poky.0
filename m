Return-Path: <quentin.schulz@streamunlimited.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFAE2E00D5F; Thu, 25 Jul 2019 02:14:36 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1C89E00D4A
	for <poky@yoctoproject.org>; Thu, 25 Jul 2019 02:14:34 -0700 (PDT)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp7.bon.at (Postfix) with ESMTPSA id 45vRP50SRTz5tl9;
	Thu, 25 Jul 2019 11:14:33 +0200 (CEST)
Date: Thu, 25 Jul 2019 11:14:31 +0200
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
To: akuster808 <akuster808@gmail.com>
Message-ID: <20190725091431.44qkrjtqjvkpjkka@qschulz>
References: <20190611144648.30886-1-quentin.schulz@streamunlimited.com>
	<f827d3c0-2fab-2313-1666-3d3375abec53@gmail.com>
	<20190612072545.lbcz5swovdswmcly@qschulz>
	<20190701153545.l7d6zo5gp5q526ds@qschulz>
MIME-Version: 1.0
In-Reply-To: <20190701153545.l7d6zo5gp5q526ds@qschulz>
User-Agent: NeoMutt/20180716
Cc: poky@yoctoproject.org, andriy.danylovskyy@streamunlimited.com
Subject: Re: [thud] [PATCH 0/2] opkg and BAD_RECOMMENDATIONS in thud 2.6.2
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
X-List-Received-Date: Thu, 25 Jul 2019 09:14:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,
   
On Mon, Jul 01, 2019 at 05:35:45PM +0200, Quentin Schulz wrote:
> Hi all,
> 
> On Wed, Jun 12, 2019 at 09:25:45AM +0200, Quentin Schulz wrote:
> > Hi Armin,
> > 
> > On Tue, Jun 11, 2019 at 10:24:20AM -0700, akuster808 wrote:
> > > 
> > > 
> > > On 6/11/19 7:46 AM, Quentin Schulz wrote:
> > [...]
> > > > I took me a while to find out that it's an issue with opkg itself and
> > > > nothing could be done in Yocto to fix it but I found the three following
> > > > patches in yocto-2.7:
> > > >
> > > > https://git.yoctoproject.org/cgit.cgi/poky/commit/?id=d8e12f2bfc4deaa0dc7530cf3af905e18e8037f6
> > > > https://git.yoctoproject.org/cgit.cgi/poky/commit/?id=c76c50df6498d85e7a6254002ff8f5e0ef3e67f7
> > > > https://git.yoctoproject.org/cgit.cgi/poky/commit/?id=5bcb626cf49d2295ccca45d6fc7e1617cca932d6
> > > 
> > > You mentioned 3 git commits but i only see 2 patches on the list.
> > > 
> > > please clarify.
> > > 
> > 
> > Ugh, yes. Sorry :)
> > 
> > These patches are the outcome of a discussion with Richard Purdie[1]
> > where he suggested that the upgrade commit is probably not a backport
> > candidate so I just went by it and removed it.
> > 
> 
> Kindly pinging so that this patch does not get lost at the bottom of the
> inbox :)
> 

I haven't seen the patches in thud or thud-next nor in the latest series
of patches to be reviewed for thud and there isn't an ongoing discussion
on those two patches, so kindly pinging.

Let me know if there's anything I can do,
Quentin
-- 
StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
quentin.schulz@streamunlimited.com, www.streamunlimited.com

