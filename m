Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BD6A84C81278
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 19:33:13 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Jan 2011 17:33:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="701503448"
Received: from unknown (HELO [10.255.14.102]) ([10.255.14.102])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2011 17:33:12 -0800
Message-ID: <4D421CD8.1010808@intel.com>
Date: Thu, 27 Jan 2011 17:33:12 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1296015743.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1296015743.git.mark.hatle@windriver.com>
Subject: Re: [PATCH 0/1] Uprev Berkley DB to 5.1.19
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
X-List-Received-Date: Fri, 28 Jan 2011 01:33:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/25/2011 08:26 PM, Mark Hatle wrote:
> Uprev Berkley DB to 5.1.19.  This is a precursor to the RPM5 uprev.
>
> The code was tested with the Sato date and address book applications.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: mhatle/db5
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/db5
>
> Thanks,
>      Mark Hatle<mark.hatle@windriver.com>
> ---
>
>
> Mark Hatle (1):
>    BerkleyDB: Uprev db from 4.2 to 5.1.19
>
>   meta/recipes-support/db/db/arm-thumb-mutex.patch   |   36 -------
>   .../db/db/arm-thumb-mutex_db5.patch                |   36 +++++++
>   meta/recipes-support/db/db/configure_fixes.patch   |   18 ----
>   meta/recipes-support/db/db_4.2.52.bb               |  102 --------------------
>   .../db/{db_4.3.29.bb =>  db_5.1.19.bb}              |   39 +++++---
>   5 files changed, 63 insertions(+), 168 deletions(-)
>   delete mode 100644 meta/recipes-support/db/db/arm-thumb-mutex.patch
>   create mode 100644 meta/recipes-support/db/db/arm-thumb-mutex_db5.patch
>   delete mode 100644 meta/recipes-support/db/db/configure_fixes.patch
>   delete mode 100644 meta/recipes-support/db/db_4.2.52.bb
>   rename meta/recipes-support/db/{db_4.3.29.bb =>  db_5.1.19.bb} (68%)
>
Pulled into Master

Thanks
	Sau!

