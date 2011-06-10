Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 256F94C800D7
	for <poky@yoctoproject.org>; Thu,  9 Jun 2011 22:17:20 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Jun 2011 20:17:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,344,1304319600"; d="scan'208";a="11765258"
Received: from unknown (HELO [10.255.12.216]) ([10.255.12.216])
	by orsmga002.jf.intel.com with ESMTP; 09 Jun 2011 20:17:19 -0700
Message-ID: <4DF18CBE.2080805@linux.intel.com>
Date: Thu, 09 Jun 2011 20:17:18 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
References: <cover.1307510707.git.kai.kang@windriver.com>
	<f0caff18791ca02c18eeb8205f3efaffd1e88cc9.1307510707.git.kai.kang@windriver.com>
In-Reply-To: <f0caff18791ca02c18eeb8205f3efaffd1e88cc9.1307510707.git.kai.kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [OE-core] [PATCH 1/2] bitbake: add another local configuration file
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
X-List-Received-Date: Fri, 10 Jun 2011 03:17:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/07/2011 10:56 PM, Kang Kai wrote:
> From: Kang Kai<kai.kang@windriver.com>
>
> Add a new local configuration file local.extended.conf.sample, and more advanced
> settings what user can configure could put in this file.
>
> Signed-off-by: Kang Kai<kai.kang@windriver.com>
> ---
>   meta-yocto/conf/local.extended.conf.sample |    5 +++++
>   meta/conf/bitbake.conf                     |    1 +
>   scripts/oe-setup-builddir                  |   19 +++++++++++++++++++
>   3 files changed, 25 insertions(+), 0 deletions(-)
>   create mode 100644 meta-yocto/conf/local.extended.conf.sample
>

Kang,

Richard's intent here was to have a local.conf.extended, purely as a 
holding place for advanced options such as this.  Once you create this 
one file (no inclusion via bitbake.conf or in oe-setup-builddir), we 
will add additional items from the current local.conf, such as some of 
the EXTRA_IMAGE_FEATURES explaination, the DEBUG and LIBRARY management 
examples.

So please just submit a single file local.conf.extended.

Thanks to Khem for reminding me of this!

Sau!

> diff --git a/meta-yocto/conf/local.extended.conf.sample b/meta-yocto/conf/local.extended.conf.sample
> new file mode 100644
> index 0000000..048d641
> --- /dev/null
> +++ b/meta-yocto/conf/local.extended.conf.sample
> @@ -0,0 +1,5 @@
> +# eglibc configurability is used to reduce minimal images's size.
> +# the all supported eglibc options are default enabled by adding
> +# to DISTRO_FEATURES in default-distrovars.inc
> +# put the options what you want to enable below and uncomment it
> +#DISTRO_FEATURES = "alsa bluetooth ext2 irda pcmcia usbgadget usbhost wifi nfs zeroconf pci"
> diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
> index de94316..1b1cf6b 100644
> --- a/meta/conf/bitbake.conf
> +++ b/meta/conf/bitbake.conf
> @@ -641,6 +641,7 @@ CPU_FEATURES_arm ?= "vfp"
>   include conf/site.conf
>   include conf/auto.conf
>   include conf/local.conf
> +include conf/local.extended.conf
>   include conf/build/${BUILD_SYS}.conf
>   include conf/target/${TARGET_SYS}.conf
>   include conf/machine/${MACHINE}.conf
> diff --git a/scripts/oe-setup-builddir b/scripts/oe-setup-builddir
> index 5fc8b19..31fb3d6 100755
> --- a/scripts/oe-setup-builddir
> +++ b/scripts/oe-setup-builddir
> @@ -55,6 +55,7 @@ if [ "x" != "x$TEMPLATECONF" ]; then
>       fi
>       OECORELAYERCONF="$TEMPLATECONF/bblayers.conf.sample"
>       OECORELOCALCONF="$TEMPLATECONF/local.conf.sample"
> +    OECORELOCALCONFEXTENDED="$TEMPLATECONF/local.extended.conf.sample"
>   fi
>
>   if [ "x" = "x$OECORELOCALCONF" ]; then
> @@ -79,6 +80,24 @@ EOM
>       cp -f $OECORELOCALCONF $BUILDDIR/conf/local.conf
>   fi
>
> +if ! (test -r "$BUILDDIR/conf/local.extended.conf"); then
> +cat<<EOM
> +You had no conf/local.conf file. This configuration file has therefore been
> +created for you with some default values. You may wish to edit it to use
> +different eglibc configuration options for example. See the file for more
> +information as common configuration options are commented.
> +
> +The Yocto Project has extensive documentation about OE including a reference manual
> +which can be found at:
> +    http://yoctoproject.org/community/documentation
> +
> +For more information about OpenEmbedded see their website:
> +    http://www.openembedded.org/
> +
> +EOM
> +	cp -f $OECORELOCALCONFEXTENDED $BUILDDIR/conf/local.extended.conf
> +fi
> +
>   if [ "x" = "x$OECORELAYERCONF" ]; then
>       OECORELAYERCONF="$OEROOT/meta/conf/bblayers.conf.sample"
>   fi

