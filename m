Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B425E0044D
	for <poky@yoctoproject.org>; Thu, 26 Apr 2012 08:47:23 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 26 Apr 2012 08:47:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="158692950"
Received: from unknown (HELO [10.255.12.214]) ([10.255.12.214])
	by fmsmga002.fm.intel.com with ESMTP; 26 Apr 2012 08:47:22 -0700
Message-ID: <4F996E0A.40407@linux.intel.com>
Date: Thu, 26 Apr 2012 08:47:22 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <cover.1335427135.git.kai.kang@windriver.com>
In-Reply-To: <cover.1335427135.git.kai.kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] Yocto 1656: rebase on autospectacle.pl
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
X-List-Received-Date: Thu, 26 Apr 2012 15:47:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/26/2012 01:10 AM, Kang Kai wrote:
> Hi Saul,
>
> I sent these patches to poky mail list on March 13, and didn't see the
> comments. If I miss your comment, would you like to comment them again?
>
> Thanks a lot.
>
> I rebase Yocto 1656: Recipe creation/import script on autospectacle.pl and
> add feature to create recipe file.
>
Kai,

It can you please rename the script to some more appropriate for the 
Yocto Project.  Since this tool creates .bb files not spec files we 
should rename it.

Thanks
	Sau!

> The following changes since commit 492a58cabdc053b2312712681dbcffa8270d4ea4:
>
>    self-hosted-image: Update poky revision to point at the 1.2 release branch (2012-04-24 10:21:11 +0100)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib kangkai/autospectacle
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/autospectacle
>
> Kang Kai (2):
>    autospectacle.pl: pull it from meego as a base
>    autospectacle.pl: create recipe file
>
>   scripts/autospectacle.pl | 1926 ++++++++++++++++++++++++++++++++++++++++++++++
>   1 files changed, 1926 insertions(+), 0 deletions(-)
>   create mode 100755 scripts/autospectacle.pl
>

