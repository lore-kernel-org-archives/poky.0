Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18938E0146B
	for <poky@yoctoproject.org>; Tue,  5 Feb 2013 01:26:13 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Feb 2013 01:26:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,602,1355126400"; d="scan'208";a="257860500"
Received: from unknown (HELO helios.localnet) ([10.252.120.42])
	by orsmga001.jf.intel.com with ESMTP; 05 Feb 2013 01:26:11 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Erik Sallmann - iNTENCE automotive electronics <e.sallmann@intence.de>
Date: Tue, 05 Feb 2013 09:26:10 +0000
Message-ID: <1889845.j5cCAzuNtf@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.4 (Linux/3.5.0-23-generic; KDE/4.9.4; i686; ; )
In-Reply-To: <D53D64A4894117458C79F1D5DC57201A677C7D90@IAS001.intencer.local>
References: <D53D64A4894117458C79F1D5DC57201A677C7D90@IAS001.intencer.local>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: ofono in core-image-base
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 05 Feb 2013 09:26:13 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 05 February 2013 09:20:31 Erik Sallmann - iNTENCE automotive 
electronics wrote:
> I noticed that ofono is integrated in core-image-base. Is there any reason
> for that?

This comes in via packagegroup-base if "3g" or "phone" is in DISTRO_FEATURES 
(and "3g" is in the default value of DISTRO_FEATURES).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

