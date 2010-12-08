Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id AC1784C8120C
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 05:31:40 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Dec 2010 03:31:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="865851834"
Received: from unknown (HELO helios.localnet) ([10.255.16.53])
	by fmsmga001.fm.intel.com with ESMTP; 08 Dec 2010 03:31:39 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Wed, 8 Dec 2010 11:31:36 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-23-generic-pae; KDE/4.5.1; i686; ; )
References: <201012031634.56033.paul.eggleton@linux.intel.com>
	<201012071636.55690.paul.eggleton@linux.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D515D0DC4@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D515D0DC4@shsmsx502.ccr.corp.intel.com>
MIME-Version: 1.0
Message-Id: <201012081131.37242.paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Wed, 08 Dec 2010 11:31:40 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Wednesday 08 December 2010 11:22:40 Tian, Kevin wrote:
> The weird behavior I saw yesterday is still there: lots of recipes (such as gzip-native) are
> rebuilt when I build poky-image-minimal, which however finally ends up to override my
> sstate cache with same checksums. 
> 
> If I end the build when it finished setscene stage, and then simply build tasks in the runqueue
> such as gzip-native, git-native, . It just succeeds by reusing sstate package.
> 
> Quite strange... Still look into it now.

Oops, it appears that I pushed the wrong branch to paule/sstate yesterday. I've re-pushed a new one which actually includes the variable whitelisting changes.

Sorry about that!

Cheers,
Paul

