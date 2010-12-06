Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B7D174C80A74
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 10:06:53 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Dec 2010 08:06:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,305,1288594800"; d="scan'208";a="633563362"
Received: from unknown (HELO helios.localnet) ([10.255.16.43])
	by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2010 08:06:52 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Mon, 6 Dec 2010 16:06:45 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-23-generic-pae; KDE/4.5.1; i686; ; )
References: <201012031634.56033.paul.eggleton@linux.intel.com>
	<1291414305.14277.2746.camel@rex>
In-Reply-To: <1291414305.14277.2746.camel@rex>
MIME-Version: 1.0
Message-Id: <201012061606.45790.paul.eggleton@linux.intel.com>
Subject: Re: sstate status
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
X-List-Received-Date: Mon, 06 Dec 2010 16:06:54 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Friday 03 December 2010 22:11:45 Richard Purdie wrote:
> I notice a number of patches in your branches which shouldn't be needed
> if we use the two patches at the head of: 
> 
> http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=rpurdie/tweaks2
> 
> Could you please test using those two changes, or let me know if those
> changes cause problems.

I just tested with your branch; it definitely obviates the need to exclude large amounts of variables, however BB_TASKHASH is still being included in the hash and this causes many mismatches.

Cheers,
Paul

