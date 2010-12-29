Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B7A234C81069
	for <poky@pokylinux.org>; Wed, 29 Dec 2010 14:25:34 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 29 Dec 2010 12:25:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,245,1291622400"; d="scan'208";a="872830511"
Received: from unknown (HELO [10.255.13.215]) ([10.255.13.215])
	by fmsmga001.fm.intel.com with ESMTP; 29 Dec 2010 12:25:03 -0800
Message-ID: <4D1B991F.5060105@intel.com>
Date: Wed, 29 Dec 2010 12:25:03 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Qing He <qing.he@intel.com>
References: <0d30dc$kj5oeh@orsmga001.jf.intel.com>
	<20101228020217.GA27213@qhe2-db>
In-Reply-To: <20101228020217.GA27213@qhe2-db>
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PATCH] attr: fix SRC_URI
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
X-List-Received-Date: Wed, 29 Dec 2010 20:25:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/27/2010 06:02 PM, Qing He wrote:
>
> Signed-off-by: Qing He<qing.he@intel.com>
>
> ---
> This is inspired by Kevin Tian's fix to acl
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: qhe/fix
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix
>
> diff --git a/meta/recipes-support/attr/attr.inc b/meta/recipes-support/attr/attr.inc
> index da79246..9a8b0f6 100644
> --- a/meta/recipes-support/attr/attr.inc
> +++ b/meta/recipes-support/attr/attr.inc
> @@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "file://doc/COPYING;md5=2d0aa14b3fce4694e4f615e30186335f \
>                       file://attr/attr.c;endline=17;md5=be0403261f0847e5f43ed5b08d19593c \
>                       file://libattr/libattr.c;endline=17;md5=7970f77049f8fa1199fff62a7ab724fb"
>
> -SRC_URI = "http://nongnu.askapache.com/attr/${BP}.src.tar.gz"
> +SRC_URI = "http://download.savannah.gnu.org/attr/${BP}.src.tar.gz"
>
>   require ea-acl.inc
>
> diff --git a/meta/recipes-support/attr/attr_2.4.44.bb b/meta/recipes-support/attr/attr_2.4.44.bb
> index e22e158..4be27d0 100644
> --- a/meta/recipes-support/attr/attr_2.4.44.bb
> +++ b/meta/recipes-support/attr/attr_2.4.44.bb
> @@ -1,6 +1,6 @@
>   require attr.inc
>
> -PR = "r1"
> +PR = "r2"
>
>   SRC_URI += "file://memory-leak-in-copy.patch \
>               file://memory-leak2.patch \
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into Master

Thanks
    Sau!


