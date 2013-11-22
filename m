Return-Path: <Qi.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B350E006B7
	for <poky@yoctoproject.org>; Thu, 21 Nov 2013 21:06:12 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id rAM56Ce3008253
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 21 Nov 2013 21:06:12 -0800 (PST)
Received: from [128.224.162.213] (128.224.162.213) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.347.0;
	Thu, 21 Nov 2013 21:06:12 -0800
Message-ID: <528EE659.4010804@windriver.com>
Date: Fri, 22 Nov 2013 13:06:33 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1383707515.git.Qi.Chen@windriver.com>
	<923963c295c4c3513a4752f51bd94e3c5c1fcb8f.1383707515.git.Qi.Chen@windriver.com>
In-Reply-To: <923963c295c4c3513a4752f51bd94e3c5c1fcb8f.1383707515.git.Qi.Chen@windriver.com>
X-Originating-IP: [128.224.162.213]
Subject: Re: [PATCH 1/1] poky.conf: use weak assignment for WARN_QA and ERROR_QA
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
X-List-Received-Date: Fri, 22 Nov 2013 05:06:13 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

ping

On 11/06/2013 11:13 AM, Qi.Chen@windriver.com wrote:
> From: Chen Qi <qi.chen@windriver.com>
>
> Use weak assignment for WARN_QA and ERROR_QA in the ditro configuration
> file (poky.conf) to allow for override in local.conf.
>
> As local.conf is included before the distro configuration file, we cannot
> easily set custom WARN_QA and ERROR_QA in local.conf if we don't use
> weak assignment in poky.conf.
>
> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> ---
>   meta-yocto/conf/distro/poky.conf |    4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> index 44bc4c6..c4643d2 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -101,8 +101,8 @@ OELAYOUT_ABI = "8"
>   INHERIT += "poky-sanity"
>   
>   # QA check settings - a little stricter than the OE-Core defaults
> -WARN_QA = "textrel files-invalid incompatible-license xorg-driver-abi libdir"
> -ERROR_QA = "dev-so debug-deps dev-deps debug-files arch pkgconfig la perms \
> +WARN_QA ?= "textrel files-invalid incompatible-license xorg-driver-abi libdir"
> +ERROR_QA ?= "dev-so debug-deps dev-deps debug-files arch pkgconfig la perms \
>               useless-rpaths rpaths staticdev ldflags pkgvarcheck already-stripped \
>               compile-host-path dep-cmp installed-vs-shipped install-host-path \
>               packages-list perm-config perm-line perm-link pkgv-undefined \


