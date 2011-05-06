Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6DB0E4C8007E
	for <poky@yoctoproject.org>; Fri,  6 May 2011 17:37:16 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 May 2011 15:37:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,328,1301900400"; d="scan'208";a="919065934"
Received: from unknown (HELO [10.255.12.56]) ([10.255.12.56])
	by fmsmga001.fm.intel.com with ESMTP; 06 May 2011 15:37:15 -0700
Message-ID: <4DC4781B.1040203@linux.intel.com>
Date: Fri, 06 May 2011 15:37:15 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Qing He <qing.he@intel.com>
References: <cover.1303724875.git.qing.he@intel.com>
In-Reply-To: <cover.1303724875.git.qing.he@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2][RESEND] bug fix for quilt and sat-solver
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
X-List-Received-Date: Fri, 06 May 2011 22:37:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/25/2011 02:49 AM, Qing He wrote:
> From: Qing He<qing.he@intel.com>
>
> sat-solver: rebranding
> quilt: alternative form in patch
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: qhe/fix
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix
>
> Thanks,
>      Qing He<qing.he@intel.com>
> ---
>
>
> Qing He (2):
>    sat-solver: fix arch=all packages
>    quilt: fix test for target build
>
>   .../quilt/quilt/gnu_patch_test_fix_target.patch    |   26 +++++++++++++++++++
>   meta/recipes-devtools/quilt/quilt_0.48.bb          |    6 +++-
>   ...sat-solver_poky.patch =>  sat-solver_core.patch} |   27 +++++++++++++++++--
>   meta/recipes-extended/sat-solver/sat-solver_git.bb |   16 ++++++------
>   4 files changed, 62 insertions(+), 13 deletions(-)
>   create mode 100644 meta/recipes-devtools/quilt/quilt/gnu_patch_test_fix_target.patch
>   rename meta/recipes-extended/sat-solver/sat-solver/{sat-solver_poky.patch =>  sat-solver_core.patch} (81%)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks	
	Sau!


