Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8FEB44C811FF
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 08:12:21 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Jan 2011 06:12:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,358,1291622400"; d="scan'208";a="879683725"
Received: from unknown (HELO helios.localnet) ([10.255.16.89])
	by fmsmga001.fm.intel.com with ESMTP; 21 Jan 2011 06:12:20 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Fri, 21 Jan 2011 14:12:17 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-24-generic-pae; KDE/4.5.1; i686; ; )
MIME-Version: 1.0
Message-Id: <201101211412.17811.paul.eggleton@linux.intel.com>
Subject: Database support - MySQL, PostgreSQL
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
X-List-Received-Date: Fri, 21 Jan 2011 14:12:21 -0000
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

I notice we don't build MySQL or PostgreSQL in Poky. The Qt4 packages I'm 
bringing across from meta-openembedded enable the Qt plugins for these, and 
there's some argument for that being a useful thing. However to do so would of 
course mean pulling in those two databases as well.

Is this something we want to consider for 1.0?

Cheers,
Paul

