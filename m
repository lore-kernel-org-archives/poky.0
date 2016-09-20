Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4968E00A7D; Tue, 20 Sep 2016 02:01:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3CA9E00A61
	for <poky@yoctoproject.org>; Tue, 20 Sep 2016 02:01:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u8K91gf6021716
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 20 Sep 2016 02:01:42 -0700 (PDT)
Received: from [128.224.162.240] (128.224.162.240) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 20 Sep 2016 02:01:41 -0700
To: "Tan, Raymond" <raymond.tan@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
References: <F0CA9E243F4F424B836EAC30E41BF4CF5DF3C973@PGSMSX104.gar.corp.intel.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <b23bead8-7a49-60d4-aaab-3fb2e7c23856@windriver.com>
Date: Tue, 20 Sep 2016 17:01:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <F0CA9E243F4F424B836EAC30E41BF4CF5DF3C973@PGSMSX104.gar.corp.intel.com>
Subject: Re: [meta] live image booting pauses with 'waiting for removable media' on Krogoth
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
X-List-Received-Date: Tue, 20 Sep 2016 09:01:44 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit



On 09/19/2016 09:52 PM, Tan, Raymond wrote:
> Dear All,
>
> While booting live image with core-image-sato.hddimg, the boot stalls with the message "waiting for removable media".
> If I set "debugshell" in the kernel boot parameter, after the default 30 seconds sleep to wait for mounted device, I will get the error "Cannot find rootfs.img file in /run/media/*, dropping to shell".
>
> If I edit the init-live.sh to manually mount the /dev/hda drive, the boot will complete successfully. It seems that the udev isn't mounting the /dev/hda.

Try to edit the boot menu when starting boot, for grub, press "e", for
syslinux, press "tab", IIRC. Then change root=/dev/foo to root=/dev/hdaX,
It is root=/dev/sda2 by default ? If you can't boot it, does your kernel
support scsi drive ? Or you can set ROOT_VM = "root=/dev/hdaX" in local.conf
and rebuild the image.

// Robert

>
> This issue is only seen in Krogoth branch, but not on Jethro.
>
> What could possibly be the problem?
>
> Warm Regards,
>
>  Raymond Tan
>
>

