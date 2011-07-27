Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id AD9CF4C800A1
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 08:01:49 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Jul 2011 06:01:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,276,1309762800"; d="scan'208";a="32613215"
Received: from unknown (HELO helios.localnet) ([10.255.17.250])
	by orsmga001.jf.intel.com with ESMTP; 27 Jul 2011 06:01:48 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Holger Hans Peter Freyther <holger@freyther.de>
Date: Wed, 27 Jul 2011 14:01:47 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-8-generic-pae; KDE/4.6.2; i686; ; )
References: <4E3008DA.8090401@freyther.de>
	<CA073376-0D42-400B-95A7-1A8D420353C1@dominion.thruhere.net>
	<4E300B32.5000808@freyther.de>
In-Reply-To: <4E300B32.5000808@freyther.de>
MIME-Version: 1.0
Message-Id: <201107271401.47256.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: Another story of a non upstream user of poky
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
X-List-Received-Date: Wed, 27 Jul 2011 13:01:49 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Wednesday 27 July 2011 13:57:22 Holger Hans Peter Freyther wrote:
> thanks, the problem is with meta-yocto in this case, there is
> netbase_4.45.bbappend in there, so THISDIR is not what I think it is when
> using it, or such.

THISDIR should be correct at parse time; if not, something's wrong. After 
that, it won't of course. (Hence my use of := in my example; I suspect your 
use of =. is why your example didn't work).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

