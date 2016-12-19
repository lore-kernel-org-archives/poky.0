Return-Path: <kristian.amlie@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3386FE00CF9; Mon, 19 Dec 2016 00:15:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.53 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E427EE00CD5
	for <poky@yoctoproject.org>; Mon, 19 Dec 2016 00:15:00 -0800 (PST)
Received: by mail-lf0-f53.google.com with SMTP id c13so48688454lfg.0
	for <poky@yoctoproject.org>; Mon, 19 Dec 2016 00:15:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=cQCR3wMF4K+GTzVtt/nsUGAGlDvixl/ySlHe3bDWExo=;
	b=HEgyM+0UVAjafBMZIJBD/qMKRqR98epQFd+HpFZJUjALa9Z3k8sV2NNII2mOHl6af3
	aHSspko4VmiilaZUMEVfmT1Uy+siLNbA+O3wCYv+K4vRs2bQ509ZAoiGTCN/d/VvITJB
	imZsnHlVQgIBoW4N1roUK6r9po5aoHRZyO6dtYDUngmE8hHU1lTfSdzbNRRYPo86rorH
	Q7MFeHsI1f8ndlUQvgYmeAw6Zj+6q/UAyFNnxP5jlTf+5Xd+yxMZIoa8I+U2N6NzwDb7
	zsICx9SaURABAxemmkIyrB0uNv8128tybV3IvG0ITHVYxSggrBf1OdLaa332FJrJLnK/
	EeIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=cQCR3wMF4K+GTzVtt/nsUGAGlDvixl/ySlHe3bDWExo=;
	b=aSnMEc/v6cTO+wDpeSOaRWF0NivlOrCJRQ81FQzrx9zizG9zoS+cg+Bl8uQzwGkSKT
	tMSVRQF50kHQfoMDr5cED3XrfFo1hyYFQVk94yIWKM/BOGYLLPJMzFgdfPW0apZ874cA
	DVgnhcH0HHbU2IgYYtL3VwXz8qfD25n1I/GwoRVdhLIqNPlcfAr+0XI+EahjeuC6SPAG
	jWw/aOqrptkSRb8axWQz+yTnAT1k2Mjq9OWKlTClfVR7ZGMmgal2FL3uSFEKfHPGTHWl
	EUYbgqielvoD+ujRZg0DTy+Q39YpHs8n7k1wNH9SpAVOkbqyL2UfnTBY8xe1wxPU+SoN
	xmuw==
X-Gm-Message-State: AKaTC02ArCuS1BWMbqaeeXYukAtnONzqnbwxnrgmK/S33hL9Ou57LP9isq/KXM1iVSyg0w==
X-Received: by 10.25.215.102 with SMTP id o99mr4014750lfg.57.1482135299853;
	Mon, 19 Dec 2016 00:14:59 -0800 (PST)
Received: from [10.25.0.170] ([195.159.140.90])
	by smtp.googlemail.com with ESMTPSA id
	67sm3595939ljf.35.2016.12.19.00.14.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Dec 2016 00:14:58 -0800 (PST)
To: ed.bartosh@linux.intel.com
References: <1481873568-13550-1-git-send-email-kristian.amlie@mender.io>
	<20161216142855.GA6398@linux.intel.com>
From: Kristian Amlie <kristian.amlie@mender.io>
Message-ID: <eca5fc15-a45f-f320-6e7a-733cb752e322@mender.io>
Date: Mon, 19 Dec 2016 09:14:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <20161216142855.GA6398@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH v1] u-boot/beaglebone: Select Beaglebone Black target specifically.
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
X-List-Received-Date: Mon, 19 Dec 2016 08:15:04 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 16/12/16 15:28, Ed Bartosh wrote:
> On Fri, Dec 16, 2016 at 08:32:48AM +0100, Kristian Amlie wrote:
>> The am335x_evm_config target has a subtle problem which is not present
>> in the am335x_boneblack_config target: When booting from an external
>> MMC card, the internal MMC is not accessible using the former target.
>>
>> This problem was introduced in U-Boot in commit 80b24fcd3083515e6b961,
>> due to the addition of the CONFIG_DM_MMC option, and the
>> am335x_boneblack_config target does not have this problem.
>>
>> Signed-off-by: Kristian Amlie <kristian.amlie@mender.io>
>> ---
>>  meta-yocto-bsp/conf/machine/beaglebone.conf | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
>> index fc6a527..24a95b4 100644
>> --- a/meta-yocto-bsp/conf/machine/beaglebone.conf
>> +++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
>> @@ -31,7 +31,7 @@ KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
>>  
>>  SPL_BINARY = "MLO"
>>  UBOOT_SUFFIX = "img"
>> -UBOOT_MACHINE = "am335x_evm_config"
>> +UBOOT_MACHINE = "am335x_boneblack_config"
>>  UBOOT_ENTRYPOINT = "0x80008000"
>>  UBOOT_LOADADDRESS = "0x80008000"
>>  
> 
> Would this work for Beaglebone white?

I don't have one, so unfortunately I can't test it. However, the
beagleboard.org site states that the differences between the two are the
on-board USB JTAG and serial adapters. Looking at the differences of the
two configs I can't find anything obvious that would influence this
(I'll admit that I don't fully understand all the options though).

Below is the (sorted) difference. I can't spot anything bad, can you?


--- configs/am335x_evm_defconfig.sort	2016-12-19 08:50:26.674878278 +0100
+++ configs/am335x_boneblack_defconfig.sort	2016-12-19
08:50:39.163314913 +0100
@@ -1,6 +1,9 @@
 CONFIG_AM33XX=y
 CONFIG_ARM=y
-# CONFIG_BLK is not set
+CONFIG_AUTOBOOT_DELAY_STR="d"
+CONFIG_AUTOBOOT_KEYED=y
+CONFIG_AUTOBOOT_PROMPT="Press SPACE to abort autoboot in %d seconds\n"
+CONFIG_AUTOBOOT_STOP_STR=" "
 CONFIG_CMD_ASKENV=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_DFU=y
@@ -21,38 +24,27 @@
 CONFIG_CMD_SF=y
 CONFIG_CMD_SPI=y
 CONFIG_CMD_USB=y
-CONFIG_DEFAULT_DEVICE_TREE="am335x-evm"
 CONFIG_DFU_MMC=y
-CONFIG_DFU_NAND=y
 CONFIG_DFU_RAM=y
-CONFIG_DM_ETH=y
-CONFIG_DM_I2C=y
-# CONFIG_DM_MMC_OPS is not set
-CONFIG_DM_MMC=y
+CONFIG_DFU_TFTP=y
 CONFIG_FIT=y
 CONFIG_G_DNL_MANUFACTURER="Texas Instruments"
 CONFIG_G_DNL_PRODUCT_NUM=0xd022
 CONFIG_G_DNL_VENDOR_NUM=0x0451
 CONFIG_HUSH_PARSER=y
-CONFIG_OF_CONTROL=y
-CONFIG_OF_LIST="am335x-evm am335x-bone am335x-boneblack am335x-evmsk
am335x-bonegreen am335x-icev2"
-CONFIG_OMAP_TIMER=y
-CONFIG_RSA=y
+CONFIG_OF_LIBFDT=y
 CONFIG_SPI_FLASH_WINBOND=y
 CONFIG_SPI_FLASH=y
-CONFIG_SPL_LOAD_FIT=y
-CONFIG_SPL_MTD_SUPPORT=y
 CONFIG_SPL_MUSB_NEW_SUPPORT=y
-CONFIG_SPL_OF_LIBFDT=y
+# CONFIG_SPL_NAND_SUPPORT is not set
 CONFIG_SPL_OS_BOOT=y
 CONFIG_SPL_STACK_R_ADDR=0x82000000
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL=y
 CONFIG_SYS_CONSOLE_INFO_QUIET=y
-CONFIG_SYS_EXTRA_OPTIONS="NAND"
+CONFIG_SYS_EXTRA_OPTIONS="EMMC_BOOT"
 CONFIG_SYS_NS16550=y
 CONFIG_TARGET_AM335X_EVM=y
-CONFIG_TIMER=y
 CONFIG_USB_GADGET_DOWNLOAD=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_MUSB_GADGET=y


I could also fire off an email to the U-Boot list if we're not confident
in this fix.

-- 
Kristian

