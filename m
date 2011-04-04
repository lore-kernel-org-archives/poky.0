Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E46524C8026D
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 11:32:54 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Apr 2011 09:32:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,298,1299484800"; d="scan'208";a="623343219"
Received: from unknown (HELO helios.localnet) ([10.255.12.187])
	by orsmga002.jf.intel.com with ESMTP; 04 Apr 2011 09:32:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: Scott Garman <scott.a.garman@intel.com>
Date: Mon, 4 Apr 2011 17:32:48 +0100
User-Agent: KMail/1.13.5 (Linux/2.6.35-28-generic-pae; KDE/4.6.1; i686; ; )
References: <4D951B0B.3010503@intel.com> <1301679250.24596.293.camel@rex>
	<4D961E29.4070807@intel.com>
In-Reply-To: <4D961E29.4070807@intel.com>
MIME-Version: 1.0
Message-Id: <201104041732.48366.paul.eggleton@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Broken dependency behavior in master?
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
X-List-Received-Date: Mon, 04 Apr 2011 16:32:55 -0000
Content-Type: Text/Plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit

On Friday 01 April 2011 19:49:13 Scott Garman wrote:
> I've reproduced this now, multiple times, using builds from scratch,
> including the fact that reverting that commit fixes the the problem for me.

I can confirm this, even though on the face of it the patch should not cause 
any issues. 

I haven't completely isolated the cause yet, however the problem occurs in  
sstate_task_postfunc -> sstate_install -> docbook_sgml_dtd_sstate_postinst 
which oddly seems to be being merged into the do_populate_lic task. I'm not 
sure but I'm assuming that these sstate functions should not be being executed 
under these circumstances.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre (UK)

