Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 10E6A4C80BD4
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 10:38:25 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAJGcOJU027798
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 08:38:24 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 19 Nov 2010 08:38:23 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 19 Nov 2010 08:38:24 -0800
Message-ID: <4CE6A7FF.4040507@windriver.com>
Date: Fri, 19 Nov 2010 10:38:23 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1290179273.git.josh@linux.intel.com>
	<00ec71b3834779b9c4a278b403729f2822a41845.1290179273.git.josh@linux.intel.com>
In-Reply-To: <00ec71b3834779b9c4a278b403729f2822a41845.1290179273.git.josh@linux.intel.com>
X-OriginalArrivalTime: 19 Nov 2010 16:38:24.0474 (UTC)
	FILETIME=[2F4AD3A0:01CB8808]
Subject: Re: [PATCH 1/1] poky.conf: move the SDK install into versiondirectories
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
X-List-Received-Date: Fri, 19 Nov 2010 16:38:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

As we move beyond 1.0 work.  Would it make sense to focus on making sure the SDK
tooling works no matter where it is installed?

The compiler/linker can already do this... the other components that may be part
of the SDK may need some slight changes to detect their current run-time
location and adjust internal paths as necessary.

(We have experience doing this for Wind River Linux, so we should be able to
help out if it's a desired feature for Poky.)

--Mark

On 11/19/10 5:59 AM, Joshua Lock wrote:
> It's desirable to be able to have SDK toolchains installed from multiple
> versions of Poky, enable this by installing the toolchains into a subdirectory
> of /opt/poky/ based on the distro version.
> 
> Signed-off-by: Joshua Lock <josh@linux.intel.com>
> ---
>  meta/conf/distro/poky.conf |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/meta/conf/distro/poky.conf b/meta/conf/distro/poky.conf
> index b3c9f1a..ca73e64 100644
> --- a/meta/conf/distro/poky.conf
> +++ b/meta/conf/distro/poky.conf
> @@ -60,7 +60,7 @@ POKYLIBC ?= "eglibc"
>  require conf/distro/include/poky-${POKYLIBC}.inc
>  
>  SDK_NAME = "${DISTRO}-${POKYLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
> -SDKPATH = "/opt/${DISTRO}"
> +SDKPATH = "/opt/${DISTRO}/${DISTRO_VERSION}"
>  
>  CACHE = "${TMPDIR}/cache/${POKYMODE}-${POKYLIBC}${@['', '/' + str(bb.data.getVar('MACHINE', d, 1))][bool(bb.data.getVar('MACHINE', d, 1))]}${@['', '/' + str(bb.data.getVar('SDKMACHINE', d, 1))][bool(bb.data.getVar('SDKMACHINE', d, 1))]}"
>  


