Return-Path: <scott.a.garman@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 108DA4C8090C
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 13:07:56 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 18 Feb 2011 11:07:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,188,1297065600"; d="scan'208";a="390918291"
Received: from unknown (HELO [10.255.12.30]) ([10.255.12.30])
	by azsmga001.ch.intel.com with ESMTP; 18 Feb 2011 11:07:56 -0800
Message-ID: <4D5EC387.8090502@intel.com>
Date: Fri, 18 Feb 2011 11:07:51 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1298053136.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1298053136.git.nitin.a.kamble@intel.com>
Subject: Re: [PATCH 0/1] avoid absolute pathnames for general utils in	libtool scripts
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
X-List-Received-Date: Fri, 18 Feb 2011 19:07:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/18/2011 10:21 AM, Nitin A Kamble wrote:
> From: Nitin A Kamble<nitin.a.kamble@intel.com>
>
>
> The builthost specific absolute pathnames were not working on other hosts
> with the nativesdk libtool package. This commit fixes that.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: nitin/misc
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc
>
> Thanks,
>      Nitin A Kamble<nitin.a.kamble@intel.com>
> ---
>
>
> Nitin A Kamble (1):
>    libtool: avoid absolute pathnames of general utils

Acked-by: Scott Garman <scott.a.garman@intel.com>

Thanks Nitin!

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

