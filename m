Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 805FF4C81146
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 19:57:42 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jan 2011 17:57:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,383,1291622400"; d="scan'208";a="881367779"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 26 Jan 2011 17:57:41 -0800
Date: Thu, 27 Jan 2011 10:01:12 +0800
From: Yu Ke <ke.yu@intel.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Message-ID: <20110127020112.GB31432@kyu3-hedt>
References: <cover.1296008816.git.ke.yu@intel.com>
	<5eb33f8529e5b56387f7c51f11e50d3c2b031370.1296008816.git.ke.yu@intel.com>
	<10A1EBA3-1693-4FED-8255-CBF6C7804357@dominion.thruhere.net>
	<339D2639-AAF5-4990-813F-53D3B05326A7@dominion.thruhere.net>
MIME-Version: 1.0
In-Reply-To: <339D2639-AAF5-4990-813F-53D3B05326A7@dominion.thruhere.net>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky <poky@yoctoproject.org>
Subject: Re: [PATCH 2/2] xf86-video-omapfb: upgrade to 044617665d6737f4909aab96
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
X-List-Received-Date: Thu, 27 Jan 2011 01:57:42 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Jan 26, 13:50, Koen Kooi wrote:
> 
> Op 26 jan 2011, om 09:48 heeft Koen Kooi het volgende geschreven:
> 
> > That revision is buggy, using it disables the framebuffer:
> > 
> > [   34.354583] omapdss DISPC error: timeout waiting for EVSYNC
> > [   34.456146] omapdss DISPC error: timeout waiting for EVSYNC
> 
> Since I was already working on this, I'll give a summary of what I found out after debugging this with upstream:
> 
> * The tv-out gets added last and the driver tries to reconfigure dvi to TV resolutions, which fails, fix: http://dominion.thruhere.net/git/cgit.cgi/xf86-video-omapfb/commit/?h=test&id=05efb061f1945425d214ff6b6050883e6d8633bf
> 
> * The new DSS mode breaks XV, so force plain mode: http://dominion.thruhere.net/git/cgit.cgi/xf86-video-omapfb/commit/?id=d28a36bbadc360a9409bf9832f1d4171d7c33dad
> 
> * Picture is garbled after switching resolutions, fix: http://dominion.thruhere.net/git/cgit.cgi/xf86-video-omapfb/commit/?h=test&id=cbae688d7df59938ccb4af534ec2ff75cbbe9221
> 
> * Virtual size too big, fix: http://dominion.thruhere.net/git/cgit.cgi/xf86-video-omapfb/commit/?h=test&id=031516123d25a12808ab4e56ea8deda74946cdcd
> 
> The problem is that modeswitching isn't working properly in plain mode, so you can either get working modeswitching or working Xv with the above patches.
> 
> But looking closer, the SRCREV that's currently there (6cff996abcb305460e9fa2c75569b776f099c9d5) is broken as well.
> 
> regards,
> 
> Koen

Koen, Thanks for the fix. Since I don't have OMAP H/W in hand, so no validation is done yet. This should be improved in the future. Again, thanks for your validatin and quick fix. I will include your fix as patch and resubmit the recpies upgrade.

Regards
Ke

> 
> 
> > Op 26 jan 2011, om 03:29 heeft poky-bounces@yoctoproject.org het volgende geschreven:
> > 
> >> From: Yu Ke <ke.yu@intel.com>
> >> 
> >> Signed-off-by: Yu Ke <ke.yu@intel.com>
> >> ---
> >> .../conf/distro/include/poky-default-revisions.inc |    2 +-
> >> 1 files changed, 1 insertions(+), 1 deletions(-)
> >> 
> >> diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
> >> index 8d98eef..a606889 100644
> >> --- a/meta/conf/distro/include/poky-default-revisions.inc
> >> +++ b/meta/conf/distro/include/poky-default-revisions.inc
> >> @@ -182,7 +182,7 @@ SRCREV_pn-xcb-proto ??= "d81ca233e98be8fa59e8c90d262c0516944c5a66"
> >> SRCREV_pn-xcb-proto-native ??= "d81ca233e98be8fa59e8c90d262c0516944c5a66"
> >> SRCREV_pn-xf86-video-intel ??= "87ea531c5dc5b39809395b277c330854aaaaf019"
> >> SRCREV_pn-xf86-video-intel-dri2 ??= "3dd7f0f9423bb891bc99cd3b77dc3d57e057a7ef"
> >> -SRCREV_pn-xf86-video-omapfb ??= "6cff996abcb305460e9fa2c75569b776f099c9d5"
> >> +SRCREV_pn-xf86-video-omapfb ??= "044617665d6737f4909aab96f91b06261dff05d2"
> >> SRCREV_pn-xf86-input-keyboard ??= "3e28d68b50d291938734e9684b8296ca864f3892"
> >> SRCREV_pn-xf86-input-mouse ??= "ea5cfe804e112f320f14ad896c7802d53551d3e6"
> >> SRCREV_pn-xf86-input-synaptics ??= "934bc0012f948c52aadc8eda912f7728fb7394a2"
> >> -- 
> >> 1.7.0.4
> >> 
> >> _______________________________________________
> >> poky mailing list
> >> poky@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/poky
> > 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

