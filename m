Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6148A4C8127B;
	Thu, 27 Jan 2011 19:29:35 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 17:29:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="597212114"
Received: from unknown (HELO [10.255.14.102]) ([10.255.14.102])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 17:29:33 -0800
Message-ID: <4D421BFD.40502@intel.com>
Date: Thu, 27 Jan 2011 17:29:33 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1295905272.git.bruce.ashfield@windriver.com>
	<45dd3b21889b37e8d1360ddf74feee96b72a0219.1295905272.git.bruce.ashfield@windriver.com>
In-Reply-To: <45dd3b21889b37e8d1360ddf74feee96b72a0219.1295905272.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [PATCH 2/2] linux-yocto: update SRCREVs for emenlow
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
X-List-Received-Date: Fri, 28 Jan 2011 01:29:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/24/2011 01:46 PM, Bruce Ashfield wrote:
> The emenlow has been ported/tested on 2.6.37. Updating the SRCREVs
> to reflect the change.
>
> Signed-off-by: Bruce Ashfield<bruce.ashfield@windriver.com>
> ---
>   .../conf/distro/include/poky-default-revisions.inc |    4 ++--
>   1 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
> index b9602ea..8d98eef 100644
> --- a/meta/conf/distro/include/poky-default-revisions.inc
> +++ b/meta/conf/distro/include/poky-default-revisions.inc
> @@ -100,12 +100,12 @@ SRCREV_machine_pn-linux-yocto_qemumips ?= "2b43d84250a582b61397ad5f59a6445ce1258
>   SRCREV_machine_pn-linux-yocto_qemuppc ?= "20f182db27f3e6fc6bd55bfc9e24c8c023fbff7f"
>   SRCREV_machine_pn-linux-yocto_qemux86 ?= "a9d833fda90e2f1257888a97e092135610b5f259"
>   SRCREV_machine_pn-linux-yocto_qemux86-64 ?= "a9d833fda90e2f1257888a97e092135610b5f259"
> -SRCREV_machine_pn-linux-yocto_emenlow ?= "a9d833fda90e2f1257888a97e092135610b5f259"
> +SRCREV_machine_pn-linux-yocto_emenlow ?= "c19e556f79f03c8f1e5e84ccd9b5436c2001fcce"
>   SRCREV_machine_pn-linux-yocto_atom-pc ?= "a9d833fda90e2f1257888a97e092135610b5f259"
>   SRCREV_machine_pn-linux-yocto_routerstationpro ?= "219a5f9dc6e5beced36184e141f80b2df61ae32f"
>   SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "3f01b98238c2ff7913ce9f68f9db5ae9538717bc"
>   SRCREV_machine_pn-linux-yocto_beagleboard ?= "a9d833fda90e2f1257888a97e092135610b5f259"
> -SRCREV_meta_pn-linux-yocto ?= "e3895db37bd65ea97e59b70ea936c84b398d3f3e"
> +SRCREV_meta_pn-linux-yocto ?= "8a49ef6f1a43dabbce34a9ee9a1be08b26fc511c"
>   SRCREV_pn-linux-libc-headers-yocto ??= "a9d833fda90e2f1257888a97e092135610b5f259"
>   SRCREV_pn-matchbox-config-gtk ??= "2081"
>   SRCREV_pn-matchbox-desktop-sato ??= "76"
Pulled into Master

Thanks
	Sau!

