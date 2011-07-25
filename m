Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 307F14C80332
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 10:31:45 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Jul 2011 08:31:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,262,1309762800"; d="scan'208";a="29820065"
Received: from unknown (HELO [10.255.14.61]) ([10.255.14.61])
	by orsmga002.jf.intel.com with ESMTP; 25 Jul 2011 08:31:40 -0700
Message-ID: <4E2D8C5C.6060808@linux.intel.com>
Date: Mon, 25 Jul 2011 08:31:40 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1311603837.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1311603837.git.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/6] meta-yocto: cleanup of local.conf.sample
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
X-List-Received-Date: Mon, 25 Jul 2011 15:31:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/25/2011 07:28 AM, Paul Eggleton wrote:
> A number of changes aimed at cleaning up local.conf.sample so it is easier
> to deal with for new users. These are not necessarily final, happy to take
> comments/suggestions.
>
How is this going to affect the oe-core local.conf.sample?

Sau!


> The following changes since commit eea4bd731ef286516ee1fb934fe2222a09c06e70:
>
>    mpc8315e-rdb: Set TARGET_FPU correct (2011-07-22 09:02:58 -0700)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib paule/local-conf-cleanup
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/local-conf-cleanup
>
> Paul Eggleton (6):
>    meta-yocto/local.conf.sample.extended: update DISTRO_FEATURES
>    meta-yocto/local.conf.sample: remove oprofileui-native related
>      settings
>    meta-yocto/conf/local.conf.sample: move advanced settings to extended
>      sample file
>    meta-yocto/conf/local.conf.sample: improve comments/layout
>    meta-yocto/conf/local.conf.sample: remove emenlow from machine list
>    meta-yocto/conf/local.conf.sample: add rm_work example
>
>   meta-yocto/conf/local.conf.sample          |  130 ++++++----------------------
>   meta-yocto/conf/local.conf.sample.extended |   92 +++++++++++++++++++-
>   2 files changed, 118 insertions(+), 104 deletions(-)
>

