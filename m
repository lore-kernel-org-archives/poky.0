Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 769A04C808B0
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 10:46:46 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 22 Dec 2010 08:46:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,214,1291622400"; d="scan'208";a="870954633"
Received: from unknown (HELO [10.255.13.79]) ([10.255.13.79])
	by fmsmga001.fm.intel.com with ESMTP; 22 Dec 2010 08:46:06 -0800
Message-ID: <4D122B4D.9070204@intel.com>
Date: Wed, 22 Dec 2010 08:46:05 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Mei Lei <lei.mei@intel.com>
References: <cover.1293023813.git.lei.mei@intel.com>
In-Reply-To: <cover.1293023813.git.lei.mei@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3]distrodata.bbcalss: To get more precise upstream version for pkg report system
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
X-List-Received-Date: Wed, 22 Dec 2010 16:46:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/22/2010 05:22 AM, Mei Lei wrote:
> There are some changes to get more recipes upstream version and to generate some necessary data for pkg report system.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: lmei3/pkg-report-system
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/pkg-report-system
>
> Thanks,
>      Mei Lei<lei.mei@intel.com>
> ---
>
Lei:

There are various issues with these patches please see my comments below

>
> Mei Lei (3):
>    distrodata.bbclass: Change for package report system
Not sure why you needed to add a logpath2 as you are using the same 
LOG_DIR var as logpath. Are you intending to create a separate directory.

Is there a reason you need to have each package into in separate files? 
Can your tool not read 1 larger flat file then we can just use 1 output 
format for the spreadsheet

>    base.bbclass: Add inherit information for checkpkg task
We don't want to inherit the distrodata  by default, you can add this to 
your local.conf

>    bitbake.conf: Change the GNU_MIRROR to get more precise result
>
Not sure how this gives a more precise result, gnu and pub/gnu are the 
same location, one is linked to the other.

Sau!

>   meta/classes/base.bbclass       |    4 +-
>   meta/classes/distrodata.bbclass |   44 +++++++++++++++++++++++++++++++-------
>   meta/conf/bitbake.conf          |    2 +-
>   3 files changed, 39 insertions(+), 11 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


