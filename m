Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 66F4C4C80188
	for <poky@yoctoproject.org>; Sun, 24 Apr 2011 23:30:21 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 24 Apr 2011 21:30:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,264,1301900400"; d="scan'208";a="683450692"
Received: from unknown (HELO [10.255.12.237]) ([10.255.12.237])
	by fmsmga002.fm.intel.com with ESMTP; 24 Apr 2011 21:30:00 -0700
Message-ID: <4DB4F8C8.9000802@linux.intel.com>
Date: Sun, 24 Apr 2011 21:30:00 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <cover.1303454125.git.kai.kang@windriver.com>
In-Reply-To: <cover.1303454125.git.kai.kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] lsbsetup: add some workaround for LSB tests
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
X-List-Received-Date: Mon, 25 Apr 2011 04:30:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/21/2011 11:45 PM, Kang Kai wrote:
> From: Kang Kai<kai.kang@windriver.com>
>
> Hi Saul,
>
> If this patch ok, could you please merge it before next lsb image autobuild. We hope
> we can check this in image which download from autobuilder next week. Thank you!
>
> Add some workaround for LSB libstdcpp and tcl tests.
> Recreate locales for libstdcpp test, and resolve localhost is for
> tcl test [Yocto 898]
> Bump PR, update LICENSE information and installed file mode
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: kangkai/lsbsetup
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/lsbsetup
>
> Thanks,
>      Kang Kai<kai.kang@windriver.com>
> ---
>
>
> Kang Kai (1):
>    lsbsetup: add some workaround for LSB tests
>
>   meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh |   15 ++++++++++++++-
>   meta/recipes-extended/lsb/lsbsetup_0.9.bb       |    8 ++++----
>   2 files changed, 18 insertions(+), 5 deletions(-)
>
Pulled into oe-core and poky/master

Thanks
	Sau!

