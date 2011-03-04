Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id EF84B4C80A71
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 19:27:10 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Mar 2011 17:27:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,261,1297065600"; d="scan'208";a="715962323"
Received: from unknown (HELO [10.255.12.102]) ([10.255.12.102])
	by orsmga001.jf.intel.com with ESMTP; 03 Mar 2011 17:27:10 -0800
Message-ID: <4D703FEE.70708@intel.com>
Date: Thu, 03 Mar 2011 17:27:10 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1299127174.git.kai.kang@windriver.com>
In-Reply-To: <cover.1299127174.git.kai.kang@windriver.com>
Subject: Re: [PATCH 0/3] recipes: add chkconfig and dependecies
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
X-List-Received-Date: Fri, 04 Mar 2011 01:27:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/02/2011 09:15 PM, Kang Kai wrote:
> From: Kang Kai<kai.kang@windriver.com>
>
> Add chkconfig for lsb command test, because lsb will check 2 commands install_initd
> and remove_initd linked to command chkconfig.
> slang and newt are depencies both from OE.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: kangkai/distro01
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro01
>
> Thanks,
>      Kang Kai<kai.kang@windriver.com>
> ---
>
>
> Kang Kai (3):
>    recipe: add chkconfig for LSB command test
>    recipe: add newt from OE
>    recipe: add slang from OE
>
>   .../recipes-extended/chkconfig/chkconfig_1.3.49.bb |   27 ++++++++
>   .../newt/files/include-without-python.patch        |   71 ++++++++++++++++++++
>   meta/recipes-extended/newt/libnewt_0.52.12.bb      |   37 ++++++++++
>   meta/recipes-extended/slang/slang/fix-uclibc.patch |   11 +++
>   meta/recipes-extended/slang/slang_2.2.2.bb         |   25 +++++++
>   5 files changed, 171 insertions(+), 0 deletions(-)
>   create mode 100644 meta/recipes-extended/chkconfig/chkconfig_1.3.49.bb
>   create mode 100644 meta/recipes-extended/newt/files/include-without-python.patch
>   create mode 100644 meta/recipes-extended/newt/libnewt_0.52.12.bb
>   create mode 100644 meta/recipes-extended/slang/slang/fix-uclibc.patch
>   create mode 100644 meta/recipes-extended/slang/slang_2.2.2.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into OE-Core and Bernard,

I also added chkconfig to the task-poky-lsb.bb

Thanks 	
	Sau!

