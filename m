Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id EF0324C80044
	for <poky@pokylinux.org>; Tue,  2 Nov 2010 22:47:17 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Nov 2010 20:47:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,287,1286175600"; d="scan'208";a="853621151"
Received: from unknown (HELO [10.255.12.198]) ([10.255.12.198])
	by fmsmga001.fm.intel.com with ESMTP; 02 Nov 2010 20:47:17 -0700
Message-ID: <4CD0DB45.7000607@intel.com>
Date: Tue, 02 Nov 2010 20:47:17 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Cui, Dexuan" <dexuan.cui@intel.com>
References: <AANLkTi=iHsCxaWVUaD1fMCsRZot4+SHUHAK9xpdku1Cv@mail.gmail.com>
	<1865303E0DED764181A9D882DEF65FB67A65C6F4AD@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB67A65C6F4AD@shsmsx502.ccr.corp.intel.com>
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: Extending meta-toolchain-sdk
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Nov 2010 03:47:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/02/2010 06:36 PM, Cui, Dexuan wrote:
> Mike Detwiler wrote:
>> I have run 'bitbake meta-toolchain-sdk' and installed the tarball that
>> it generates. However, I found that the sdk did not contain all the
>> third-party libraries that I would like it to have. For example, the
>> application I'm developing has a dependency on libgmp. I notice that
>> there are bitbake files for gmp in meta/recipes-support/gmp. Is there
>> a simple way (e.g. in build/conf/local.conf) to have this added to the
>> list of libraries that are included in the sdk?
>> -Mike
>
> Hi Mike,
> Can you please try the patch below?
>
Mike, Dexuan:

A better way to do this is to define SDK-EXTRAs in the local.conf file:

SDK-EXTRAS += "libgmp"

That should do the trick.

Sau!


> Thanks,
> -- Dexuan
>
> ------------------------------------------------------------------------
>
> diff --git a/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb b/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb
> index b853ffc..3acb3ec 100644
> --- a/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb
> +++ b/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb
> @@ -4,7 +4,7 @@
>
>   DESCRIPTON = "Gnome Mobile And Embedded Software Development Kit for OpenedHand Poky"
>   LICENSE = "MIT"
> -PR = "r8"
> +PR = "r9"
>
>   ALLOW_EMPTY = "1"
>
> diff --git a/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb b/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb
> index 005d33b..70f5040 100644
> --- a/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb
> +++ b/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb
> @@ -4,7 +4,7 @@
>
>   DESCRIPTON = "Gnome Mobile And Embedded Software Development Kit for OpenedHand Poky"
>   LICENSE = "MIT"
> -PR = "r11"
> +PR = "r12"
>
>   ALLOW_EMPTY = "1"
>
> diff --git a/meta/recipes-gnome/tasks/task-sdk-gmae.inc b/meta/recipes-gnome/tasks/task-sdk-gmae.inc
> index 11505ce..32ad49c 100644
> --- a/meta/recipes-gnome/tasks/task-sdk-gmae.inc
> +++ b/meta/recipes-gnome/tasks/task-sdk-gmae.inc
> @@ -12,6 +12,7 @@ SDK-GMAE = " \
>       libebook-dev \
>       libxi-dev \
>       libsqlite3-dev \
> +    gmp-dev \
>       "
>
>   # TODO: gvfs-dev, mission-control
> _______________________________________________
> poky mailing list
> poky@pokylinux.org
> https://lists.pokylinux.org/listinfo/poky
>


