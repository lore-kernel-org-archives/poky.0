Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80C4AE00429
	for <poky@yoctoproject.org>; Mon, 25 Feb 2013 09:43:08 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Feb 2013 09:43:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,736,1355126400"; d="scan'208";a="291550507"
Received: from unknown (HELO [10.255.12.143]) ([10.255.12.143])
	by fmsmga001.fm.intel.com with ESMTP; 25 Feb 2013 09:43:02 -0800
Message-ID: <512BA2A6.1070905@linux.intel.com>
Date: Mon, 25 Feb 2013 09:43:02 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <CAK18fxEj1UYMV21aOLfbMpVOfGYuSCgUj0b_ArADsHCJbUkLYA@mail.gmail.com>
In-Reply-To: <CAK18fxEj1UYMV21aOLfbMpVOfGYuSCgUj0b_ArADsHCJbUkLYA@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Error when removing dependency with oe_filter_out
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
X-List-Received-Date: Mon, 25 Feb 2013 17:43:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/25/2013 09:08 AM, Andrei Gherzan wrote:
> I want to add a bbappend to remove db dependency of python:
> DEPENDS := "${@oe_filter_out('db', '${DEPENDS}', d)}"
>
> If i do it so, build ends up with this error:
>
> ERROR: Nothing PROVIDES 'virtual/arm-poky-linux-gnueabi-gcc-crosssdk'
> (but
> virtual:nativesdk:/media/HDD-WRS/Projects/Yocto/poky/meta/recipes-devtools/python/python_2.7.3.bb
> <http://python_2.7.3.bb> DEPENDS on or otherwise requires it)
> NOTE: Runtime target 'gdb-cross-canadian-arm' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['gdb-cross-canadian-arm',
> 'nativesdk-python', 'virtual/arm-poky-linux-gnueabi-gcc-crosssdk']
> NOTE: Runtime target 'packagegroup-cross-canadian-arm' is unbuildable,
> removing...
> Missing or unbuildable dependency chain was:
> ['packagegroup-cross-canadian-arm', 'gdb-cross-canadian-arm',
> 'nativesdk-python', 'virtual/arm-poky-linux-gnueabi-gcc-crosssdk']
> ERROR: Required build target 'core-image-minimal' has no buildable
> providers.
> Missing or unbuildable dependency chain was: ['core-image-minimal',
> 'packagegroup-cross-canadian-arm', 'gdb-cross-canadian-arm',
> 'nativesdk-python', 'virtual/arm-poky-linux-gnueabi-gcc-crosssdk']
>
> If i simply remove it from DEPENDS everything works.
>
> Any help?
>
Can you put a space in the filter_out above?  I have not tried that, but 
what's happening in the filter out is finding the "db" part of "gdb" and 
removing it from the depends line for the cross tools.

Try " db" or some such.

Sau!

> --
> *Andrei Gherzan*
> m: +40.744.478.414 |  f: +40.31.816.28.12
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

