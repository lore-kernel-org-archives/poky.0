Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 781AB4C80FA8
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 06:03:38 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Dec 2010 04:01:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,360,1288594800"; d="scan'208";a="363089284"
Received: from unknown (HELO [10.255.16.45]) ([10.255.16.45])
	by azsmga001.ch.intel.com with ESMTP; 17 Dec 2010 04:01:34 -0800
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
In-Reply-To: <4D0A94D0.3050309@intel.com>
References: <cover.1292516982.git.josh@linux.intel.com>
	<0e7de81fa0e7fb3dc908c85796ca740b399959e5.1292516982.git.josh@linux.intel.com>
	<4D0A94D0.3050309@intel.com>
Date: Fri, 17 Dec 2010 12:01:27 +0000
Message-ID: <1292587287.6483.1.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 7/8] gst-plugins: fix for make 3.82
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
X-List-Received-Date: Fri, 17 Dec 2010 12:03:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-16 at 14:38 -0800, Saul Wold wrote:
> On 12/14/2010 09:56 AM, Joshua Lock wrote:
> > Signed-off-by: Joshua Lock<josh@linux.intel.com>
> > ---
> >   .../gstreamer/gst-plugins-bad_0.10.20.bb           |    2 +-
> >   .../gstreamer/gst-plugins-base_0.10.30.bb          |    2 +-
> >   .../gstreamer/gst-plugins-good_0.10.25.bb          |    2 +-
> >   .../gstreamer/gst-plugins-ugly_0.10.16.bb          |    2 +-
> >   meta/recipes-multimedia/gstreamer/gst-plugins.inc  |    5 +++-
> >   .../gstreamer/gst-plugins/make-382.patch           |   25 ++++++++++++++++++++
> This patch is required for the current versions of the plugins.  Most 
> have this already fixed, can you please verify your patch and build.
> 
> I just built this and got manual patching, we may want to revert this one.

Whoops, my bad - I saw gst-plugins-base fail with a similar error to
what I was seeing on my laverne branch so just cherry-picked this patch
from said branch.

I have a patch that fixes this.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


