Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4AA154C800AC
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 13:54:18 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Feb 2011 11:54:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,220,1297065600"; d="scan'208";a="606250151"
Received: from miles.jf.intel.com (HELO [10.7.199.151]) ([10.7.199.151])
	by orsmga002.jf.intel.com with ESMTP; 24 Feb 2011 11:54:17 -0800
Message-ID: <4D66B769.5000305@intel.com>
Date: Thu, 24 Feb 2011 11:54:17 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1298576197.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1298576197.git.scott.a.garman@intel.com>
Subject: Re: [PATCH 0/1] poky-qemu fix for nfs pathnames
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
X-List-Received-Date: Thu, 24 Feb 2011 19:54:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/24/2011 11:38 AM, Scott Garman wrote:
> From: Scott Garman<scott.a.garman@intel.com>
>
> Hi Saul,
>
> This pull request includes a fix for bug #743, which allows nfs
> directories to be specified which contain an -image- substring in them.

Sorry, this commit has whitespace issues. I will respin.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

