Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B83884C80579
	for <poky@yoctoproject.org>; Thu,  7 Apr 2011 15:02:10 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Apr 2011 13:02:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,318,1299484800"; d="scan'208";a="676507273"
Received: from unknown (HELO [10.255.13.32]) ([10.255.13.32])
	by fmsmga002.fm.intel.com with ESMTP; 07 Apr 2011 13:02:10 -0700
Message-ID: <4D9E13E7.2080209@linux.intel.com>
Date: Thu, 07 Apr 2011 12:43:35 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Chase Dewberry <bcdewberry@gmail.com>
References: <BANLkTinqdM4oADVngVyMNPZ5uUxjpwSUrQ@mail.gmail.com>
In-Reply-To: <BANLkTinqdM4oADVngVyMNPZ5uUxjpwSUrQ@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Mouse issues
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
X-List-Received-Date: Thu, 07 Apr 2011 20:02:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/07/2011 08:32 AM, Chase Dewberry wrote:
> Hello all,
> I am new to this and am running poky on a IGEPv2 development board and
> i can't get the board to recognize any USB mouse. I can't seem to find
> any necessary drivers and I'm currently trying to get the "Logitech
> v220 cordless optical mouse for notebooks" to work that says it
> supports "Linux kernel 2.6+". Any suggestions? (details greatly
> appreciated)

Can you provide some details please? Which version are you building?
What are the symptoms? Are you building poky-image-sato - or some other
image? Are you trying to use the mouse in X? Are there any messages
printed to the console when you insert and remove the mouse. Do USB
keyboards work? Do any other USB devices work? USB Storage?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

