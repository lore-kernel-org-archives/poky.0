Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91021E01199
	for <poky@yoctoproject.org>; Tue,  2 Oct 2012 18:45:19 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Oct 2012 18:45:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,525,1344236400"; d="scan'208";a="229823626"
Received: from unknown (HELO [10.255.13.203]) ([10.255.13.203])
	by fmsmga002.fm.intel.com with ESMTP; 02 Oct 2012 18:45:18 -0700
Message-ID: <506B98AE.4090502@linux.intel.com>
Date: Tue, 02 Oct 2012 18:45:18 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: Constantin Musca <constantinx.musca@intel.com>
References: <1348749851-12086-1-git-send-email-constantinx.musca@intel.com>
In-Reply-To: <1348749851-12086-1-git-send-email-constantinx.musca@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH v2] poky-sanity.bbclass: bblayers.conf should be updated automatically
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Oct 2012 01:45:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/27/2012 05:44 AM, Constantin Musca wrote:
> - we need a bbclass (poky-sanity) so that we can append to the
> check_bblayers_conf bitbake function from sanity.bbclass the
> bblayers.conf specific merging functionality
> - add check_bblayers_conf_append bitbake function which does the
> meta-yocto specific updates (the bblayers.conf v5 -> v6 update)
> - every layer should make its specific bblayers.conf updates
> - we ask the user to re-run bitbake because we can't trigger
> reparsing without being invasive
>
> [YOCTO #3082]
>
> Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
> ---
>   meta-yocto/classes/poky-sanity.bbclass |   16 ++++++++++++++++
>   meta-yocto/conf/distro/poky.conf       |    3 +++
>   2 files changed, 19 insertions(+)
>   create mode 100644 meta-yocto/classes/poky-sanity.bbclass
>
> diff --git a/meta-yocto/classes/poky-sanity.bbclass b/meta-yocto/classes/poky-sanity.bbclass
> new file mode 100644
> index 0000000..1c7514f
> --- /dev/null
> +++ b/meta-yocto/classes/poky-sanity.bbclass
> @@ -0,0 +1,16 @@
> +python check_bblayers_conf_append() {
> +    if current_lconf != lconf_version:
> +        if current_lconf == 5:
> +            index, meta_yocto_line = find_line('meta-yocto\s*\\\\\\n', lines)
> +            if meta_yocto_line:
> +                lines.insert(index + 1, meta_yocto_line.replace('meta-yocto',
> +                                                                'meta-yocto-bsp'))
> +            else:
> +                sys.exit()
> +
> +            index, line = find_line('LCONF_VERSION', lines)
> +            current_lconf += 1
> +            lines[index] = 'LCONF_VERSION = "%d"\n' % current_lconf
> +            with open(bblayers_fn, "w") as f:
> +                f.write(''.join(lines))
> +}
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> index de82543..f7f03db 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -93,6 +93,9 @@ BB_SIGNATURE_HANDLER ?= 'OEBasicHash'
>   #
>   OELAYOUT_ABI = "8"
>
> +# add poky sanity bbclass
> +INHERIT += "poky-sanity"
> +
>   #WARN_QA = "unsafe-references-in-binaries unsafe-references-in-scripts"
>   WARN_QA = ""
>   ERROR_QA = "dev-so debug-deps dev-deps debug-files arch la2 pkgconfig la perms useless-rpaths rpaths staticdev ldflags"
>

Merged into Poky Master

Thanks	
	Sau!


