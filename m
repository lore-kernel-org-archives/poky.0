Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A77574C80052
	for <poky@yoctoproject.org>; Fri, 13 May 2011 05:17:31 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 May 2011 03:17:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,363,1301900400"; d="scan'208";a="746720456"
Received: from unknown (HELO helios.localnet) ([10.255.16.107])
	by orsmga001.jf.intel.com with ESMTP; 13 May 2011 03:17:30 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Fri, 13 May 2011 11:17:29 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-8-generic-pae; KDE/4.6.2; i686; ; )
References: <1305157370-3264-1-git-send-email-yanok@emcraft.com>
In-Reply-To: <1305157370-3264-1-git-send-email-yanok@emcraft.com>
MIME-Version: 1.0
Message-Id: <201105131117.29367.paul.eggleton@linux.intel.com>
Cc: Ilya Yanok <yanok@emcraft.com>, openembedded-core@lists.openembedded.org
Subject: Re: [RFC][PATCH] qt4: add target qmake to qt4-tools package
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
X-List-Received-Date: Fri, 13 May 2011 10:17:31 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

This exclusion of qmake of course comes from OE, and I'm not sure but I'm 
guessing the reason this was not installed is because qmake is already 
provided by the qmake2 package in OE. We don't have that currently in oe-core 
and the question is do we want to bring that over rather than simply 
installing it as part of qt4*tools?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

