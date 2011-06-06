Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 79F184C800B3
	for <poky@pokylinux.org>; Mon,  6 Jun 2011 10:18:25 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Jun 2011 08:18:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,326,1304319600"; d="scan'208";a="10071899"
Received: from unknown (HELO [10.255.13.99]) ([10.255.13.99])
	by orsmga001.jf.intel.com with ESMTP; 06 Jun 2011 08:18:24 -0700
Message-ID: <4DECEFC0.1080109@linux.intel.com>
Date: Mon, 06 Jun 2011 08:18:24 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Holger Freyther <holger@freyther.de>
References: <loom.20110606T110858-586@post.gmane.org>
	<loom.20110606T111958-415@post.gmane.org>
In-Reply-To: <loom.20110606T111958-415@post.gmane.org>
Cc: poky@pokylinux.org
Subject: Re: udev/modutils issues with the system bringup
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
X-List-Received-Date: Mon, 06 Jun 2011 15:18:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/06/2011 02:21 AM, Holger Freyther wrote:
> Holger Freyther<holger@...>  writes:
>
>> #!/bin/sh -e
>> ...
>> if [ -e /etc/dev.tar ]; then
>>          (cd /; tar xf /etc/dev.tar 2>&1 | grep -v 'time stamp')
>>          not_first_boot=1
>> fi
>
> Okay, it is efce51ec11cc2a908833e80b65d2f5db81bb2fec which only works
> if the time is broken... I assume one wants to add an || true or such to the
> command.
>
Holger,

I would take a patch for that.

Sau!

> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

