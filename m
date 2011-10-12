Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E68FE005BB
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 05:36:53 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Oct 2011 05:36:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,334,1315206000"; d="scan'208";a="72715318"
Received: from unknown (HELO helios.localnet) ([10.252.120.213])
	by fmsmga001.fm.intel.com with ESMTP; 12 Oct 2011 05:36:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 12 Oct 2011 13:36:51 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-11-generic-pae; KDE/4.6.5; i686; ; )
References: <cover.1318403772.git.dexuan.cui@intel.com>
	<1865303E0DED764181A9D882DEF65FB6D23164EA25@shsmsx502.ccr.corp.intel.com>
	<20111012121249.GO27073@jama.jama.net>
In-Reply-To: <20111012121249.GO27073@jama.jama.net>
MIME-Version: 1.0
Message-Id: <201110121336.51474.paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 1/1] xserver-xf86-dri-lite: rename it to xserver-xorg
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
X-List-Received-Date: Wed, 12 Oct 2011 12:36:53 -0000
Content-Type: Text/Plain;
  charset="iso-8859-15"
Content-Transfer-Encoding: 7bit

On Wednesday 12 October 2011 13:12:50 Martin Jansa wrote:
> Maybe it's because of extra
> --enable-dga which is by default disabled in xserver-xorg-common, but
> maybe we can enable it by default and keep it disabled only for
> xserver-xorg-lite as in attached patch (which would need PR bump too).

I meant to ask about this earlier - do we really still need DGA? Last I heard, 
and even that was some years ago, DGA was pretty ancient and the advice was it 
should no longer be used.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

