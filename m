Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 65E724C80093
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 12:06:38 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Feb 2011 10:06:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,226,1297065600"; d="scan'208";a="394168607"
Received: from unknown (HELO [10.255.12.120]) ([10.255.12.120])
	by azsmga001.ch.intel.com with ESMTP; 25 Feb 2011 10:06:37 -0800
Message-ID: <4D67EFAD.4060509@intel.com>
Date: Fri, 25 Feb 2011 10:06:37 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <cover.1298577434.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1298577434.git.scott.a.garman@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] poky-qemu fix for nfs pathnames, v2
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
X-List-Received-Date: Fri, 25 Feb 2011 18:06:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/24/2011 11:58 AM, Scott Garman wrote:
> From: Scott Garman<scott.a.garman@intel.com>
>
> [Patch respun for whitespace issues]
>
> This pull request includes a fix for bug #743, which allows nfs
> directories to be specified which contain an -image- substring in them.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: sgarman/poky-qemu-dirname-fix
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/poky-qemu-dirname-fix
>
> Thanks,
>      Scott Garman<scott.a.garman@intel.com>
> ---
>
>
> Scott Garman (1):
>    poky-qemu: handle cases where an nfs directory contains -image-
>
>   scripts/poky-qemu |    6 ++++++
>   1 files changed, 6 insertions(+), 0 deletions(-)
>
Merged into Master

Thanks	
	Sau!


