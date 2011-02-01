Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 069074C8006D
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 16:00:47 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p11M2jxW006112; Tue, 1 Feb 2011 22:02:45 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id JMapTSKEglSf; Tue,  1 Feb 2011 22:02:45 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p11M2d0a006095
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 1 Feb 2011 22:02:42 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Nitin A Kamble <nitin.a.kamble@intel.com>
In-Reply-To: <406a52d39863e35b5013c23b886e885d44a83e32.1296560850.git.nitin.a.kamble@intel.com>
References: <cover.1296560850.git.nitin.a.kamble@intel.com>
	<406a52d39863e35b5013c23b886e885d44a83e32.1296560850.git.nitin.a.kamble@intel.com>
Date: Tue, 01 Feb 2011 22:00:28 +0000
Message-ID: <1296597628.13501.21256.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/4] elfutils: add a missing depedancy
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
X-List-Received-Date: Tue, 01 Feb 2011 22:00:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-02-01 at 03:57 -0800, Nitin A Kamble wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> while implementing the mklibs optimization, found out that an executable from
> elfutils package, viz eu-findtextrel is dynamically linked to libbz2.so
> library. But the poky-image-minimal did not have that library.
>   adding the depedency to the bzip2 to get that library for eu-fundtextrel
> executable.
> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  meta/recipes-devtools/elfutils/elfutils_0.148.bb |    3 ++-
>  1 files changed, 2 insertions(+), 1 deletions(-)
> 
> diff --git a/meta/recipes-devtools/elfutils/elfutils_0.148.bb b/meta/recipes-devtools/elfutils/elfutils_0.148.bb
> index 44b3c52..14060e6 100644
> --- a/meta/recipes-devtools/elfutils/elfutils_0.148.bb
> +++ b/meta/recipes-devtools/elfutils/elfutils_0.148.bb
> @@ -5,8 +5,9 @@ LICENSE = "GPLv2 with exceptions"
>  LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3\
>                      file://EXCEPTION;md5=570adcb0c1218ab57f2249c67d0ce417"
>  DEPENDS = "libtool zlib"
> +RDEPENDS = "bzip2"

There should be a package name here, e.g. RDEPENDS_${PN}.

Also, why is the shlibs code not picking up the dependency
automatically? Is it dlopen'd?

Cheers,

Richard


