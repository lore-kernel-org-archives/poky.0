Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 68A534C800A1
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 08:14:07 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Jul 2011 06:14:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,276,1309762800"; d="scan'208";a="32051252"
Received: from unknown (HELO helios.localnet) ([10.255.17.250])
	by azsmga001.ch.intel.com with ESMTP; 27 Jul 2011 06:13:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Holger Hans Peter Freyther <holger@freyther.de>
Date: Wed, 27 Jul 2011 14:13:58 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-8-generic-pae; KDE/4.6.2; i686; ; )
References: <4E3008DA.8090401@freyther.de>
	<201107271401.47256.paul.eggleton@linux.intel.com>
	<4E300DC0.9080507@freyther.de>
In-Reply-To: <4E300DC0.9080507@freyther.de>
MIME-Version: 1.0
Message-Id: <201107271413.58661.paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Wed, 27 Jul 2011 13:14:07 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Wednesday 27 July 2011 14:08:16 Holger Hans Peter Freyther wrote:
> THISDIR is set by the netbase_4.45.bbappend of meta-yocto, I assume that
> this should not be done and one should use the form you proposed
> throughout the layers?

Correct, and this has already been done in master.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

