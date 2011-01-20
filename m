Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id AFC0D4C81110
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 06:06:18 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Jan 2011 04:06:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,350,1291622400"; d="scan'208";a="698749471"
Received: from unknown (HELO helios.localnet) ([10.255.16.99])
	by orsmga001.jf.intel.com with ESMTP; 20 Jan 2011 04:06:15 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: Koen Kooi <koen@dominion.thruhere.net>
Date: Thu, 20 Jan 2011 12:06:13 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-24-generic-pae; KDE/4.5.1; i686; ; )
References: <cover.1295282922.git.paul.eggleton@linux.intel.com>
	<201101191251.41864.paul.eggleton@linux.intel.com>
	<F6BAAAE9-5327-4555-9957-64DCCA436B8C@dominion.thruhere.net>
In-Reply-To: <F6BAAAE9-5327-4555-9957-64DCCA436B8C@dominion.thruhere.net>
MIME-Version: 1.0
Message-Id: <201101201206.14081.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/8] Add meta-toolchain-qte from OE
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
X-List-Received-Date: Thu, 20 Jan 2011 12:06:18 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

Koen,

Some questions relating to qt4 in meta-openembedded:

 * I notice qt4.inc specifies -embedded in the configure command line and then 
qt4-x11-free adds -no-embedded. Is it really a good idea to be specifying -
embedded and -no-embedded at the same time?

 * Do we need to pull in sqlite 2.x? I assume you have some specific use 
cases... ?

Thanks,
Paul

