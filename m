Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 762284C81267
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 19:32:58 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 17:32:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="701503404"
Received: from unknown (HELO [10.255.14.102]) ([10.255.14.102])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2011 17:32:57 -0800
Message-ID: <4D421CC8.7080504@intel.com>
Date: Thu, 27 Jan 2011 17:32:56 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1295974624.git.scott@scott-desktop.(none)>
In-Reply-To: <cover.1295974624.git.scott@scott-desktop.(none)>
Subject: Re: [PATCH 0/5] [Docs] Yocto QS Updates
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
X-List-Received-Date: Fri, 28 Jan 2011 01:32:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/25/2011 09:04 AM, poky-bounces@yoctoproject.org wrote:
> From: Scott Rifenbark<scott@scott-desktop.(none)>
>
> These changes represent technical and other enhancements to the YP QS.
> Sections added in the using pre-built section as it breaks logically into
> sections.  A note added to clarify that QEMU may or may not come up with
> a GUI depending on the target architecture.  A fix to the x86-64 string,
> which was wrong.  More items in the list for pre-built binary section.
> And, clarification for the setup script names dependent on architectures.
>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: srifenbark/docs
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/docs
>
> Thanks,
>       <>
> ---
>
>
> Scott Rifenbark (5):
>    documentation/yocto-project-qs/yocto-project-qs.xml: Corrected
>      environment setup command
>    documentation/yocto-project-qs/yocto-project-qs.xml:  Added
>      sub-sections to pre-built image section
>    documentation/yocto-project-qs/yocto-project-qs.xml: Updated list
>      introducing pre-built section
>    documentation/yocto-project-qs/yocto-project-qs.xml: Updated<arch>
>      value for environment setup command
>    documentation/yocto-project-qs/yocto-project-qs.xml:  Added note to
>      poky-qemu command
>
>   .../yocto-project-qs/yocto-project-qs.xml          |   43 +++++++++++++++++--
>   1 files changed, 38 insertions(+), 5 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
	Sau!

