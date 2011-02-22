Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3FA994C80517
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 09:49:31 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Feb 2011 07:49:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,206,1297065600"; d="scan'208";a="392341800"
Received: from unknown (HELO [10.255.12.88]) ([10.255.12.88])
	by azsmga001.ch.intel.com with ESMTP; 22 Feb 2011 07:49:29 -0800
Message-ID: <4D63DB09.20101@intel.com>
Date: Tue, 22 Feb 2011 07:49:29 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <cover.1297830466.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297830466.git.scott.a.garman@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/5] docbook-utils and friends
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
X-List-Received-Date: Tue, 22 Feb 2011 15:49:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/15/2011 08:32 PM, Scott Garman wrote:
> From: Scott Garman<scott.a.garman@intel.com>
>
> Hi Saul,
>
> This pull request includes documentation-related dependencies
> and fixes so that the iputils recipe (and most likely many others)
> can build its documentation correctly.
>
> I tested it on qemux86 and qemumips, and on a stripped-down
> openSUSE 11.2 chroot where I even removed documentation-related
> host utilities that we list in our quick start guide.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: sgarman/docbook-fixes-final
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/docbook-fixes-final
>
> Thanks,
>      Scott Garman<scott.a.garman@intel.com>
> ---
>
>
> Scott Garman (5):
>    texinfo: recipe cleanup, add native support
>    sgml-common-native: fix license info and checksum fields
>    docbook-utils-native: new recipe v0.6.14
>    opensp: improve configuration and install steps
>    iputils: enable generation of man pages
>
>   .../docbook-utils/docbook-utils-native_0.6.14.bb   |   48 ++++++++++++++++++++
>   meta/recipes-devtools/opensp/opensp_1.5.bb         |   18 +++++++
>   .../sgml-common/sgml-common-native_0.6.3.bb        |   10 ++---
>   meta/recipes-extended/iputils/iputils_s20101006.bb |   13 ++---
>   meta/recipes-extended/texinfo/texinfo_4.13a.bb     |   26 ++++++-----
>   5 files changed, 90 insertions(+), 25 deletions(-)
>   create mode 100644 meta/recipes-devtools/docbook-utils/docbook-utils-native_0.6.14.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into Master

Thanks
	Sau!


