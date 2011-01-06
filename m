Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0201C4C8106A
	for <poky@pokylinux.org>; Thu,  6 Jan 2011 04:14:58 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p06AGSRt024425; Thu, 6 Jan 2011 10:16:29 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id ERO1G68UKs-i; Thu,  6 Jan 2011 10:16:28 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p06AGLZN024401
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 6 Jan 2011 10:16:23 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kevin Tian <kevin.tian@intel.com>
In-Reply-To: <849307$b15lvd@azsmga001.ch.intel.com>
References: <849307$b15lvd@azsmga001.ch.intel.com>
Date: Thu, 06 Jan 2011 10:14:18 +0000
Message-ID: <1294308858.17519.24109.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@pokylinux.org
Subject: Re: [PATCH 2/4] flex-native: create a wrapper script for sstate installation
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
X-List-Received-Date: Thu, 06 Jan 2011 10:14:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Kevin,

On Wed, 2011-01-05 at 19:42 +0800, Kevin Tian wrote:
> flex-native encodes M4 staging path in its binary, which breaks sstate
> installation in a new build environment. Use create_wrapper to create
> a wrapper script which explicitly set M4 environmental variable to the
> new path
> 
> Signed-off-by: Kevin Tian <kevin.tian@intel.com>
> ---
>  meta/recipes-devtools/flex/flex.inc       |    6 ++++++
>  meta/recipes-devtools/flex/flex_2.5.35.bb |    2 +-
>  2 files changed, 7 insertions(+), 1 deletions(-)
> 
> diff --git a/meta/recipes-devtools/flex/flex.inc b/meta/recipes-devtools/flex/flex.inc
> index 93fa7e8..e5e423e 100644
> --- a/meta/recipes-devtools/flex/flex.inc
> +++ b/meta/recipes-devtools/flex/flex.inc
> @@ -11,3 +11,9 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/flex/flex-${PV}.tar.bz2 "
>  
>  inherit autotools
>  
> +SYSROOT_PREPROCESS_FUNCS_append_virtclass-native = " flex_path_fixup"
> +
> +flex_path_fixup() {
> +	create_wrapper ${SYSROOT_DESTDIR}/${STAGING_DIR_HOST}/${bindir}/flex \
> +		M4=${STAGING_BINDIR_NATIVE}/m4
> +}

I was thinking about this a little further and I'd prefer to avoid using
the SYSROOT_*PROCESS_FUNCS if at all possible. How about something like:

do_install_append_virtclass-native() {
	create_wrapper ${SYSROOT_DESTDIR}/${STAGING_DIR_HOST}/${bindir}/flex \
		M4=${STAGING_BINDIR_NATIVE}/m4
}

?

Cheers,

Richard



