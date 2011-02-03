Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 99B0B4C800C0
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 13:37:22 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Feb 2011 11:37:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,421,1291622400"; d="scan'208";a="884093411"
Received: from unknown (HELO [10.255.14.193]) ([10.255.14.193])
	by fmsmga001.fm.intel.com with ESMTP; 03 Feb 2011 11:36:56 -0800
Message-ID: <4D4B03D7.8030109@intel.com>
Date: Thu, 03 Feb 2011 11:36:55 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1296651445.git.josh@linux.intel.com>
	<bb7a07ffe72759ec884af239aafd948675591c75.1296651445.git.josh@linux.intel.com>
In-Reply-To: <bb7a07ffe72759ec884af239aafd948675591c75.1296651445.git.josh@linux.intel.com>
Subject: Re: [PATCH 1/1] gobject-introspection: fix DEPENDS
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
X-List-Received-Date: Thu, 03 Feb 2011 19:37:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/02/2011 04:58 AM, Joshua Lock wrote:
> From: Joshua Lock<josh@linux.intel.com>
>
> We need flex and bison to build gobject-introspection
>
> Signed-off-by: Joshua Lock<josh@linux.intel.com>
> ---
>   .../gnome/gobject-introspection_git.bb             |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/meta/recipes-gnome/gnome/gobject-introspection_git.bb b/meta/recipes-gnome/gnome/gobject-introspection_git.bb
> index 49c0ed8..17a42a9 100644
> --- a/meta/recipes-gnome/gnome/gobject-introspection_git.bb
> +++ b/meta/recipes-gnome/gnome/gobject-introspection_git.bb
> @@ -14,7 +14,7 @@ PR = "r3"
>   S = "${WORKDIR}/git"
>
>   DEPENDS = "libffi python-native gobject-introspection-native"
> -DEPENDS_virtclass-native = "libffi-native python-native"
> +DEPENDS_virtclass-native = "libffi-native python-native bison-native flex-native"
>
>   inherit autotools
>
Merged into Master

Sau!


