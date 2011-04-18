Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6C0044C805A8
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 18:58:14 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Apr 2011 16:58:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,236,1301900400"; d="scan'208";a="735281889"
Received: from unknown (HELO [10.255.13.48]) ([10.255.13.48])
	by orsmga001.jf.intel.com with ESMTP; 18 Apr 2011 16:58:13 -0700
Message-ID: <4DACD014.5030105@intel.com>
Date: Mon, 18 Apr 2011 16:58:12 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Zhai Edwin <edwin.zhai@intel.com>
References: <cover.1303131764.git.edwin.zhai@intel.com>
	<1afec4d81832f83fb5746845b35e934d9d8c1571.1303131764.git.edwin.zhai@intel.com>
In-Reply-To: <1afec4d81832f83fb5746845b35e934d9d8c1571.1303131764.git.edwin.zhai@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/5] tasks: Upgrade to 0.19 (from 0.18)
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
X-List-Received-Date: Mon, 18 Apr 2011 23:58:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/18/2011 06:10 AM, Zhai Edwin wrote:
> From: Zhai Edwin<edwin.zhai@intel.com>
>
> Signed-off-by: Zhai Edwin<edwin.zhai@intel.com>
> ---
>   .../pimlico/{tasks_0.18.bb =>  tasks_0.19.bb}       |    4 ++--
>   1 files changed, 2 insertions(+), 2 deletions(-)
>   rename meta/recipes-sato/pimlico/{tasks_0.18.bb =>  tasks_0.19.bb} (78%)
>
> diff --git a/meta/recipes-sato/pimlico/tasks_0.18.bb b/meta/recipes-sato/pimlico/tasks_0.19.bb
> similarity index 78%
> rename from meta/recipes-sato/pimlico/tasks_0.18.bb
> rename to meta/recipes-sato/pimlico/tasks_0.19.bb
> index fd7edb3..8326643 100644
> --- a/meta/recipes-sato/pimlico/tasks_0.18.bb
> +++ b/meta/recipes-sato/pimlico/tasks_0.19.bb
> @@ -7,8 +7,8 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
>
>   SRC_URI = "http://pimlico-project.org/sources/${BPN}/${BPN}-${PV}.tar.gz"
>
> -SRC_URI[md5sum] = "d40c0227e496b51be6fde10f387215ed"
> -SRC_URI[sha256sum] = "08802003da2517c6e0b2defd66bcaf466edd0ce7188373f564d629af6b93cc91"
> +SRC_URI[md5sum] = "0afd969758561599fd782e1effb39c08"
> +SRC_URI[sha256sum] = "1a7fdc5f95a2193a1a25fdb13f071867fb7e42245ce19ccee4bcccb69e557f2e"
>
>   OWL_poky = "--with-owl"
>

Where's the patch Upstream-Status for the tasks-owl.diff file?  Or is it 
not required anymore, in which case we should remove it.


Sau!


