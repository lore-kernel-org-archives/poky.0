Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D28874C80039
	for <poky@pokylinux.org>; Mon, 29 Nov 2010 04:28:07 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 29 Nov 2010 02:28:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,275,1288594800"; d="scan'208";a="631151581"
Received: from unknown (HELO helios.localnet) ([10.255.16.11])
	by fmsmga002.fm.intel.com with ESMTP; 29 Nov 2010 02:28:06 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Mon, 29 Nov 2010 10:28:04 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-22-generic-pae; KDE/4.5.1; i686; ; )
References: <cover.1290423211.git.paul.eggleton@intel.com>
	<201011221718.57086.paul.eggleton@intel.com>
	<1290955300.27143.241.camel@rex>
In-Reply-To: <1290955300.27143.241.camel@rex>
MIME-Version: 1.0
Message-Id: <201011291028.04628.paul.eggleton@linux.intel.com>
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PATCH 3/3] qemu: fix failure to find zlib header files during configure
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
X-List-Received-Date: Mon, 29 Nov 2010 10:28:08 -0000
Content-Type: Text/Plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit

On Sunday 28 November 2010 14:41:40 Richard Purdie wrote:
> I've updated the patch and also added a header to the patch indicating
> what problem it solves and why its there. Please try and ensure you add
> that next time as it really helps when you look at the patch again 12
> months later and wonder what it does!

That's a good point, but actually Joshua already mentioned this and that's why in the (revised) posted patch you're replying to you'll see there is a note at the top of the source patch explaining what it does. ;)

Of course I will endeavour to include this on all future source patches (and mark revised patches more clearly when posting to the list).

Cheers,
Paul

