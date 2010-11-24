Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 651DC4C803A5
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 08:15:07 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAOEF6BJ029649
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 06:15:06 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 24 Nov 2010 06:15:06 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 24 Nov 2010 06:15:06 -0800
Message-ID: <4CED1DE9.9020208@windriver.com>
Date: Wed, 24 Nov 2010 08:15:05 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Lu Jingdong <jingdong.lu@windriver.com>
References: <1290573970.1858.83.camel@eric-desktop>
In-Reply-To: <1290573970.1858.83.camel@eric-desktop>
X-OriginalArrivalTime: 24 Nov 2010 14:15:06.0904 (UTC)
	FILETIME=[FECE8180:01CB8BE1]
Cc: poky <poky@yoctoproject.org>
Subject: Re: [PATCH 2/3] Add new package libxml-perl in order to enable graphic LSB test(OLVER-Core test).
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
X-List-Received-Date: Wed, 24 Nov 2010 14:15:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I don't see a DESCRIPTION or SUMMARY field in this new package.

--Mark

On 11/23/10 10:46 PM, Lu Jingdong wrote:
> Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
> ---
>  meta/recipes-devtools/perl/libxml-perl_0.08.bb |   15 +++++++++++++++
>  1 files changed, 15 insertions(+), 0 deletions(-)
>  create mode 100644 meta/recipes-devtools/perl/libxml-perl_0.08.bb
> 
> diff --git a/meta/recipes-devtools/perl/libxml-perl_0.08.bb
> b/meta/recipes-devtools/perl/libxml-perl_0.08.bb
> new file mode 100644
> index 0000000..6c3c9c7
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/libxml-perl_0.08.bb
> @@ -0,0 +1,15 @@
> +SECTION = "libs"
> +LICENSE = "Artistic"
> +DEPENDS += "libxml-parser-perl"
> +
> +SRC_URI =
> "http://www.cpan.org/modules/by-module/XML/${PN}-${PV}.tar.gz"
> +
> +EXTRA_CPANFLAGS = "EXPATLIBPATH=${STAGING_LIBDIR} EXPATINCPATH=
> ${STAGING_INCDIR}"
> +
> +inherit cpan
> +
> +do_compile() {
> +       export LIBC="$(find ${STAGING_DIR_TARGET}/${base_libdir}/ -name
> 'libc-*.so')"
> +       cpan_do_compile
> +}
> +


