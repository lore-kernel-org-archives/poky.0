Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 823CA4C81260
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 19:31:43 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 17:31:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="701502857"
Received: from unknown (HELO [10.255.14.102]) ([10.255.14.102])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2011 17:31:42 -0800
Message-ID: <4D421C7E.1040407@intel.com>
Date: Thu, 27 Jan 2011 17:31:42 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1295959587.git.josh@linux.intel.com>
In-Reply-To: <cover.1295959587.git.josh@linux.intel.com>
Subject: Re: [PATCH 0/1] Layout variable example
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
X-List-Received-Date: Fri, 28 Jan 2011 01:31:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/25/2011 04:50 AM, poky-bounces@yoctoproject.org wrote:
> From: Joshua Lock<josh@linux.intel.com>
>
> As per my recent email I've tidied up util-linux to use the layout variables
> rather than hard coded paths.
>
> util-inux just happened to be the recipe I was looking at when I was drafting
> the email, I'm sure there are several other examples.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: josh/master
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/master
>
> Thanks,
>      Joshua Lock<josh@linux.intel.com>
> ---
>
>
> Joshua Lock (1):
>    util-linux: tidy up metadata
>
>   meta/recipes-core/util-linux/util-linux.inc |   38 +++++++++++++-------------
>   1 files changed, 19 insertions(+), 19 deletions(-)
>
Pulled into Master

Thanks
	Sau!

