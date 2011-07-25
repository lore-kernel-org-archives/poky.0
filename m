Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 004D34C801BF
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 10:07:27 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Jul 2011 08:06:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,261,1309762800"; d="scan'208";a="31665578"
Received: from unknown (HELO helios.localnet) ([10.255.17.240])
	by orsmga001.jf.intel.com with ESMTP; 25 Jul 2011 08:06:58 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Date: Mon, 25 Jul 2011 16:06:57 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-8-generic-pae; KDE/4.6.2; i686; ; )
References: <cover.1311603837.git.paul.eggleton@linux.intel.com>
	<201107251549.07198.paul.eggleton@linux.intel.com>
	<9776A668-1465-4114-BAAF-F97645744D9C@dominion.thruhere.net>
In-Reply-To: <9776A668-1465-4114-BAAF-F97645744D9C@dominion.thruhere.net>
MIME-Version: 1.0
Message-Id: <201107251606.57934.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 6/6] meta-yocto/conf/local.conf.sample: add rm_work example
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
X-List-Received-Date: Mon, 25 Jul 2011 15:07:28 -0000
Content-Type: Text/Plain;
  charset="windows-1252"
Content-Transfer-Encoding: 7bit

On Monday 25 July 2011 15:54:18 Koen Kooi wrote:
> I'd argue that people can turn it off if they encounter issues. And if the
> issue is a build failure, rm_work hasn't run on the f(l)ailing recipe
> anyway.

Well, I only wanted to ensure it was available for users to enable in the 
default config file; actually enabling rm_work by default should really be a 
wider (different?) discussion.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

