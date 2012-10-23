Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5F8BE0027E
	for <poky@yoctoproject.org>; Tue, 23 Oct 2012 12:13:13 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 23 Oct 2012 12:13:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,637,1344236400"; d="scan'208";a="159501395"
Received: from unknown (HELO [10.255.14.141]) ([10.255.14.141])
	by AZSMGA002.ch.intel.com with ESMTP; 23 Oct 2012 12:12:58 -0700
Message-ID: <5086EC3A.7020507@linux.intel.com>
Date: Tue, 23 Oct 2012 12:12:58 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1350666665.git.tom.zanussi@intel.com>
	<fb09064abc2df8e5162663fce150ffcd532aa649.1350666665.git.tom.zanussi@intel.com>
In-Reply-To: <fb09064abc2df8e5162663fce150ffcd532aa649.1350666665.git.tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] yocto-bsp: set branches_base for list_property_values()
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
X-List-Received-Date: Tue, 23 Oct 2012 19:13:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/19/2012 10:22 AM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
>
> yocto_bsp_list_property_values() is missing the context it needs to
> properly filter choicelists, so add it to the context object.
>
> Fixes [YOCTO #3233]
>
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>   scripts/lib/bsp/engine.py | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
> index ac5058c..8d47bbf 100644
> --- a/scripts/lib/bsp/engine.py
> +++ b/scripts/lib/bsp/engine.py
> @@ -1445,6 +1445,10 @@ def yocto_bsp_list_property_values(arch, property, scripts_path, properties_file
>               gen_fn = input_line.props["gen"]
>               if nested_properties:
>                   context["filename"] = nested_properties[0]
> +                try:
> +                    context["branches_base"] = input_line.props["branches_base"]
> +                except KeyError:
> +                    context["branches_base"] = None
>               values_list = input_line.gen_choices_list(context, False)
>           except KeyError:
>               for choice in input_line.choices:
>
Merged into Poky Master

Thanks
	Sau!

