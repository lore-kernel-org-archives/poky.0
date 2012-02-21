Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55425E0044B
	for <poky@yoctoproject.org>; Tue, 21 Feb 2012 09:13:10 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Feb 2012 09:13:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="127786817"
Received: from unknown (HELO [10.255.15.72]) ([10.255.15.72])
	by fmsmga002.fm.intel.com with ESMTP; 21 Feb 2012 09:12:59 -0800
Message-ID: <4F43D09B.5000500@linux.intel.com>
Date: Tue, 21 Feb 2012 09:12:59 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <cover.1329470296.git.kai.kang@windriver.com>
In-Reply-To: <cover.1329470296.git.kai.kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Yocto 1656: Recipe creation/import script
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
X-List-Received-Date: Tue, 21 Feb 2012 17:13:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/17/2012 01:25 AM, Kang Kai wrote:
> Hi Saul,
>
> I send this patch version 2 one week ago, and no new comment received.
> So would you like to give some comments or commit it?
>
Kai,

Most of the team has been at the ELC conference this last week with no 
time to review patches, we are catching up this week.  Please have some 
patience while we catch up.

Thanks
	Sau!


> Thanks a lot.
>
> The following changes since commit 41a83ccfe50ec69425a4828fb5836d38d3f99e67:
>
>    guile: fix cross configure failure (2012-02-10 17:01:42 +0000)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib kangkai/distro
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro
>
> Kang Kai (1):
>    create-recipe: create a recipe from source URI
>
>   scripts/create-recipe |  769 +++++++++++++++++++++++++++++++++++++++++++++++++
>   1 files changed, 769 insertions(+), 0 deletions(-)
>   create mode 100755 scripts/create-recipe
>

