Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 392EB4C800B3
	for <poky@yoctoproject.org>; Fri,  6 May 2011 17:37:42 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 May 2011 15:37:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,328,1301900400"; d="scan'208";a="919066049"
Received: from unknown (HELO [10.255.12.56]) ([10.255.12.56])
	by fmsmga001.fm.intel.com with ESMTP; 06 May 2011 15:37:41 -0700
Message-ID: <4DC47835.40802@linux.intel.com>
Date: Fri, 06 May 2011 15:37:41 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1303760083.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1303760083.git.dvhart@linux.intel.com>
Cc: Chris Larson <clarson@kergoth.com>, poky@yoctoproject.org
Subject: Re: [PATCH 0/3] logging updates
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
X-List-Received-Date: Fri, 06 May 2011 22:37:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/25/2011 12:36 PM, Darren Hart wrote:
> The first two patches fix issues in the existing bash logging infrastructure.
> The third proposes a new bash logging mechanism.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: dvhart/logging
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/logging
>
> Thanks,
>      Darren Hart<dvhart@linux.intel.com>
> ---
>
>
> Darren Hart (3):
>    logging: fix oedebug loglevel test
>    logging: remove unused BBDEBUG from local.conf.sample
>    logging: add bb* logging mechanisms for bash recipe functions
>
>   meta-yocto/conf/local.conf.sample |    2 -
>   meta/classes/base.bbclass         |    9 +++--
>   meta/classes/logging.bbclass      |   72 +++++++++++++++++++++++++++++++++++++
>   3 files changed, 77 insertions(+), 6 deletions(-)
>   create mode 100644 meta/classes/logging.bbclass
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled int Master

Thanks
	Sau!

