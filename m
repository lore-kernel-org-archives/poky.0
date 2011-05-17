Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D06774C80FB6
	for <poky@yoctoproject.org>; Tue, 17 May 2011 16:06:16 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 May 2011 14:06:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,227,1304319600"; 
   d="scan'208";a="3013189"
Received: from unknown (HELO [10.255.12.160]) ([10.255.12.160])
	by fmsmga002.fm.intel.com with ESMTP; 17 May 2011 14:06:16 -0700
Message-ID: <4DD2E347.1040908@linux.intel.com>
Date: Tue, 17 May 2011 14:06:15 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Mei Lei <lei.mei@intel.com>
References: <cover.1305548886.git.lei.mei@intel.com>
In-Reply-To: <cover.1305548886.git.lei.mei@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Add a new task and fix some bugs in	distro_check.py
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
X-List-Received-Date: Tue, 17 May 2011 21:06:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/16/2011 06:19 AM, Mei Lei wrote:
> Hi Saul,
> 	As Josh's comments, I have revised this patch, please review it.
> 	For the date issue, I can't find the same issue in my and other PRC team members' mailbox. For ruling out other potential causes, I cloned a new tree to rebase my patch, then generate the pull request mail again, hope this issue could disappear.
>
> Thanks
> Lei
>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: lmei3/checklicense
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/checklicense
>
> Thanks,
>      Mei Lei<lei.mei@intel.com>
> ---
>
>
> Mei Lei (1):
>    Add a new task checklicense and fix some bugs in distro_check.py
>
>   meta/classes/distrodata.bbclass |  177 ++++++++++++++++++++++-----------------
>   meta/lib/oe/distro_check.py     |   27 ++++--
>   2 files changed, 119 insertions(+), 85 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into oe-core and poky

Thanks
	Sau!


