Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D423C4C80191
	for <poky@pokylinux.org>; Sat, 25 Jun 2011 15:31:48 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Jun 2011 13:31:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,425,1304319600"; d="scan'208";a="18185278"
Received: from unknown (HELO [10.255.13.191]) ([10.255.13.191])
	by orsmga002.jf.intel.com with ESMTP; 25 Jun 2011 13:31:47 -0700
Message-ID: <4E0645B3.40800@linux.intel.com>
Date: Sat, 25 Jun 2011 13:31:47 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Holger Hans Peter Freyther <holger@freyther.de>
References: <loom.20110606T110858-586@post.gmane.org>
	<loom.20110606T111958-415@post.gmane.org>
	<4DECEFC0.1080109@linux.intel.com> <4DFBAA25.9010409@freyther.de>
In-Reply-To: <4DFBAA25.9010409@freyther.de>
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
X-List-Received-Date: Sat, 25 Jun 2011 20:31:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/17/2011 12:25 PM, Holger Hans Peter Freyther wrote:
> On 06/06/2011 05:18 PM, Saul Wold wrote:
>
>>> Okay, it is efce51ec11cc2a908833e80b65d2f5db81bb2fec which only works
>>> if the time is broken... I assume one wants to add an || true or such to the
>>> command.
>>>
>> Holger,
>>
>> I would take a patch for that.
>
> Hi,
>
> not sure what is the best way to send patches (if they need a SoB, if they
> should go through oe-core...). The first adds a '|| true' to the udev start
> script so udevd is started on second boot, the second move modutils after
> udev.. if there is a module needed to make udev work... then the first boot
> will fail as modules are only configured by S9XConfigure..
>
Yes, these should really go against oe-core with proper SoBs.  Please 
re-submit there.

Thanks
	Sau!

> holger
>
> PS: I was away from my build machine so the patches might be outdated.

