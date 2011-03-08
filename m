Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A35814C80A4F
	for <poky@yoctoproject.org>; Mon,  7 Mar 2011 19:00:11 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2810ADa007183
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 7 Mar 2011 17:00:10 -0800 (PST)
Received: from [128.224.162.205] (128.224.162.205) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 7 Mar 2011 17:00:09 -0800
Message-ID: <4D757F97.8090601@windriver.com>
Date: Tue, 8 Mar 2011 09:00:07 +0800
From: Lu Jingdong <jingdong.lu@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: Nitin A Kamble <nitin.a.kamble@intel.com>
References: <cover.1299516806.git.nitin.a.kamble@intel.com>
	<0cfc1314469e2fe9412ec0285a9bbe577a195258.1299516806.git.nitin.a.kamble@intel.com>
In-Reply-To: <0cfc1314469e2fe9412ec0285a9bbe577a195258.1299516806.git.nitin.a.kamble@intel.com>
X-Originating-IP: [128.224.162.205]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] gcc-runtime: fix LSB library checks for libstdc++.so.6
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
X-List-Received-Date: Tue, 08 Mar 2011 01:00:11 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 03/08/2011 12:55 AM, Nitin A Kamble wrote:
> ...
>
> diff --git a/meta/recipes-devtools/gcc/gcc-configure-runtime.inc b/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
> index 6cc11e2..d4dfbc2 100644
> --- a/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
> +++ b/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
> @@ -1,5 +1,6 @@
>   require gcc-configure-common.inc
>
> +CXXFLAGS_EXTA = ""
Maybe a little spell mistake, should be "EXTRA". :-)
>   EXTRA_OECONF_PATHS = " \
>       --with-local-prefix=${STAGING_DIR_TARGET}${prefix} \
>       --with-gxx-include-dir=${includedir}/c++/ \
> diff --git a/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
> index 093f9bf..c1e680d 100644
> --- a/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
> +++ b/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
> @@ -1,4 +1,4 @@
> -PR = "r2"
> +PR = "r3"
>
>   require gcc-${PV}.inc
>   require gcc-configure-runtime.inc


-- 
Lu Jingdong
jingdong.lu@windriver.com
China, Wind River


