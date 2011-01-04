Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 969634C8109B
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 09:45:56 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Jan 2011 07:45:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,272,1291622400"; d="scan'208";a="693429614"
Received: from unknown (HELO [10.255.14.40]) ([10.255.14.40])
	by orsmga001.jf.intel.com with ESMTP; 04 Jan 2011 07:45:56 -0800
Message-ID: <4D2340B4.4030601@linux.intel.com>
Date: Tue, 04 Jan 2011 07:45:56 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Yu Ke <ke.yu@intel.com>
References: <cover.1294140740.git.ke.yu@intel.com>
	<6b19cf34c82bc4f083a420da7430ff60cbfcb815.1294140740.git.ke.yu@intel.com>
In-Reply-To: <6b19cf34c82bc4f083a420da7430ff60cbfcb815.1294140740.git.ke.yu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] base.bbclass: add lock file for do_unpack task
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
X-List-Received-Date: Tue, 04 Jan 2011 15:45:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/04/2011 03:36 AM, Yu Ke wrote:
> This patch intend to fix the random unpack failure of linux-libc-headers-yocto
> and linux-yocto.
>
> The root cause of the unpack failure is that: these two recpies has the same URL, thus
> has the same dest file during the fetch and unpack phase:
> do_fetch  : create tar ball ${DL_DIR}/git_git.pokylinux.org.linux-yocto-2.6.37.tar.gz
> do_unpack : extract tar ball ${DL_DIR}/git_git.pokylinux.org.linux-yocto-2.6.37.tar.gz
> fetch phase is protected by lockfile, so it works fine. but unpack phase is not lock protected,
> thus there is race condition like: when linux-yocto do_unpack is extracting the tar ball,
> linux-libc-headers-yocto do_fetch starts to create tar ball thus overwrite linux-yocto's
> tar ball and cause linux-yocto do_unpack failure
>
> To fix this issue, do_unpack also need to be protected by lock

Nice work! My out-for-review trace-cmd and kernelshark recipes will 
suffer the same issue.

-- 
Darren Hart
Yocto Linux Kernel

