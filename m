Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CB36E4C80050
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 18:41:49 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Dec 2010 16:41:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,210,1291622400"; d="scan'208";a="689523721"
Received: from unknown (HELO [10.255.13.77]) ([10.255.13.77])
	by orsmga001.jf.intel.com with ESMTP; 21 Dec 2010 16:41:33 -0800
Message-ID: <4D11493C.6050207@linux.intel.com>
Date: Tue, 21 Dec 2010 16:41:32 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Jingdong Lu <jingdong.lu@windriver.com>
References: <cover.1292925066.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1292925066.git.jingdong.lu@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] Fix failures of LSB.
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
X-List-Received-Date: Wed, 22 Dec 2010 00:41:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/21/2010 01:54 AM, Jingdong Lu wrote:
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: jingdonglu/distro
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro
>
> Thanks,
>      Jingdong Lu<jingdong.lu@windriver.com>
> ---
>

Jingdong,



Why do you need the do_install?  Can the standard do_install not work 
correctly for this recipe?

Thanks
    Sau!
>
> Jingdong Lu (3):
>    perl: Add GDBM_File into perl extension
>    gcc: Add "--enable-clocale=gnu" option explicitly
>    mailx: Add mailx
>
>   meta/recipes-devtools/gcc/gcc-configure-common.inc |    2 +-

We are reviewing the impact of the gcc clocale=gnu

>   meta/recipes-devtools/perl/perl-5.8.8/config.sh    |    2 +-
This on is OK

>   meta/recipes-extended/mailx/mailx_12.4.bb          |   18 ++++++++++++++++++
Can you please add a SUMMARY and SRC_URI checksums to the mailx recipe.

Is the PREFIX=/usr correct?  I note in other there is a ${D} or 
${D}${prefix}, please make sure you have the correct location here.

Please re-sumbit a v2 patch set.

Sau!

>   3 files changed, 20 insertions(+), 2 deletions(-)
>   create mode 100644 meta/recipes-extended/mailx/mailx_12.4.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


