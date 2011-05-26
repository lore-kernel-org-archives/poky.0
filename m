Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 73B454C804F7
	for <poky@yoctoproject.org>; Thu, 26 May 2011 16:57:40 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 May 2011 14:57:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,276,1304319600"; 
   d="scan'208";a="5562816"
Received: from doubt.jf.intel.com (HELO [10.24.80.114]) ([10.24.80.114])
	by orsmga001.jf.intel.com with ESMTP; 26 May 2011 14:57:39 -0700
Message-ID: <4DDECCE7.4010501@linux.intel.com>
Date: Thu, 26 May 2011 14:57:59 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4DDBD90F.9080706@mlbassoc.com>
In-Reply-To: <4DDBD90F.9080706@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Over-exuberant error printing?
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
X-List-Received-Date: Thu, 26 May 2011 21:57:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/24/2011 09:13 AM, Gary Thomas wrote:
> Building from today's master (3504c3a9b1af5a3405e0a03a5ade50b82535b6dd)
> if I get an error, I get two lines printed for each real line, e.g.
> | ERROR: The stack trace of python calls that resulted in this exception/failure was:
> | ERROR: The stack trace of python calls that resulted in this exception/failure was:
> | ERROR:   File "sstate_task_postfunc", line 10, in <module>
> | ERROR:   File "sstate_task_postfunc", line 10, in <module>
> | ERROR:
> | ERROR:
> | ERROR:   File "sstate_task_postfunc", line 4, in sstate_task_postfunc
> | ERROR:   File "sstate_task_postfunc", line 4, in sstate_task_postfunc
> etc.
> 
> This is new behavior - any ideas?
> 

I've been seeing this as well and hadn't dug in to sort it out yet. You
said it is new behavior, have you bisected to determine when it occured?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

