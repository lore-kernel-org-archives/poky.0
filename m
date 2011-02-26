Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9CC7B4C800C0
	for <poky@yoctoproject.org>; Sat, 26 Feb 2011 16:49:42 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 Feb 2011 14:49:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,233,1297065600"; d="scan'208";a="713697040"
Received: from unknown (HELO [10.255.12.138]) ([10.255.12.138])
	by orsmga001.jf.intel.com with ESMTP; 26 Feb 2011 14:49:32 -0800
Message-ID: <4D69837C.5080505@intel.com>
Date: Sat, 26 Feb 2011 14:49:32 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1298452018.git.jingdong.lu@windriver.com>
	<86d25ba89b074908f132d5e9cc7438e11e00ab7a.1298452018.git.jingdong.lu@windriver.com>
In-Reply-To: <86d25ba89b074908f132d5e9cc7438e11e00ab7a.1298452018.git.jingdong.lu@windriver.com>
Subject: Re: [PATCH 1/2] libxml-parser-perl: remove FILES_${PN}
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
X-List-Received-Date: Sat, 26 Feb 2011 22:49:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/23/2011 01:28 AM, Jingdong Lu wrote:
> From: Jingdong Lu<jingdong.lu@windriver.com>
>
> Because of the error path in FILES_${PN} we got nothing in libxml-parser-perl package.
> Romove "FILES_${PN}"
>
> Signed-off-by: Jingdong Lu<jingdong.lu@windriver.com>
> ---
>   .../perl/libxml-parser-perl_2.36.bb                |    4 ----
>   1 files changed, 0 insertions(+), 4 deletions(-)
>
> diff --git a/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb b/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb
> index 5742879..2565f8b 100644
> --- a/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb
> +++ b/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb
> @@ -19,7 +19,3 @@ do_compile() {
>   	cpan_do_compile
>   }
>
> -
> -
> -FILES_${PN} = "${PERLLIBDIRS}/auto/XML/Parser/Expat/* \
> -                ${PERLLIBDIRS}/XML"
Verified and merged into master

Thanks for your patience on this change.
	
Sau!


