Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F25EC02188
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 12:14:00 +0000 (UTC)
Received: from earwig.ash.relay.mailchannels.net (earwig.ash.relay.mailchannels.net [23.83.222.54])
 by mx.groups.io with SMTP id smtpd.web10.50287.1737980032394698355
 for <poky@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 04:13:52 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@rootcommit.com header.s=hostingermail-a header.b=CLDHSfua;
 spf=pass (domain: rootcommit.com, ip: 23.83.222.54, mailfrom: michael.opdenacker@rootcommit.com)
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 35007183BA0;
	Mon, 27 Jan 2025 12:13:51 +0000 (UTC)
Received: from nl-srv-smtpout7.hostinger.io (100-117-137-138.trex-nlb.outbound.svc.cluster.local [100.117.137.138])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 52597183B3B;
	Mon, 27 Jan 2025 12:13:50 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1737980030; a=rsa-sha256;
	cv=none;
	b=Xci6EuYZwYyywAAKZOBsocGqv7zFqh+IuuB1fXtpCcEfF6nFGlerFI1irnOX7Xv79ndpM+
	EQplqVCBRfmU8MxwWLp5nzSRJzm9JIjrli2uOZ1rBy94udeY7hpHFl/sFg2u9jB6Z6oX8u
	0k03KM6lbJdBYLZWaC+d6LslFQejrzlJILcnFNm3Pcgl6qVH7reihwPmop9o3nsVAvk/OW
	7CBWHI5OCGoxX6dEEUxi/dAWJmpPHpEl3x5NaitVogz2s8o3EVFDkYb9nBljZNRy6O4DQx
	lJpPumRf6PVZlAFRgIyvZE/VEpTC1jkEJiU7wDGBJDBokqri7jHDooVSjopJ8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1737980030;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=rmduNghGdHthfOu7RXdNzfChKZbKxvHlmPUYAujjOg8=;
	b=VBFwNoxUa/5Pz3pttHn4vGpykViJDjjiFxR8Q5yf2I7eOYfS/BRclDag+7sivH33MxnT9s
	HEX3X/CkhjR/1SosaOETcr03lAKKVOSi/uRhXNxbGD5rBDaNySatvyIdHhFh2X6XbJwnEu
	83W6P+W35Bhg0pjrb6u3SB+d17l+Og1zLNGvDi4yu8MlS5gev4HnVMH0ZQFfxCki4Gzge0
	AzTB6qHAPfFju6xd/3kgm0NaM6MYjlw7Q3x6bpRlKeEMACGW4PNjwchweF8CtTfKTDsXs5
	VubIMSKpOpBZ0Dwz8HCmbG3VcVJII++Y4my5HtsGUgVOIp4LRhsSZmIbmNiPhw==
ARC-Authentication-Results: i=1;
	rspamd-dd4dc9979-gdhdf;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: 
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Whistle-Oafish: 160a840d7dc9eb13_1737980031001_3760524462
X-MC-Loop-Signature: 1737980031001:2179592017
X-MC-Ingress-Time: 1737980031001
Received: from nl-srv-smtpout7.hostinger.io (nl-srv-smtpout7.hostinger.io
 [45.87.82.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.117.137.138 (trex/7.0.2);
	Mon, 27 Jan 2025 12:13:51 +0000
Message-ID: <9d6991b5-368f-4870-93c6-35e7e4c6fade@rootcommit.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1737980028;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rmduNghGdHthfOu7RXdNzfChKZbKxvHlmPUYAujjOg8=;
	b=CLDHSfuauVsWDINo5kOv6m+eiYZaP3P5IFaR08FQw22Bayz8vjttNLJfh2NJWnQm15wOke
	bpP4nh0ES3CIlWG9WHp/8J4rGNhp+4zjbsXmSCvA2X1t6sqs59pmTraXu3NfQ4bnCgIyXa
	zMD3/NbjzhVyxN9gXZl/yqwl8uD6lOKuiKY9I/AYrPpjB42DhagJS8NEzWY9LFGwncgWNe
	la3I2ndTJadV1nTiQKkJkq6QcS5Gd/7DViyZVsY7bVUzJt4iFfJRA3v7IdliNE8WJ0vaHx
	hgmjJf/3JGWDCwO3W6AKgfWd4GJWxXS4GsmsnbF2Aws+F+0Cg/hSDVt/G1bYHg==
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com,
 "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] runqemu on genericarm64: "u-boot.bin not found" error
To: Ross Burton <Ross.Burton@arm.com>
References: <30b7ea7f-6793-4150-8551-ddc9b093255a@rootcommit.com>
 <EFE01A51-DF3E-422C-AE1D-4F66EF1AA916@arm.com>
Content-Language: en-US, fr
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Organization: Root Commit
In-Reply-To: <EFE01A51-DF3E-422C-AE1D-4F66EF1AA916@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Date: Mon, 27 Jan 2025 12:13:47 +0000 (UTC)
X-CM-Envelope: MS4xfN1qA2dm0Aq813b8rt9z8Ihgq9H9jxHSAUZHWmHeiBQwe6Wk/Zz+UDcU0F6buphZUIKlqOaqSOrCcj78yzGOxVyqd1HA7YmvM19Yj1dIyHbG0aF+CQ1Z SiSMlov/B7577db4LQlsq7uaL5bOPNXFUD0JsxpQT9RKLkltLdlh/VTfSOcCxF5dT/cofP7CBlPakShZBHyjOmL/+qhknNuGn1VropN39xnM2cJWSBr1TwV7 Eha0nHF/y7nVusHjNChnKn1z5728Qo2ECDP01O15VSLrw670fTsW+pNBT1IzkjWroZ/ww44BkWygsEq4jOX7ZqAEAm7OCpHyrDWP2RQSJiyILW+1KE3wGwD5 jwpOitDPE4DQbrnaAXgOONeT6lnSZm+A/A37QtbXfUl2DAs7pyU=
X-CM-Analysis: v=2.4 cv=cZqArWDM c=1 sm=1 tr=0 ts=6797787c a=3XTf6zRxMfjOcVCVQRW2hw==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=d70CFdQeAAAA:8 a=iGHA9ds3AAAA:8 a=0g83e8dFb6OWGsSzTNsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NcxpMcIZDGm-g932nG_k:22 a=nM-MV4yxpKKO9kiQg6Ot:22
X-AuthUser: michael.opdenacker@rootcommit.com
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 27 Jan 2025 12:14:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13517

Hi Ross,

Thanks for these details!

On 1/27/25 12:47, Ross Burton wrote:
> On 27 Jan 2025, at 11:27, Michael Opdenacker via lists.yoctoproject.org=
 <michael.opdenacker=3Drootcommit.com@lists.yoctoproject.org> wrote:
>> Ross, all,
>>
>> Probably not a surprise for some of you, but I figured it's good to re=
port this somewhere:
>>
>> I generated an image for the "genericarm64" machine, and when trying t=
o use the "runqemu" command, I get this error:
>>
>> $ runqemu nographic slirp
>> runqemu - INFO - Running bitbake -e  ...
>> runqemu - ERROR - BIOS /home/mike/work/yocto/master/poky/build-generic=
arm64/tmp/deploy/images/genericarm64/u-boot.bin not found
>> runqemu - INFO - Cleaning up
>> runqemu - INFO - Host uptime: 670446.07
>>
>> That's not a surprise, as the bootloader for this image is based on gr=
ub.
>>
>> I tried to modify meta-yocto-bsp/conf/machine/genericarm64.conf to use=
 the "grub-efi-bootaa64.efi" file instead. However, while runqemu doesn't=
 complain any more, the virtual machine doesn't seem to boot.
>>
>> Any workaround for testing the "genericarm64" machine through the "run=
qemu" script?
>>
>> In the long run, it would be great if the normal "runqemu" command wor=
ked out of the box.
>  From the genericarm64 README:
>
> There is also limited support for booting a genericarm64 image inside Q=
EMU. When
> building the image also build the `u-boot` recipe to build the required
> firmware (note that this firmware will _not_ boot on real hardware), th=
en use
> `runqemu` as usual.
>
> That uboot will then chainload into grub.
>
> I don=E2=80=99t think it=E2=80=99s appropriate to always build the uboo=
t because there=E2=80=99s a risk that people will think it=E2=80=99s suit=
able for the target hardware, when it=E2=80=99s only useful with a qemu.


Understood! Indeed the following does the trick:
IMAGE_INSTALL:append =3D " u-boot"

Thanks again
Michael.

--=20
Michael Opdenacker
Root Commit
Yocto Project and OpenEmbedded Training course - Learn by doing:
https://rootcommit.com/training/yocto/


