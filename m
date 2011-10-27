Return-Path: <tom.rini@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB2CEE006B4
	for <poky@yoctoproject.org>; Wed, 26 Oct 2011 17:22:44 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyf19 with SMTP id 19so3268685wyf.35
	for <poky@yoctoproject.org>; Wed, 26 Oct 2011 17:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=oiNQvXNSavZCpBDRMdUqPR+of6H8Y7LiCdFFNbk2UAc=;
	b=wcUqb/ysIMOESfRKRxpCznG/2L40l5WKl1EtIZoerE4FN/CmXsFPv9055agt8FeEMq
	RVmHylkaAPE7O28SndbTQDvwGp5wxxpOMfCDs6E18CAPqAaQEl1edcR18keEy+0N2Lw9
	w6Bc6yRD+RskjHLxtTA2ZHrimqhou9P9dpkMM=
MIME-Version: 1.0
Received: by 10.216.137.84 with SMTP id x62mr356991wei.28.1319674963721; Wed,
	26 Oct 2011 17:22:43 -0700 (PDT)
Received: by 10.180.83.232 with HTTP; Wed, 26 Oct 2011 17:22:43 -0700 (PDT)
In-Reply-To: <4EA8186C.9060906@mlbassoc.com>
References: <4EA8186C.9060906@mlbassoc.com>
Date: Wed, 26 Oct 2011 17:22:43 -0700
Message-ID: <CA+M6bXkW5FeMeYSifC=7Z86Dcg2xvwvxXzPrtOp-GLLX2_q4+A@mail.gmail.com>
From: Tom Rini <tom.rini@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Strange ext filesystem error
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
X-List-Received-Date: Thu, 27 Oct 2011 00:22:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 26, 2011 at 7:25 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> I've noticed this behaviour on my Poky/Yocto based systems.
> First, I format some device, in this case an MMC card, as ext3
> (yes, my kernel supports ext3)
> =A0# mkfs.ext3 /dev/mmcblk0p1
> Then, when I go to mount it, I get this error:
> =A0# mount /dev/mmcblk0p1 /tmp/disk
> =A0EXT2-fs (mmcblk0p1): warning: mounting ext3 filesystem as ext2
>
> Any ideas why? =A0How can I get ext3 file system working?

Sounds like once again the file mount uses to guess types is out of order.
I think it's part of base-files but I don't have a chance to check right no=
w...

--=20
Tom

