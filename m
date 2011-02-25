Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 049FC4C80A90
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 11:30:54 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Feb 2011 09:30:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,226,1297065600"; d="scan'208";a="661512022"
Received: from unknown (HELO [10.255.12.120]) ([10.255.12.120])
	by fmsmga002.fm.intel.com with ESMTP; 25 Feb 2011 09:30:54 -0800
Message-ID: <4D67E74E.7030000@intel.com>
Date: Fri, 25 Feb 2011 09:30:54 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <cover.1298592962.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1298592962.git.scott.a.garman@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] build libuser documentation
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
X-List-Received-Date: Fri, 25 Feb 2011 17:30:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/24/2011 05:07 PM, Scott Garman wrote:
> From: Scott Garman<scott.a.garman@intel.com>
>
> Hi Saul,
>
> This pull request fixes bug #213, allowing the documentation for
> libuser to be generated.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: sgarman/libuser-fix
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/libuser-fix
>
> Thanks,
>      Scott Garman<scott.a.garman@intel.com>
> ---
>
>
> Scott Garman (2):
>    linuxdoc-tools-native: new recipe v0.99.6
>    libuser: enable documentation
>
>   .../linuxdoc-tools-native/disable_sgml2rtf.patch   |   49 ++++++++++++++++++++
>   .../linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb |   21 ++++++++
>   .../libuser/libuser-0.57.1/disable-sgml-doc.patch  |   18 -------
>   meta/recipes-extended/libuser/libuser_0.57.1.bb    |    9 ++--
>   4 files changed, 74 insertions(+), 23 deletions(-)
>   create mode 100644 meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_sgml2rtf.patch
>   create mode 100644 meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb
>   delete mode 100644 meta/recipes-extended/libuser/libuser-0.57.1/disable-sgml-doc.patch
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into Master

Thanks
	Sau!


