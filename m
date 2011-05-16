Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6FBAA4C80A54
	for <poky@yoctoproject.org>; Mon, 16 May 2011 11:35:25 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 May 2011 09:35:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,375,1301900400"; d="scan'208";a="747944393"
Received: from unknown (HELO [10.255.12.119]) ([10.255.12.119])
	by orsmga001.jf.intel.com with ESMTP; 16 May 2011 09:35:24 -0700
Message-ID: <4DD1524C.9020305@intel.com>
Date: Mon, 16 May 2011 09:35:24 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4DD10B56.1060700@mlbassoc.com>
In-Reply-To: <4DD10B56.1060700@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH resend] Kernel command line options for runqemu
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
X-List-Received-Date: Mon, 16 May 2011 16:35:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/16/2011 04:32 AM, Gary Thomas wrote:
> This patch lets the user add options to the kernel command line when
> started via runqemu. Very useful for things like 'psplash=false'
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

Gary,

This is a reasonable idea, but it exposes an internal variable that 
might change in the future, so am I hesitant to take this.

Sau!


