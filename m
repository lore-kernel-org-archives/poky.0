Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 669294C81220
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 08:50:06 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 08 Dec 2010 06:50:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="865910644"
Received: from unknown (HELO helios.localnet) ([10.255.16.53])
	by fmsmga001.fm.intel.com with ESMTP; 08 Dec 2010 06:50:05 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Wed, 8 Dec 2010 14:50:01 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-23-generic-pae; KDE/4.5.1; i686; ; )
References: <201012081402.16308.paul.eggleton@linux.intel.com>
	<201012081406.20138.paul.eggleton@linux.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D515D0DFE@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D515D0DFE@shsmsx502.ccr.corp.intel.com>
MIME-Version: 1.0
Message-Id: <201012081450.01690.paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Wed, 08 Dec 2010 14:50:06 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Wednesday 08 December 2010 14:15:45 Tian, Kevin wrote:
> It's a little different from my case, though I also observed lots of packages
> rebuilt besides native ones. 

This is what I saw as well.

> How did you check the hash has been changed? In my case git-native
> simply overrides sstate package with same checksum.

I hacked together a shell script that looks for .siginfo files with the same package/arch/task but a different hash; if it finds these then it uses bitbake-diffsigs to compare them.

As for the sstate packages being overwritten, I assume this is happening in my case as I can see the packages being rebuilt in the bitbake output.

> Also I found that git-native.do_populate_setsecene is not scheduled at all,
> which may be the reason for the rebuilt, but I haven't got the cause.

Hmm, then it could be unrelated to the general problem.

You didn't see this behaviour with your tk/sstate branch I presume?

Cheers,
Paul

