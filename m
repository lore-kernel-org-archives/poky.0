Return-Path: <scott.branden@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01538E00BBC; Tue, 19 Feb 2019 14:30:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f66.google.com (mail-yw1-f66.google.com
	[209.85.161.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5237E00546
	for <poky@yoctoproject.org>; Tue, 19 Feb 2019 14:30:28 -0800 (PST)
Received: by mail-yw1-f66.google.com with SMTP id o184so8440577ywo.5
	for <poky@yoctoproject.org>; Tue, 19 Feb 2019 14:30:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=xvxRMIy5Mc8+m+73AAy9Z2TcrKfXNFXakcJbbPrWR2I=;
	b=Yv6bNABj1HkasvO9TMEp3+qyyBbqaZJ17oU37J9JiLShBBYgqFf1a2eFnS/PoL87W3
	vQk27a5K6cB8jVexad+12WVIWCSDTQREaHCZY9fGmmvNCFza0ZEf2/Z0glcoSFTsOi/+
	hx/7VHMlJEdJQMkd3ZRN7cno3YAU2VxEQj2eE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=xvxRMIy5Mc8+m+73AAy9Z2TcrKfXNFXakcJbbPrWR2I=;
	b=O7eCZGc+sgKKNFM1XpEBFOdz1ogto2m5THOyR/O9SQn40EH4018cV0ab2uKyQODXM2
	FRp8gqnet4dJ6CNwXKW6Sw1NUe9Ol0VaMPWl6AKooJv/x51Yz4aR5GppSY61+PCg5mUV
	uePG5aROAAFtTxFUvPgKj97ygqg1cq0zf+X8jYA7oJlywbFeXkEmSU7Y5up/OcNB3rGc
	OJp7gZTi799Yitl/38s0Z0uZhKpkLYEelkEibCqBfotn9Pr8rXFVPe+d5Id3415P55Y4
	gPqJ13EpX3RBUS12t7J2ky12vDIC5r5bhT6pdR6DE2c/z7EAtYkcly8OxDUy4mZwTKlP
	optw==
X-Gm-Message-State: AHQUAuYjJYYAGTVx4/FmUvbW3NyCVOHANICRJpRIlXGdf+dbeFbRNg8a
	CSVziuBz0BFe+PuFZvVNGAwNwmJTTgvB674oCeaKC7M9lWb8ZEdaWbv2lxFcAbllnhJ61tAOeuP
	INxs/bnaKlrfXRTmoFqN5czIrx8KP5jYNnjw2HWVysRHuEOgz2dF0uHj3p142ywcAzXULjRxCLS
	s=
X-Google-Smtp-Source: AHgI3IZNApyLCZ0/ueCHSYxQwIt0KXt/YOb7/hCf+4Oh5fOK5P7g0iEq9uKF06VMa/lAT8xwE9MvTg==
X-Received: by 2002:a81:c8a:: with SMTP id 132mr105005ywm.269.1550615427699;
	Tue, 19 Feb 2019 14:30:27 -0800 (PST)
Received: from [10.136.13.65] ([192.19.228.250])
	by smtp.gmail.com with ESMTPSA id
	207sm8310906ywj.92.2019.02.19.14.30.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 19 Feb 2019 14:30:26 -0800 (PST)
To: =?UTF-8?B?SsOpcsO0bWUgQ2FycmV0ZXJv?= <cJ-yocto@zougloub.eu>
References: <efc826297ec1a54ca1218991fad192b3@mail.gmail.com>
	<20190128214107.66d29101@pouet.cJ>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <b8746c18-0695-2d5d-1ab4-7c4f974e667a@broadcom.com>
Date: Tue, 19 Feb 2019 14:30:24 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190128214107.66d29101@pouet.cJ>
Cc: poky@yoctoproject.org
Subject: Re: How to use yocto with PXE boot?
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
X-List-Received-Date: Tue, 19 Feb 2019 22:30:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi Jerome,

On 2019-01-28 6:41 p.m., Jérôme Carretero wrote:
> Hi Scott,
>
> On Wed, 23 Jan 2019 14:19:58 -0800
> Scott Branden <scott.branden@broadcom.com> wrote:
>
>> I wish to completely network boot a genericx86-64 image built from yocto.
>>
>>
>>
>> So far I have been building for core-image-sato and it easily allows
>> booting a live image from a USB device:
>>
>> https://git.yoctoproject.org/cgit.cgi/poky/plain/meta-yocto-bsp/README.hardware
>>
>>
>>
>> Are there any instructions to follow on how to PXE (or similar) boot from a
>> yocto build?
>>
>>
>>
>> I do find pxelinux.0 in
>> build/tmp/sysroots-components/x86_64/syslinux-native/usr/share/syslinux/pxelinux.0
>> after the build?
>
> Getting PXE (I assume you mean non-UEFI, DHCP + TFTP) is the well
> documented part, it's after the kernel gets loaded and boots that the
> trouble usually arises.
>
> It took me a few hours to set up a working PXE boot with no initrd and
> an NFS root, the subtleties were:
>
> - Set the DHCP server to provide NFS v3 mount option (Linux default
>    doesn't boot), with something like (dnsmasq syntax):
>     --dhcp-option=17,/srv/nfsroot,tcp,vers=3
>
>    If someone told me that, I'd have spent less time with
>    CONFIG_NFS_DEBUG, a serial console and wireshark...
>
> - Some systemd services won't start correctly with a network root...
>    perhaps you don't care about those.
>
> Other than that, there's the more straightforward things, like
> the network driver (and perhaps firmware) which should be in-kernel, as
> well as DHCP client, NFS client and NFS root.
>
> I simply unpacked my rootfs to the NFS served location, but if someone
> knows a way to build the rootfs directly there it would save some
> time...

It looks like someone was working on something similar but it never made 
it into the poky mainline nor was documented?

http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/nfsroot


>
>
> Regards,
>

