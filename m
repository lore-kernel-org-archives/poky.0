Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B57BCE013D9
	for <poky@yoctoproject.org>; Thu,  4 Oct 2012 03:41:00 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q94Aew1D005923;
	Thu, 4 Oct 2012 11:40:58 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 05539-08; Thu,  4 Oct 2012 11:40:53 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q94Aelfx005917
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Thu, 4 Oct 2012 11:40:48 +0100
Message-ID: <1349347251.18301.80.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexander@mezon.ru
Date: Thu, 04 Oct 2012 11:40:51 +0100
In-Reply-To: <1349346798.6218.8.camel@localhost>
References: <1349343340.6218.4.camel@localhost>
	<1349346251.18301.74.camel@ted> <1349346365.6218.6.camel@localhost>
	<1349346798.6218.8.camel@localhost>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: building rpm distro
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
X-List-Received-Date: Thu, 04 Oct 2012 10:41:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-10-04 at 14:33 +0400, Alexander Khryukin wrote:
> Also in meta/lib/oe/distro_check.py 
> i see function
> 
> 
> def get_latest_released_mandriva_source_package_list():
>     "Returns list of all the name os packages in the latest mandriva
> distro"
>     latest =
> find_latest_numeric_release("http://distrib-coffee.ipsl.jussieu.fr/pub/linux/MandrivaLinux/devel/")
>     package_names =
> get_source_package_list_from_url("http://distrib-coffee.ipsl.jussieu.fr/pub/linux/MandrivaLinux/devel/%s/SRPMS/main/release/" % latest, "main")
> #    package_names +=
> get_source_package_list_from_url("http://distrib-coffee.ipsl.jussieu.fr/pub/linux/MandrivaLinux/official/%s/SRPMS/contrib/release/" % latest, "contrib")
>     package_names +=
> get_source_package_list_from_url("http://distrib-coffee.ipsl.jussieu.fr/pub/linux/MandrivaLinux/devel/%s/SRPMS/main/updates/" % latest, "updates")
> 
>     package_list=clean_package_list(package_names)
>     return latest, package_list
> 
> 
> It will downloads SRPMs from repo and build them, right?

No, this is part of the license checking code where we check which other
distributions contain a given piece of software for various reasons.

We do not download and build SRPMs directly.

Cheers,

Richard


