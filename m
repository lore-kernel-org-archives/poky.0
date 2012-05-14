Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DF80E013A6
	for <poky@yoctoproject.org>; Mon, 14 May 2012 15:36:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q4EMabTg012093
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 14 May 2012 15:36:37 -0700 (PDT)
Received: from msp-dhcp25.wrs.com (172.25.34.25) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 14 May 2012 15:36:37 -0700
Message-ID: <4FB188F4.6010406@windriver.com>
Date: Mon, 14 May 2012 17:36:36 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:12.0) Gecko/20120428 Thunderbird/12.0.1
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4FB18749.5060201@mlbassoc.com>
In-Reply-To: <4FB18749.5060201@mlbassoc.com>
Subject: Re: Can't build core-image-lsb
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
X-List-Received-Date: Mon, 14 May 2012 22:36:40 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

A couple of patches were sent up to the oe-core list today to deal with this.

It is a bug.

--Mark

On 5/14/12 5:29 PM, Gary Thomas wrote:
> Trying with today's master:
>     % bitbake core-image-lsb
>
> Build Configuration:
> BB_VERSION        = "1.15.2"
> TARGET_ARCH       = "arm"
> TARGET_OS         = "linux-gnueabi"
> MACHINE           = "beagleboard"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.2+snapshot-20120514"
> TUNE_FEATURES     = "armv7a vfp neon cortexa8"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "master:12b4543ac9f54c0db0ee4a7ee546a71946a051f8"
>
> | error: Failed dependencies:
> |       gdk-pixbuf-xlib is needed by task-core-lsb-graphic-add-1.0-r8.armv7a
> NOTE: package core-image-lsb-1.0-r0: task do_rootfs: Failed
> ERROR: Task 8 (/home/local/poky-master/meta/recipes-extended/images/core-image-lsb.bb, do_rootfs) failed with exit code '1'
>


