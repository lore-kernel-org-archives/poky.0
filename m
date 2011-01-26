Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9FBB44C806DA
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 20:51:24 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Jan 2011 18:51:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,378,1291622400"; d="scan'208";a="651209815"
Received: from unknown (HELO [10.255.14.118]) ([10.255.14.118])
	by fmsmga002.fm.intel.com with ESMTP; 25 Jan 2011 18:51:24 -0800
Message-ID: <4D3F8C2B.5060506@intel.com>
Date: Tue, 25 Jan 2011 18:51:23 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Jingdong Lu <jingdong.lu@windriver.com>
References: <cover.1295601800.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1295601800.git.jingdong.lu@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/4] [PULL] Add some new packages and rename	liburi-perl.
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
X-List-Received-Date: Wed, 26 Jan 2011 02:51:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/21/2011 01:26 AM, Jingdong Lu wrote:
> Add mailx, cups, msmtp.
> Rename liburi-perl_1.56 to liburi-perl_1.56.bb
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: jingdonglu/distro
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro
>
> Thanks,
>      Jingdong Lu<jingdong.lu@windriver.com>
> ---
>
>
> Jingdong Lu (4):
>    mailx: Add mailx
>    cups: Add cups
>    msmtp: Add msmtp
>    liburi-perl: Rename liburi-perl

Hi Jingdong,

I did not pull mailx, cups or msmtp for various failures and needed to 
get more history about where these recipes and patches came from.  Did 
you use OpenEmbedded as a reference for these, if so, you need to credit 
OE and document where any why the patches are needed for cups.

We also held off from the lsb task, since it contained all of these.

If you have any questions, let me know.


Sau!


>
>   .../perl/{liburi-perl_1.56 =>  liburi-perl_1.56.bb} |    0
>   .../cups/cups-1.4.4/configure.patch                |  117 ++++++++++++++++++++
>   .../cups/cups-1.4.4/skip_tools.patch               |   51 +++++++++
>   .../cups/cups-1.4.4/use_echo_only_in_init.patch    |   11 ++
>   meta/recipes-extended/cups/cups14.inc              |   86 ++++++++++++++
>   meta/recipes-extended/cups/cups_1.4.4.bb           |   17 +++
>   meta/recipes-extended/mailx/mailx_12.4.bb          |   23 ++++
>   meta/recipes-extended/msmtp/msmtp_1.4.21.bb        |   31 +++++
>   8 files changed, 336 insertions(+), 0 deletions(-)
>   rename meta/recipes-devtools/perl/{liburi-perl_1.56 =>  liburi-perl_1.56.bb} (100%)
>   create mode 100644 meta/recipes-extended/cups/cups-1.4.4/configure.patch
>   create mode 100644 meta/recipes-extended/cups/cups-1.4.4/skip_tools.patch
>   create mode 100644 meta/recipes-extended/cups/cups-1.4.4/use_echo_only_in_init.patch
>   create mode 100644 meta/recipes-extended/cups/cups14.inc
>   create mode 100644 meta/recipes-extended/cups/cups_1.4.4.bb
>   create mode 100644 meta/recipes-extended/mailx/mailx_12.4.bb
>   create mode 100644 meta/recipes-extended/msmtp/msmtp_1.4.21.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


