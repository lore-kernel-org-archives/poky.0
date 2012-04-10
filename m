Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F81BE0030B
	for <poky@yoctoproject.org>; Tue, 10 Apr 2012 09:05:37 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Apr 2012 09:05:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="151977942"
Received: from unknown (HELO helios.localnet) ([10.252.120.34])
	by fmsmga002.fm.intel.com with ESMTP; 10 Apr 2012 09:05:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Patrick <kpa_info@yahoo.fr>
Date: Tue, 10 Apr 2012 17:05:30 +0100
Message-ID: <1704553.ee0Gysgyqc@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.0.0-17-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <4F845816.4090701@yahoo.fr>
References: <4F845371.9040903@yahoo.fr> <6449891.F5szdKCE2k@helios>
	<4F845816.4090701@yahoo.fr>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Qt4 minimal subset
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
X-List-Received-Date: Tue, 10 Apr 2012 16:05:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 10 April 2012 17:56:06 Patrick wrote:
> I was wondering if a "meta" package like qt4-x11-free was available with
> a smaller subset, including the most used package of Qt.

Well, "most used" is somewhat subjective - it depends on what you're doing. We 
don't have any smaller package group for Qt - perhaps we should look at adding 
some additional package groupings in future though.

> On aditional question; is it possible to build Qt with directFB instead
> X11 ? If yes how should I do ?

Yes, to do this, bitbake qt4-embedded instead of qt4-x11-free. Your 
application recipes (if you have any) should "inherit qt4e" rather than 
"inherit qt4x11" in this case, as the library names are different.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

