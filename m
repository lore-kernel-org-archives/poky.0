Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9D6D64C801BF
	for <poky@yoctoproject.org>; Sat, 14 May 2011 23:18:24 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 May 2011 21:18:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,368,1301900400"; d="scan'208";a="642816500"
Received: from unknown (HELO [10.255.12.119]) ([10.255.12.119])
	by orsmga002.jf.intel.com with ESMTP; 14 May 2011 21:18:04 -0700
Message-ID: <4DCF53FC.9060109@intel.com>
Date: Sat, 14 May 2011 21:18:04 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1305415455.git.tom.zanussi@intel.com>
	<92477bdb3d1f4a10cb30a261753cf959b52aab8a.1305415455.git.tom.zanussi@intel.com>
In-Reply-To: <92477bdb3d1f4a10cb30a261753cf959b52aab8a.1305415455.git.tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/4] crownbay: remove custom BASE_PACKAGE_ARCH and	PACKAGE_EXTRA_ARCHS
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
X-List-Received-Date: Sun, 15 May 2011 04:18:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/14/2011 08:36 PM, Tom Zanussi wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> PACKAGE_EXTRA_ARCHS in the conf file gets overwritten by the tune-atom
> include following it, preventing the atom BASE_PACKAGE_ARCH from being
> included in the final PACKAGE_ARCHS and causing do_rootfs to fail.
> Remove the atom BASE_PACKAGE_ARCH and PACKAGE_EXTRA_ARCHS in the conf
> file and allow the values in tune-atom to be used as intended.
>
I think we may still want to change the tune-atom PACKAGE_EXTRA_ARCHS to ?=.

> Fixes [BUGID #986].
>
Should be [YOCTO #986]

> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   meta-crownbay/conf/machine/crownbay.conf |    3 ---
>   1 files changed, 0 insertions(+), 3 deletions(-)
>
> diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
> index b8f107b..bc09ada 100644
> --- a/meta-crownbay/conf/machine/crownbay.conf
> +++ b/meta-crownbay/conf/machine/crownbay.conf
> @@ -5,12 +5,9 @@
>   # i.e. E660 + EG20T
>
>   TARGET_ARCH = "i586"
> -PACKAGE_EXTRA_ARCHS = "x86 atom"
>
>   include conf/machine/include/tune-atom.inc
>
> -BASE_PACKAGE_ARCH="atom"
> -
>   MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
>                       acpi serial usbgadget"
>


