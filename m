Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 895074C80AA9
	for <poky@pokylinux.org>; Tue,  1 Mar 2011 10:24:12 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Mar 2011 08:24:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,248,1297065600"; d="scan'208";a="892612132"
Received: from unknown (HELO helios.localnet) ([10.255.17.4])
	by fmsmga001.fm.intel.com with ESMTP; 01 Mar 2011 08:24:06 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: Koen Kooi <koen@dominion.thruhere.net>
Date: Tue, 1 Mar 2011 16:24:06 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-25-generic-pae; KDE/4.6.0; i686; ; )
References: <cover.1298961777.git.xiaofeng.yan@windriver.com>
	<201103011023.58911.paul.eggleton@linux.intel.com>
	<34ADCD70-E17B-459F-88E7-D959B0DB4737@dominion.thruhere.net>
In-Reply-To: <34ADCD70-E17B-459F-88E7-D959B0DB4737@dominion.thruhere.net>
MIME-Version: 1.0
Message-Id: <201103011624.06798.paul.eggleton@linux.intel.com>
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PATCH 0/2] Add qt3 to poky
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
X-List-Received-Date: Tue, 01 Mar 2011 16:24:12 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Tuesday 01 March 2011 10:33:08 you wrote:
> And since there was never a qtopia for qt3 I highly doubt anyone is using
> qt3/e.

Well, you never know what people are doing behind closed doors. There was also 
once a version of SystemRescueCD that was using the then-current version of 
QtParted with Qt/Embedded 3.x to avoid including X. 

For our purposes though it's only for LSB at this stage, so embedded appears 
to be superfluous.

Cheers,
Paul

