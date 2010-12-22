Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id F097B4C80050
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 05:35:05 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Dec 2010 03:35:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,212,1291622400"; d="scan'208";a="639255167"
Received: from unknown (HELO [10.255.16.69]) ([10.255.16.69])
	by fmsmga002.fm.intel.com with ESMTP; 22 Dec 2010 03:35:04 -0800
From: Joshua Lock <josh@linux.intel.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
In-Reply-To: <9DA5872FEF993D41B7173F58FCF6BE9405196335@orsmsx504.amr.corp.intel.com>
References: <cover.1292430240.git.josh@linux.intel.com>
	<a8b8557e4cb34b594bb620eb276bcaf7a8e0a8e3.1292430240.git.josh@linux.intel.com>
	<9DA5872FEF993D41B7173F58FCF6BE9405196335@orsmsx504.amr.corp.intel.com>
Date: Wed, 22 Dec 2010 11:34:58 +0000
Message-ID: <1293017698.13942.1.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 11/14] owl-video-widget: fix Makefile for super strict make 3.82
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
X-List-Received-Date: Wed, 22 Dec 2010 11:35:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-21 at 10:15 -0800, Kamble, Nitin A wrote:
> Hi Josh,  After including your patch, my build was still failing on the
> owl-video recipe. I noticed PR bump is missing in this commit.

Whoops, PR bump pushed.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


