Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E416E4C800A0
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 19:34:21 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 Mar 2011 17:34:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,306,1297065600"; d="scan'208";a="896466315"
Received: from unknown (HELO [10.255.12.195]) ([10.255.12.195])
	by fmsmga001.fm.intel.com with ESMTP; 11 Mar 2011 17:34:21 -0800
Message-ID: <4D7ACD9C.3010002@linux.intel.com>
Date: Fri, 11 Mar 2011 17:34:20 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <cover.1299891748.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299891748.git.sgw@linux.intel.com>
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [PATCH 0/1] gnu-config make sure we use perl-native
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
X-List-Received-Date: Sat, 12 Mar 2011 01:34:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/11/2011 05:15 PM, Saul Wold wrote:
> From: Saul Wold<sgw@linux.intel.com>
>
> During a world build I was getting a perl version mismatch between
> the perl-native and the host perl. This change ensures that
> perl-native is used always.
>

Never mind this patch, Saul's brain is not functioning well today,
I completely missed the comment!

Back to the drawing board on why the miss-match is occuring in Config.pm 
then.

Sau!
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: sgw/gnu-config
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgw/gnu-config
>
> Thanks,
>      Saul Wold<sgw@linux.intel.com>
> ---
>
>
> Saul Wold (1):
>    gnu-config: Ensure that we use perl-native to avoid version
>      mis-matches
>
>   .../gnu-config/gnu-config_20080123.bb              |    4 +---
>   1 files changed, 1 insertions(+), 3 deletions(-)
>

