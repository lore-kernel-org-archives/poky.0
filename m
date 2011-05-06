Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B1D274C804BD
	for <poky@yoctoproject.org>; Fri,  6 May 2011 17:38:41 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 May 2011 15:38:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,329,1301900400"; d="scan'208";a="919066396"
Received: from unknown (HELO [10.255.12.56]) ([10.255.12.56])
	by fmsmga001.fm.intel.com with ESMTP; 06 May 2011 15:38:41 -0700
Message-ID: <4DC47870.9040203@linux.intel.com>
Date: Fri, 06 May 2011 15:38:40 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <cover.1303761875.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1303761875.git.scott.a.garman@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] cdrtools recipe cleanup
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
X-List-Received-Date: Fri, 06 May 2011 22:38:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/25/2011 01:08 PM, Scott Garman wrote:
> From: Scott Garman<scott.a.garman@intel.com>
>
> Hi Saul,
>
> Looking closer at the existing cdrtools recipe we have, in fact the
> CVE advisory does not apply, since the problematic utility (rscsi)
> is staged in ${sbindir} and the custom do_install() function only
> packages ${bindir}.
>
> So instead I took the opportunity to do some recipe cleanup, updated
> the patches, and added distro tracking information.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: sgarman/cdrtools-cve
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/cdrtools-cve
>
> Thanks,
>      Scott Garman<scott.a.garman@intel.com>
> ---
>
>
> Scott Garman (2):
>    cdrtools: recipe and patch cleanup
>    distro_tracking_fields.inc: add cdrtools recipe
>
>   .../conf/distro/include/distro_tracking_fields.inc |   11 ++++++++++
>   .../cdrtools-native/glibc-conflict-rename.patch    |    8 +++++++
>   .../cdrtools/cdrtools-native/no_usr_src.patch      |    7 ++++++
>   .../cdrtools/cdrtools-native_2.01.bb               |   21 ++++++++++---------
>   4 files changed, 37 insertions(+), 10 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
	Sau!


