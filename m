Return-Path: <paulg@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5435C7115B
	for <webhook@archiver.kernel.org>; Thu, 26 Jun 2025 06:21:00 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by mx.groups.io with SMTP id smtpd.web10.2209.1750918859561124154
 for <poky@lists.yoctoproject.org>;
 Wed, 25 Jun 2025 23:20:59 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@kernel.org header.s=k20201202 header.b=WrzAq/Wg;
 spf=pass (domain: kernel.org, ip: 139.178.84.217, mailfrom: paulg@kernel.org)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6CB275C5721;
	Thu, 26 Jun 2025 06:18:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FF99C4CEEE;
	Thu, 26 Jun 2025 06:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750918858;
	bh=zQ10doEMr50A/fdEfxu7nHwEbAJVAUHRPlHng3e4bV0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WrzAq/WguwaVsnV7FT66ZTaUyj7h2/VbJ1SPu7T32vNtOV8Zssk57+quXAfM44k5/
	 xbLi7VxRCfbq8A3Ipta4GLsbY9epmkYP2evXg/yqt1f9/hm1TzokZMhysQUiu3zr5C
	 ogE13ChwjNW1kpDrDBzpFPzcsOzZw3bOttJ6mM6fgOFp4Y1xM9L5304gLkUevZ+Qrf
	 tTCBWJSwAWLsiYnBhLWyatd0bVOlKkEA0CwnYB74805EflrRgK9U1AKAPrBJRhHG63
	 6lZMmjdDG5sqZFGanATkjiaR5Eubsvgflh1zFLJqL/wP7NZY8E6tRUpZ8H2XGUvCDw
	 IVI8+RxlYZ8ug==
Date: Thu, 26 Jun 2025 02:20:56 -0400
From: Paul Gortmaker <paulg@kernel.org>
To: sebastian.krahl@lacon.de
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] Generate Scarthgap genericx86-64 machine booting pcbios
Message-ID: <20250626062056.GA143806@kernel.org>
References: <OPvA.1750861384863525389.Fzzg@lists.yoctoproject.org>
 <16291.1750917538898198839@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <16291.1750917538898198839@lists.yoctoproject.org>
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 26 Jun 2025 06:21:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13681

[Re: [poky] Generate Scarthgap genericx86-64 machine booting pcbios] On 2=
5/06/2025 (Wed 22:58) Sebastian via lists.yoctoproject.org wrote:

> After a suggestion from Paul I was not able to scroll through the boot =
log on
> the target machine.
> =A0
> But then I moved to virtualbox. In the virtual environment the system c=
omes up
> with no issue. Except:
> Output is from /var/log/dmesg and blkid....
> =A0
> Why it is booting in vbox I don't know but why are the labels that diff=
erent? I
> try to change the UUID in the syslinux.cfg and give it a try but it doe=
s not
> change anything.

If you can't get a serial port on your target that allows you to capture
and scroll the boot log, you can just film the boot on your phone and
review it there.  Yeah I know it is rather klunky, but hopefully you'll
only be doing it once.  Then you can compare real hardware with
virtualbox and see how partition detection and boot args differ.

Paul.
--

> Regards,
> =A0
> Sebastian

>> That message is basically telling you that whatever partition you
>> specified in your boot args to the kernel - like "root=3D/dev/sda1" or
>> whatever, does not exist in the list of partitions discovered by the
>> kernel at boot.   So you'll need to scroll up earlier in your boot log
>> and look what *was* discovered and what *was* in the bootargs, and fig=
ure
>> out the discrepancy.
>>=20
>> For the record, the "Invalid configuration..." part of that message is=
 a
>> Yocto addition, because the default message of "not syncing" doesn't m=
ean
>> much of anything to people who aren't using Linux on a regular basis.

