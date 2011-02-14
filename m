Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E931E4C808E6
	for <poky@lists.pokylinux.org>; Mon, 14 Feb 2011 10:34:29 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 14 Feb 2011 08:34:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,469,1291622400"; d="scan'208";a="388539221"
Received: from unknown (HELO [10.255.14.142]) ([10.255.14.142])
	by azsmga001.ch.intel.com with ESMTP; 14 Feb 2011 08:34:28 -0800
Message-ID: <4D595997.7070901@linux.intel.com>
Date: Mon, 14 Feb 2011 08:34:31 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D569EC5.6040609@mlbassoc.com> <4D569F5B.7040407@mlbassoc.com>
In-Reply-To: <4D569F5B.7040407@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Booting BeagleBoard
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
X-List-Received-Date: Mon, 14 Feb 2011 16:34:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/12/2011 06:55 AM, Gary Thomas wrote:
> On 02/12/2011 07:52 AM, Gary Thomas wrote:
>> I have a BeagleBoard C3 (not the new xM). Trying to run the
>> latest Poky ran into some problems:
>>
>> * The boot commands in README.hardware are no longer accurate
>> for the 2.6.37 (linux-yocto) kernel. At least you need to
>> use ttyO2 for the serial console.
>> * There is no video? /dev/fb0 is not being created.
>>
>> I know that the previous (Angstrom based) 2.6.32 kernel had
>> lots of additions which support video (DSS subsystem) and
>> also camera (ISP). Has this support been ported forward
>> into the Yocto kernel?
>>
>> Perhaps I missed some setting?
>
> One more thing - I'm running with external power and have
> a USB hub with a number of devices attached. Sadly, none
> of these are being recognized.


Interesting. I've applied a patch from Koen's tree to enable the 
on-board hub of the xM, and I've heard of others complain about finicky 
USB behavior on the C3. As I said, I don't have a C3 in hand (yet), so I 
could use some help in this area.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

