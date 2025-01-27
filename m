Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A2D9C02188
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 11:27:50 +0000 (UTC)
Received: from shrimp.cherry.relay.mailchannels.net (shrimp.cherry.relay.mailchannels.net [23.83.223.164])
 by mx.groups.io with SMTP id smtpd.web10.49635.1737977260938606882
 for <poky@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 03:27:41 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@rootcommit.com header.s=hostingermail-a header.b=gWH0lezc;
 spf=pass (domain: rootcommit.com, ip: 23.83.223.164, mailfrom: michael.opdenacker@rootcommit.com)
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id E51E87825CC;
	Mon, 27 Jan 2025 11:27:39 +0000 (UTC)
Received: from uk-fast-smtpout5.hostinger.io (trex-5.trex.outbound.svc.cluster.local [100.119.10.22])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 0ED91780748;
	Mon, 27 Jan 2025 11:27:38 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1737977259; a=rsa-sha256;
	cv=none;
	b=gAosAW0aDQei6dTXAamwaKDQN1LaGv8jwH4EldxBXO/lAau1Ieuzv64J9eyM09dPZ7sklo
	CV81eBEquHTEhhP/GAL7mCZhfHOJnXWFgteKDMe1GGbecwjQ4rNqhUy/wOpKf0vR27wa3u
	bpOoNCqY7SPmPKxLXajHctR0N70qc/tG/ZkOD4NoOg5XxtiYbdnE7C907sr3VQAn5xyFY0
	Lcq+buS4mX/GykhxLLCJVYRmsWEiWPuopA3hpWTxl4sDLlmTQB5YVuGqFGP6J4Qyvj229r
	lOejeoVsqA7qzOwtT8Hti3Lx0FER8a+tTeYmpA1CEndpqUAEZy8IQK+reWJzQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1737977259;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=GUWwSvZCqjCRSB/Ay+lKZFlmMEqZfg5+n0If92pYq0M=;
	b=vIPunFGndlQYrDVDyQUaLD55AgRphqfBwAGrHRj11nMtwScDgI83adSAkAr0oHGXODPQLs
	Uf/UJo1LYkXmRezVkUcGhXn0Vc/DOAE5pZAPFp73JBSWd2+vnxPJXLUiFTu9iqj5jNdt3Q
	rWWXQS4ua1rt8hat267eiwjmmjM0xBChV2anxtPI9d3UF/C8Jspv7OXNcQ4GZNz0yX41Gl
	UZGpNTa79zl3/R+90+T3c9yqS4B4QmZiBS+kOJuv0W2ZsNlrFDDeBdEuCHY9ulVScPgRWe
	zWU8PdxT7h6qdJImFRZ+PXYzcywaVL64mbwkHK5IuDSjPw1OUJaimFnsZVcxiw==
ARC-Authentication-Results: i=1;
	rspamd-dd4dc9979-g82vp;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: 
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Abortive-Print: 337947966e19c354_1737977259696_2902518464
X-MC-Loop-Signature: 1737977259696:3148759184
X-MC-Ingress-Time: 1737977259695
Received: from uk-fast-smtpout5.hostinger.io (uk-fast-smtpout5.hostinger.io
 [31.220.23.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.119.10.22 (trex/7.0.2);
	Mon, 27 Jan 2025 11:27:39 +0000
Message-ID: <30b7ea7f-6793-4150-8551-ddc9b093255a@rootcommit.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1737977257;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=GUWwSvZCqjCRSB/Ay+lKZFlmMEqZfg5+n0If92pYq0M=;
	b=gWH0lezcNmWsRAPe8FOgussMvULAGJR3Z7ubP+Xtznt1Qwfvmvo+e6L9r4DzRdQo7fow1g
	BfEX3qJFwlYjRNLirPtNZGtFDdxqDCbibVbAPnushdaWbmYi4iXKNUtz8pnJCqrbzaAa3P
	WL2IHR8YgG9fYoXKL1HKqdq7Nqs7JdH1LIXS9P2WPBvKI38IqtTLZBThMBl56h877gS7an
	e9VrR7PxX8IqXtqOPE2Mdal+XAz601TskhTGDfPN7Tx5uwns1n2t0z3/F9NJyD4kxsCEVZ
	lTHsu6WDX/TgwEZQacD2uXAfZ/R3nZdMk/06WrPVRGxLSKxIrIN+HrmJVLsyuQ==
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>,
 michael.opdenacker@rootcommit.com
Content-Language: en-US, fr
To: Ross Burton <ross.burton@arm.com>
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Subject: runqemu on genericarm64: "u-boot.bin not found" error
Organization: Root Commit
Content-Type: text/plain; charset=UTF-8; format=flowed
Date: Mon, 27 Jan 2025 11:27:36 +0000 (UTC)
X-CM-Analysis: v=2.4 cv=TtS0hyXh c=1 sm=1 tr=0 ts=67976da9 a=nFC3K2YhdMzlXOpOV35YgA==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=d70CFdQeAAAA:8 a=nvCLQcqV0HG059qjt3AA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NcxpMcIZDGm-g932nG_k:22
X-CM-Envelope: MS4xfMYrHiG+AI9sPYTfLaA+70J9RtPNeYXDBrJq7w09qi7Ny3s8e00aUCiIePzhHTmLLawDk1XJ8tcctM0xVIVHz3cF67niSjjCtzk3ZTC0dNhdzPpthDE3 jaAbPq0GC5dTzTbsnXdqRF2IMlAZ3EY/5BuTZm4+ufKNtBpqmOr1ILd4SpNmrNyf0ccDDN/5CfGZQVP7U0H5xSJ8DIeeEx5L3g3YdtzRavP03hI2/xiMMLsD WJ9iKoKRnL60Lns1sj5BBj3Zpz6ekbYVeB71Osh8D1RtC6AOdQhyzXKWBF6+1lwO5suF3mNzjwHH0Do7Livwo6uunpkz+ocIVXmEbrICx4W9W+Re/xUfynJ7 /VpDIXwbFa4W2x0BmCI5DUqdG07xnFK1/AsSETCBBnd8leUtkCk=
X-AuthUser: michael.opdenacker@rootcommit.com
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 27 Jan 2025 11:27:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13515

Ross, all,

Probably not a surprise for some of you, but I figured it's good to=20
report this somewhere:

I generated an image for the "genericarm64" machine, and when trying to=20
use the "runqemu" command, I get this error:

$ runqemu nographic slirp
runqemu - INFO - Running bitbake -e=C2=A0 ...
runqemu - ERROR - BIOS=20
/home/mike/work/yocto/master/poky/build-genericarm64/tmp/deploy/images/ge=
nericarm64/u-boot.bin=20
not found
runqemu - INFO - Cleaning up
runqemu - INFO - Host uptime: 670446.07

That's not a surprise, as the bootloader for this image is based on grub.

I tried to modify meta-yocto-bsp/conf/machine/genericarm64.conf to use=20
the "grub-efi-bootaa64.efi" file instead. However, while runqemu doesn't=20
complain any more, the virtual machine doesn't seem to boot.

Any workaround for testing the "genericarm64" machine through the=20
"runqemu" script?

In the long run, it would be great if the normal "runqemu" command=20
worked out of the box.

Cheers
Michael.

--=20
Michael Opdenacker
Root Commit
Yocto Project and OpenEmbedded Training course - Learn by doing:
https://rootcommit.com/training/yocto/


