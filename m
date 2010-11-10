Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E2F804C81001
	for <poky@lists.pokylinux.org>; Wed, 10 Nov 2010 12:52:35 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Nov 2010 10:52:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,179,1288594800"; d="scan'208";a="347101029"
Received: from unknown (HELO [10.255.13.55]) ([10.255.13.55])
	by azsmga001.ch.intel.com with ESMTP; 10 Nov 2010 10:52:34 -0800
Message-ID: <4CDAE9F2.6090800@intel.com>
Date: Wed, 10 Nov 2010 10:52:34 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
References: <4CD2699E.7010008@windriver.com>
In-Reply-To: <4CD2699E.7010008@windriver.com>
Cc: "poky@lists.pokylinux.org" <poky@lists.pokylinux.org>
Subject: Re: [PULL]: Add lsb_release needed by lsb test
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
X-List-Received-Date: Wed, 10 Nov 2010 18:52:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/04/2010 01:06 AM, Xiaofeng Yan wrote:
>    meta/recipes-extended/lsb/lsb_1.4.bb |   83
> +++++++++++++++++++++++++++++++++++
>    1 file changed, 83 insertions(+)
>
> Xiaofeng Yan (1):
>         LSB: Add a new package
>
Xiaofeng,

Can you please review this recipe and the upstream source code again and 
correct the LICENSE to be more specific than GPL?  Is it GPLv2, or 
GPLv2+ (see the wiki for details).

Sau!

> Pull URL:
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/distro
>
> _______________________________________________
> poky mailing list
> poky@pokylinux.org
> https://lists.pokylinux.org/listinfo/poky
>




