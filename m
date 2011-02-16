Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4FF8B4C800AC
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 11:06:51 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1GH671q012027;
	Wed, 16 Feb 2011 17:06:07 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 11487-10; Wed, 16 Feb 2011 17:06:04 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1GH5xNC012021
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 16 Feb 2011 17:05:59 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Lianhao Lu <lianhao.lu@intel.com>
In-Reply-To: <cover.1297848716.git.lianhao.lu@intel.com>
References: <cover.1297848716.git.lianhao.lu@intel.com>
Date: Wed, 16 Feb 2011 17:05:58 +0000
Message-ID: <1297875958.11289.290.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] [Bug#728] corrected environment files content
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
X-List-Received-Date: Wed, 16 Feb 2011 17:06:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-16 at 17:35 +0800, Lianhao Lu wrote:
> From: Lianhao Lu <lianhao.lu@intel.com>
> 
> 1. Added libtool sysroot related param value into environment files.
> 2. Moved common code between meta-environment.bb and populate_sdk.bbclass into toolchain-script.bbclass.
> 3. Set CONFIG_SITE to pkgconfig site files for meta-toolchain.bb.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: llu/bug728
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug728
> 
> Thanks,
>     Lianhao Lu <lianhao.lu@intel.com>

Hi Lianhao,

It looks like part of the first patch should really be in the second
patch?

I also don't understand the third change, how are CONFIG_SITE and
pkgconfig connected?

Cheers,

Richard


