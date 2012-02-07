Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23860E0030B
	for <poky@yoctoproject.org>; Tue,  7 Feb 2012 03:39:53 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Feb 2012 03:39:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="104093745"
Received: from unknown (HELO helios.localnet) ([10.252.123.5])
	by azsmga001.ch.intel.com with ESMTP; 07 Feb 2012 03:38:51 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 07 Feb 2012 11:38:50 +0000
Message-ID: <7865396.XVNKqPiEta@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-15-generic-pae; KDE/4.8.0; i686; ; )
In-Reply-To: <7146402.Q3sl0gRNQ4@helios>
References: <cover.1326787792.git.shane.wang@intel.com>
	<3AB6CE7F274E534CAFD089D127A8A1FC0FCEDE9D@SHSMSX102.ccr.corp.intel.com>
	<7146402.Q3sl0gRNQ4@helios>
MIME-Version: 1.0
Subject: Re: [PATCH 1/1] meta-baryon: correct the SRC_URI for libgsm
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
X-List-Received-Date: Tue, 07 Feb 2012 11:39:53 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 06 February 2012 15:22:48 Paul Eggleton wrote:
> On Monday 06 February 2012 11:44:22 Wang, Shane wrote:
> > Resend.
> > 
> > Richard, or Paul, can anyone of you help to check in the patch for
> > meta-baryon?
> 
> Sorry Shane I missed this one.
> 
> I did just try accessing the "new" website (http://www.quut.com/gsm/) and it
> just times out - perhaps it is down at the moment? I feel a little
> uncomfortable changing to another URL that doesn't work...
> 
> I did find http://libgsm.sourcearchive.com, perhaps we could use this if the
> quut.com site is gone for good.

This morning Koen and I have been talking about the content of meta-baryon; it 
seems like we ought to be moving to libav instead of ffmpeg and since that's 
what pulled in libgsm (and faac) and these two shouldn't really be needed for 
Baryon anyway in the context of doing thumbnails in Mediatomb, we should be 
able to remove libgsm. I've entered bug #1965 to tidy this up.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

