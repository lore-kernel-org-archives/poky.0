Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 1EF78E0072C
	for <poky@yoctoproject.org>; Fri,  1 Mar 2013 09:53:05 -0800 (PST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r21I0Ui5003742; Fri, 1 Mar 2013 18:00:30 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 7Nm3S9xC1nKl; Fri,  1 Mar 2013 18:00:30 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r21I0OaK003718
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Fri, 1 Mar 2013 18:00:28 GMT
Message-ID: <1362160366.11004.0.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 01 Mar 2013 17:52:46 +0000
In-Reply-To: <1362154793-10296-1-git-send-email-Martin.Jansa@gmail.com>
References: <1362135473-20635-1-git-send-email-Martin.Jansa@gmail.com>
	<1362154793-10296-1-git-send-email-Martin.Jansa@gmail.com>
X-Mailer: Evolution 3.6.3-1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCHv2] poky.conf: update SANITY_TESTED_DISTROS
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
X-List-Received-Date: Fri, 01 Mar 2013 17:53:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2013-03-01 at 17:19 +0100, Martin Jansa wrote:
> * use DistributorId-Release
> * please test values for Yocto, Poky, CentOS and openSUSE
> 
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>  meta-yocto/conf/distro/poky.conf | 40 +++++++++++++++++++---------------------
>  1 file changed, 19 insertions(+), 21 deletions(-)
> 
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> index c48b492..48180d7 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -69,27 +69,25 @@ CONNECTIVITY_CHECK_URIS ?= " \
>               http://bugzilla.yoctoproject.org/report.cgi"
>  
>  SANITY_TESTED_DISTROS ?= " \
> -            Yocto (Built by Poky 7.0) 1.2 \n \
> -            Poky 7.0 (Yocto Project 1.2 Reference Distro) 1.2 \n \
> -            Poky 8.0 (Yocto Project 1.3 Reference Distro) 1.3 \n \
> -            Ubuntu 10.04.4 LTS \n \
> -            Ubuntu 11.10 \n \
> -            Ubuntu 12.04 LTS \n \
> -            Ubuntu 12.04.2 LTS \n \
> -            Ubuntu 12.04.1 LTS \n \
> -            Ubuntu 12.10 \n \
> -            Fedora release 16 (Verne) \n \
> -            Fedora release 17 (Beefy Miracle) \n \
> -            Fedora release 18 (Spherical Cow) \n \
> -            CentOS release 5.6 (Final) \n \
> -            CentOS release 5.7 (Final) \n \
> -            CentOS release 5.8 (Final) \n \
> -            CentOS release 6.3 (Final) \n \
> -            Debian GNU/Linux 6.0.6 (squeeze) \n \
> -            Debian GNU/Linux 7.0 (wheezy) \n \
> -            openSUSE 11.4 \n \
> -            openSUSE 12.1 \n \
> -            openSUSE 12.2 \n \
> +            Yocto-1.2 \n \
> +            Poky-1.2 \n \
> +            Poky-1.3 \n \
> +            Ubuntu-10.04 \n \
> +            Ubuntu-11.10 \n \
> +            Ubuntu-12.04 \n \
> +            Ubuntu-12.10 \n \
> +            Fedora-16 \n \
> +            Fedora-17 \n \
> +            Fedora-18 \n \
> +            CentOS-5.6 \n \
> +            CentOS-5.7 \n \
> +            CentOS-5.8 \n \
> +            CentOS-6.3 \n \
> +            Debian-6.0 \n \
> +            Debian-7.0 \n \
> +            SUSE-LINUX-11.4 \n \
> +            SUSE-LINUX-12.1 \n \
> +            SUSE-LINUX-12.2 \n \
>  	    "
>  
>  # Default hash policy for distro

I thought I'd already merged this?

Thanks for taking care of it though. Can you rediff against master
please?

Thanks,

Richard


