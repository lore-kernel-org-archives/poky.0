Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id A14EB4C800A4
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 04:24:00 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Mar 2011 02:24:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,246,1297065600"; d="scan'208";a="395597196"
Received: from unknown (HELO helios.localnet) ([10.255.17.4])
	by azsmga001.ch.intel.com with ESMTP; 01 Mar 2011 02:23:59 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Tue, 1 Mar 2011 10:23:58 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-25-generic-pae; KDE/4.6.0; i686; ; )
References: <cover.1298961777.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1298961777.git.xiaofeng.yan@windriver.com>
MIME-Version: 1.0
Message-Id: <201103011023.58911.paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Tue, 01 Mar 2011 10:24:00 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Tuesday 01 March 2011 07:12:09 Xiaofeng Yan wrote:
> From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
> 
>   Packages qt3 from "OE" is needed by LSB Test Suite. So I add it to Poky.

If we're adding this solely for LSB compliance, do we need the "embedded" 
portions of Qt3 (i.e. qt3e.bbclass)? AFAICT the LSB documentation doesn't 
mention it explicitly and if we don't add it it's one less thing we have to 
support (I'm convinced it's not widely used in any case).

Cheers,
Paul

