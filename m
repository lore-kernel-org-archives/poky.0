Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3EFA94C80BEF
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 08:15:30 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAOEFTd1029745
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 06:15:29 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 24 Nov 2010 06:15:29 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 24 Nov 2010 06:15:29 -0800
Message-ID: <4CED1E00.5030205@windriver.com>
Date: Wed, 24 Nov 2010 08:15:28 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Lu Jingdong <jingdong.lu@windriver.com>
References: <1290574021.1858.84.camel@eric-desktop>
In-Reply-To: <1290574021.1858.84.camel@eric-desktop>
X-OriginalArrivalTime: 24 Nov 2010 14:15:29.0826 (UTC)
	FILETIME=[0C782020:01CB8BE2]
Cc: poky <poky@yoctoproject.org>
Subject: Re: [PATCH 3/3] Add new package perl-uri in order to enable graphic LSB test(OLVER-Core test).
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
X-List-Received-Date: Wed, 24 Nov 2010 14:15:30 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Same as the previous no DESCRIPTION or SUMMARY

On 11/23/10 10:47 PM, Lu Jingdong wrote:
> Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
> ---
>  meta/recipes-devtools/perl/perl-uri_1.56.bb |   17 +++++++++++++++++
>  1 files changed, 17 insertions(+), 0 deletions(-)
>  create mode 100644 meta/recipes-devtools/perl/perl-uri_1.56.bb
> 
> diff --git a/meta/recipes-devtools/perl/perl-uri_1.56.bb
> b/meta/recipes-devtools/perl/perl-uri_1.56.bb
> new file mode 100644
> index 0000000..9e2cfc7
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-uri_1.56.bb
> @@ -0,0 +1,17 @@
> +SECTION = "libs"
> +LICENSE = "Artistic"
> +DEPENDS += "perl"
> +
> +SRC_URI = "http://www.cpan.org/authors/id/G/GA/GAAS/URI-${PV}.tar.gz"
> +
> +S = "${WORKDIR}/URI-${PV}"
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


