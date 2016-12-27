Return-Path: <kristian.amlie@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7356DE0055C; Tue, 27 Dec 2016 00:52:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
Received: from mail-lf0-f51.google.com (mail-lf0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05CB4E004E5
	for <poky@yoctoproject.org>; Tue, 27 Dec 2016 00:52:42 -0800 (PST)
Received: by mail-lf0-f51.google.com with SMTP id y21so184005070lfa.1
	for <poky@yoctoproject.org>; Tue, 27 Dec 2016 00:52:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=THX15P3cLnHYjaOxLvjjDXsb9UUjnMSS5Dm1WIcKEnc=;
	b=LJx3g1lli2eyvWLag+86bkh5WEZHk3k1D17TAbQqvs51sgBXFjokLwobO66gkHFdaS
	JPte0BpPbpC2kJM+iwadIDlpJNGIdaijY9AVqTQngu+Avg0YvRowG/lMCMH5XfiJun/D
	MsxN70uxczLMHZ0CtYifsM40NjenlxpIlDzcjEaCEDtRkhCvOGpmv6R87BlAQs2CZTLb
	/KJ5SP3k5k/qie6MKj9TNdG5TVWQlKltafEnhU8S0mk2JWYq1Jh4VQmMUVXGEM9nFoBa
	YzBwW1DUzYr30IkmMDdDiDULC0uMmUePQEjez0VYlWPORthS29MA3dL4HRZkewgQQq1H
	36sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=THX15P3cLnHYjaOxLvjjDXsb9UUjnMSS5Dm1WIcKEnc=;
	b=BhZbtkVhAhVU7kxK2fjz/2ARgXGWReMZQkfjVp/qcnrr7T5Tyvsr1KPRF047VTWFPl
	pG9j0kh4Ydy7W3QJdXPpAMr5/RdsVymDHjPkzENiScAPhiuCyXc1uuhitk7fwig+viY4
	D5AZm9ONVy8b8rpKspwot4s7i7oNY6R57zhU2rD9DXvdkUsDUbeR8t5fZBc3Q26Lp31a
	2tstqwFIVdbsIle02SNI6sBvZ6Ywuoe/JXshE77ReM0MyvrbquvYetA747Nwux4+HLn+
	R0SKc2sp+7GCfOPcKMbsyxz1adGXZaMhP/4DqgpiJNO7XEtEObVnxegWI1utFha3pS4B
	w3CQ==
X-Gm-Message-State: AIkVDXLORyMHx8jzhPzjdRdTbx3bkbIr6Xug/hldV18/YdzQepvI5WYpCNgwEQybuCpadw==
X-Received: by 10.25.242.75 with SMTP id d11mr11776863lfk.168.1482828761358;
	Tue, 27 Dec 2016 00:52:41 -0800 (PST)
Received: from [192.168.38.180] ([51.175.93.81])
	by smtp.googlemail.com with ESMTPSA id
	d2sm1352524lfe.13.2016.12.27.00.52.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 27 Dec 2016 00:52:40 -0800 (PST)
To: ed.bartosh@linux.intel.com
References: <1481873568-13550-1-git-send-email-kristian.amlie@mender.io>
	<20161216142855.GA6398@linux.intel.com>
	<eca5fc15-a45f-f320-6e7a-733cb752e322@mender.io>
	<20161219160327.GA23950@linux.intel.com>
	<55c83b7f-ac32-ddb7-0a2e-f74b704b673f@mender.io>
From: Kristian Amlie <kristian.amlie@mender.io>
Message-ID: <e247fd3a-2c89-c1cd-97e4-6e24cb1e8d87@mender.io>
Date: Tue, 27 Dec 2016 09:52:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <55c83b7f-ac32-ddb7-0a2e-f74b704b673f@mender.io>
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
X-List-Received-Date: Tue, 27 Dec 2016 08:52:46 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 20/12/16 09:10, Kristian Amlie wrote:
> On 19/12/16 17:03, Ed Bartosh wrote:
>> On Mon, Dec 19, 2016 at 09:14:58AM +0100, Kristian Amlie wrote:
>>> On 16/12/16 15:28, Ed Bartosh wrote:
>>>> On Fri, Dec 16, 2016 at 08:32:48AM +0100, Kristian Amlie wrote:
>>>>> The am335x_evm_config target has a subtle problem which is not present
>>>>> in the am335x_boneblack_config target: When booting from an external
>>>>> MMC card, the internal MMC is not accessible using the former target.
>>>>>
>>>>> This problem was introduced in U-Boot in commit 80b24fcd3083515e6b961,
>>>>> due to the addition of the CONFIG_DM_MMC option, and the
>>>>> am335x_boneblack_config target does not have this problem.
>>>>>
>>>>> Signed-off-by: Kristian Amlie <kristian.amlie@mender.io>
>>>>> ---
>>>>>  meta-yocto-bsp/conf/machine/beaglebone.conf | 2 +-
>>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
>>>>> index fc6a527..24a95b4 100644
>>>>> --- a/meta-yocto-bsp/conf/machine/beaglebone.conf
>>>>> +++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
>>>>> @@ -31,7 +31,7 @@ KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
>>>>>  
>>>>>  SPL_BINARY = "MLO"
>>>>>  UBOOT_SUFFIX = "img"
>>>>> -UBOOT_MACHINE = "am335x_evm_config"
>>>>> +UBOOT_MACHINE = "am335x_boneblack_config"
>>>>>  UBOOT_ENTRYPOINT = "0x80008000"
>>>>>  UBOOT_LOADADDRESS = "0x80008000"
>>>>>  
>>>>
>>>> Would this work for Beaglebone white?
>>>
>>> I don't have one, so unfortunately I can't test it. However, the
>>> beagleboard.org site states that the differences between the two are the
>>> on-board USB JTAG and serial adapters. Looking at the differences of the
>>> two configs I can't find anything obvious that would influence this
>>> (I'll admit that I don't fully understand all the options though).
>>>
>>
>> I don't understand it neither. I'm just worrying that we can break
>> support for BBW, which is mentioned in README.hardware as poky reference hardware.
> 
> I have sent an email to the U-Boot mailing list to ask.

Someone on the U-Boot mailing list just confirmed that he was running
the am335x_boneblack target for both Black, Green and White.

-- 
Kristian

