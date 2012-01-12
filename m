Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEBD4E0030C
	for <poky@yoctoproject.org>; Thu, 12 Jan 2012 12:08:15 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Jan 2012 12:08:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="97740842"
Received: from unknown (HELO [10.255.13.168]) ([10.255.13.168])
	by orsmga002.jf.intel.com with ESMTP; 12 Jan 2012 12:08:15 -0800
Message-ID: <4F0F3DAF.3000400@linux.intel.com>
Date: Thu, 12 Jan 2012 12:08:15 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1326144238.18105.22.camel@lenny>
In-Reply-To: <1326144238.18105.22.camel@lenny>
Subject: Re: [PATCH] util-linux: .pc files should go in the -dev packages for subpackages
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
X-List-Received-Date: Thu, 12 Jan 2012 20:08:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/09/2012 01:23 PM, Colin Walters wrote:
>      The .pc files were ending up in util-linux-dev, not the correct
>      subpackage like libuuid1-dev.
>
>
>
Merged into OE-Core

Thanks
	Sau!

>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

