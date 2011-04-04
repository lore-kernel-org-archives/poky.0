Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B95624C8026D
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 16:53:24 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Apr 2011 14:53:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,299,1299484800"; d="scan'208";a="729073472"
Received: from miles.jf.intel.com (HELO [10.7.199.155]) ([10.7.199.155])
	by orsmga001.jf.intel.com with ESMTP; 04 Apr 2011 14:53:24 -0700
Message-ID: <4D9A3DD3.7050903@intel.com>
Date: Mon, 04 Apr 2011 14:53:23 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
References: <cover.1301948162.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1301948162.git.scott.a.garman@intel.com>
Subject: Re: [PATCH 0/3] Fixes for doc-related build failures.
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
X-List-Received-Date: Mon, 04 Apr 2011 21:53:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/04/2011 01:19 PM, Scott Garman wrote:
> From: Scott Garman<scott.a.garman@intel.com>
>
> Hi Saul,
>
> Paul identified the root cause of the build failures occurring with
> the documentation related packages. The problem is that functions
> appended to SSTATEPOSTINSTFUNCS can now be run for *all* tasks.
> These commits ensure the sysroot-related operations only happen
> during the do_populate_sysroot tasks.
>
> This fixes [YOCTO #948] (Thank you Dexuan for the bug report).

Richard just alerted me to a problem with this pull request. Going to 
re-spin shortly.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

