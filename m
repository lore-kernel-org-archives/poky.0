Return-Path: <kristian.amlie@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34DB9E00D2B; Tue, 20 Dec 2016 00:10:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4544AE00828
	for <poky@yoctoproject.org>; Tue, 20 Dec 2016 00:10:42 -0800 (PST)
Received: by mail-lf0-f52.google.com with SMTP id t196so70772066lff.3
	for <poky@yoctoproject.org>; Tue, 20 Dec 2016 00:10:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=1KAMMemRJF7ZI7uSoB45FC9imIgxlSNc2kJlynsTBmk=;
	b=l6KrGpQvErICNSZ1jHdvHDLAXYcq2UPuFweGRDXbrACA8twiEbTOkqcmfdPf2kIgBC
	ePCoXm64MZbL3HIvi9i84FR3hK09oPXz4C24FxJF8lBrnbBYxfbFIB4jK7Wanm8xrVTQ
	9Qk/Sm7lavPKwCSyEx51n8riG+3ceBVKmootDFsSi9kD8kMdsXk1W34ZDBWE0lC2x5pW
	0Plcqx/UEUc0HNT2vViUiStvMED/pRW7p9fSFWIBf8NUxjqlIm/UssrwLJqGQtiYoCkw
	A+6ynD7G4SECT5MntTahpjX7WMp7KrPBsqlsASZGl+a4uZAyUYiWhAMiPw+nPdPtWCdU
	8f8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=1KAMMemRJF7ZI7uSoB45FC9imIgxlSNc2kJlynsTBmk=;
	b=RtEupvIRrsRH/SgGZ/RHCCwYqku32fx7Y9qrT8eWFlSlq3zx2e5khQsVMeNH2zdsiP
	xBTG5U87fokSRhWUngvlkT6RKIXU0Y1Qeb01Py8+5maEVLJAtsUHpztPYkcGG9WfWHLY
	9lD8emLkJV4hJ0ZOSII1en4sFJJIju5GST78gi96zhmoPi4T++nXjlKPPkZzinQVxOXi
	hDIUhryqpT8J31puDpxChb7dGzAsLk6Hl5co2uikRkd1IBnHSDw+s72A0Jiz1/tjKZRG
	Ny1C7/cyiJh12WrtciQkPmfbrYhJWkFK8Bzb5onjG0e7G6lKMP2SQ2enqPGWgrMoAZP0
	cMCw==
X-Gm-Message-State: AKaTC03WC/BF48PedQh8fnWrgcpR2n+dMklL2oEEB0DO3a2W2yPLmUBvQOlfLQRsqePPaA==
X-Received: by 10.25.16.71 with SMTP id f68mr6858785lfi.93.1482221441557;
	Tue, 20 Dec 2016 00:10:41 -0800 (PST)
Received: from [10.25.0.170] ([195.159.140.90])
	by smtp.googlemail.com with ESMTPSA id
	q3sm4565210lfj.20.2016.12.20.00.10.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 20 Dec 2016 00:10:40 -0800 (PST)
To: ed.bartosh@linux.intel.com
References: <1481873568-13550-1-git-send-email-kristian.amlie@mender.io>
	<20161216142855.GA6398@linux.intel.com>
	<eca5fc15-a45f-f320-6e7a-733cb752e322@mender.io>
	<20161219160327.GA23950@linux.intel.com>
From: Kristian Amlie <kristian.amlie@mender.io>
Message-ID: <55c83b7f-ac32-ddb7-0a2e-f74b704b673f@mender.io>
Date: Tue, 20 Dec 2016 09:10:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <20161219160327.GA23950@linux.intel.com>
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
X-List-Received-Date: Tue, 20 Dec 2016 08:10:44 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 19/12/16 17:03, Ed Bartosh wrote:
> On Mon, Dec 19, 2016 at 09:14:58AM +0100, Kristian Amlie wrote:
>> On 16/12/16 15:28, Ed Bartosh wrote:
>>> On Fri, Dec 16, 2016 at 08:32:48AM +0100, Kristian Amlie wrote:
>>>> The am335x_evm_config target has a subtle problem which is not present
>>>> in the am335x_boneblack_config target: When booting from an external
>>>> MMC card, the internal MMC is not accessible using the former target.
>>>>
>>>> This problem was introduced in U-Boot in commit 80b24fcd3083515e6b961,
>>>> due to the addition of the CONFIG_DM_MMC option, and the
>>>> am335x_boneblack_config target does not have this problem.
>>>>
>>>> Signed-off-by: Kristian Amlie <kristian.amlie@mender.io>
>>>> ---
>>>>  meta-yocto-bsp/conf/machine/beaglebone.conf | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
>>>> index fc6a527..24a95b4 100644
>>>> --- a/meta-yocto-bsp/conf/machine/beaglebone.conf
>>>> +++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
>>>> @@ -31,7 +31,7 @@ KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
>>>>  
>>>>  SPL_BINARY = "MLO"
>>>>  UBOOT_SUFFIX = "img"
>>>> -UBOOT_MACHINE = "am335x_evm_config"
>>>> +UBOOT_MACHINE = "am335x_boneblack_config"
>>>>  UBOOT_ENTRYPOINT = "0x80008000"
>>>>  UBOOT_LOADADDRESS = "0x80008000"
>>>>  
>>>
>>> Would this work for Beaglebone white?
>>
>> I don't have one, so unfortunately I can't test it. However, the
>> beagleboard.org site states that the differences between the two are the
>> on-board USB JTAG and serial adapters. Looking at the differences of the
>> two configs I can't find anything obvious that would influence this
>> (I'll admit that I don't fully understand all the options though).
>>
> 
> I don't understand it neither. I'm just worrying that we can break
> support for BBW, which is mentioned in README.hardware as poky reference hardware.

I have sent an email to the U-Boot mailing list to ask.

-- 
Kristian

