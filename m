Return-Path: <paul.eggleton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F30D4C80052
	for <poky@pokylinux.org>; Tue, 23 Nov 2010 08:54:21 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Nov 2010 06:54:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,242,1288594800"; d="scan'208";a="576736640"
Received: from unknown (HELO helios.localnet) ([10.255.16.147])
	by orsmga002.jf.intel.com with ESMTP; 23 Nov 2010 06:54:19 -0800
From: Paul Eggleton <paul.eggleton@intel.com>
Organization: Intel Corporation
To: poky@pokylinux.org
Date: Tue, 23 Nov 2010 14:54:15 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-22-generic-pae; KDE/4.5.1; i686; ; )
MIME-Version: 1.0
Message-Id: <201011231454.15813.paul.eggleton@intel.com>
Subject: sstate environment variable whitelist
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
X-List-Received-Date: Tue, 23 Nov 2010 14:54:22 -0000
Content-Type: Text/Plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

I'm taking a look into the sstate functionality. Looking at the changes Kevin has made in his tk/sstate branch and the environments my own two systems (Fedora 14 & Kubuntu 10.10) I note that there are still quite a lot of variables that are not whitelisted out. The question is do we expect to whitelist out absolutely all environment variables we don't care about on as many possible host distributions as possible? Or do we only selectively whitelist out those that we expect to change frequently (those that point to PIDs, session IDs, usernames etc.)?

Cheers,
Paul
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


