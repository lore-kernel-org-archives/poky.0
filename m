Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E705AE0059A
	for <poky@yoctoproject.org>; Wed, 21 Mar 2012 18:26:30 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Mar 2012 18:26:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="123647044"
Received: from unknown (HELO [10.255.12.49]) ([10.255.12.49])
	by orsmga002.jf.intel.com with ESMTP; 21 Mar 2012 18:26:30 -0700
Message-ID: <4F6A7FC6.2080504@linux.intel.com>
Date: Wed, 21 Mar 2012 18:26:30 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <cover.1331884360.git.kai.kang@windriver.com>
In-Reply-To: <cover.1331884360.git.kai.kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] V3: Yocoto 1561: clean up the workdir
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
X-List-Received-Date: Thu, 22 Mar 2012 01:26:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/16/2012 12:57 AM, Kang Kai wrote:
> Hi Richard,
>
> This version update:
> 1 limits the script run under BUILDDIR and after source oe-init-build-env file
> 2 get WORKDIR by TMPDIR+'/work'
> 3 replace system() call with module commands
>
> Regards,
>
> The following changes since commit 8bae18bb358755131f13865abb279ac687a03848:
>
>    slang: Fix rpath QA warnings (2012-03-15 00:11:40 +0000)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib kangkai/cleanup
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/cleanup
>
> Kang Kai (1):
>    cleanup-workdir: add a script to clean up WORKDIR
>
>   scripts/cleanup-workdir |  150 +++++++++++++++++++++++++++++++++++++++++++++++
>   1 files changed, 150 insertions(+), 0 deletions(-)
>   create mode 100755 scripts/cleanup-workdir
>

Merged into OE-Core

Sau!

