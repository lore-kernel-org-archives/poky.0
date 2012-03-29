Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 859E9E0059A
	for <poky@yoctoproject.org>; Thu, 29 Mar 2012 06:23:20 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2TDNHPn031690;
	Thu, 29 Mar 2012 14:23:17 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31537-01; Thu, 29 Mar 2012 14:23:12 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2TDN8d1031683
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 29 Mar 2012 14:23:09 +0100
Message-ID: <1333027388.17502.2.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Thu, 29 Mar 2012 14:23:08 +0100
In-Reply-To: <eb5271caf52a62ab102078eb90fcd0482b74536e.1333022130.git.dongxiao.xu@intel.com>
References: <cover.1333022130.git.dongxiao.xu@intel.com>
	<eb5271caf52a62ab102078eb90fcd0482b74536e.1333022130.git.dongxiao.xu@intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-yocto: Define DISTRO in layer.conf
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
X-List-Received-Date: Thu, 29 Mar 2012 13:23:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-03-29 at 20:01 +0800, Dongxiao Xu wrote:
> Add the definition of DISTRO variable in meta-yocto/conf/layer.conf,
> and remove the corresponding definition in local.conf.sample.
> 
> As we know, if we source oe-init-build-env in Yocto project environment,
> we will have DISTRO="poky" set in local.conf by default, where the
> "poky" DISTRO comes from the meta-yocto layer. If user deletes
> meta-yocto layer from BBLAYERS in bblayers.conf, and then error will
> happen when bitbake parsing the local.conf, since it could not find
> where the "poky" DISTRO comes from.
> 
> Putting the DISTRO definition in layer.conf to avoid defining two
> related variables (DISTRO and BBLAYERS) in two separate
> configuration files (local.conf and bblayers.conf).
> 
> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
> ---
>  meta-yocto/conf/distro/poky.conf  |    1 -
>  meta-yocto/conf/layer.conf        |    1 +
>  meta-yocto/conf/local.conf.sample |    4 ++--
>  3 files changed, 3 insertions(+), 3 deletions(-)

I'm afraid this is the wrong approach. The UI should simply not allow
selection of a DISTRO option which is no longer available.

Setting DISTRO in local.conf is the way people expect to use the system
and we can't change that.

Cheers,

Richard


