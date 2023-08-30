Return-Path: <abuse@basmevissen.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70BECC83F15
	for <webhook@archiver.kernel.org>; Wed, 30 Aug 2023 15:56:03 +0000 (UTC)
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
 by mx.groups.io with SMTP id smtpd.web11.871.1693410961948821576
 for <poky@lists.yoctoproject.org>;
 Wed, 30 Aug 2023 08:56:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@basmevissen.nl header.s=default header.b=Y7AfqsFv;
 spf=pass (domain: basmevissen.nl, ip: 178.18.92.162, mailfrom: abuse@basmevissen.nl)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 90CB8212006;
	Wed, 30 Aug 2023 17:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=basmevissen.nl;
	 h=message-id:references:in-reply-to:subject:subject:from:from
	:date:date:content-transfer-encoding:content-type:content-type
	:mime-version; s=default; t=1693410948; x=1695225349; bh=e7r5PUq
	b61PZP+epKfxRdITW3JflchNlrR5Fm3zaMRY=; b=Y7AfqsFvvjAf1sPrGJUDEag
	o4jZULSTIiVNJJQQ+spL8w/Wl5o2aVzeFD1uifNSoCeKyjYV2IbrmOJeLfqpAWJN
	XFT9LV48xwrL/WHl5UXUqcOhubBEvKSxNRwRe03kKU45M1oGp8WEpp5bzdQc0RH3
	JAqwWuH7xsn6E2XZi20svJr0j9g/NckLfc38JpW6b+vMJVRXQU5SNBBL28VMKzYw
	DyPfSEX0fxRsdqfvK63geoHSeVRJi3R35lcKzykxd7lTiyJ63Mtgt2/jIep785mA
	1xbgIuYT3nHhEWNEO/PxOpjokQlrX97gZGIgPmP4mzgJyiSRxrRs7QSLkuLLfR0+
	W3zglSr/hikbJAPfZfPbNhXOOQdZztJO2QF4HVBVtvSPZUlYBZBHgF45FEqOubH7
	ytOPcbs5KfLgiXm8nqdjKSM1TqsvW5s/CZ4JOUF2JdxfjM4arOQ7hDbpmdAgwFeR
	GVq7/z+SDKIS5xnvoylm9Fu5xLameyh9o+NTpqgbRQrKvmNMjtEf57ZhnZnaKZYj
	S60OplcN/4hH17nNxoNlb87kHeMy38Ti9mvQeBuCegyT9ARzqpr7aTflu8IkhCoJ
	zPCQUv/u4W75AJHncg53EzquthyoVGydqunkqkTIyUrnmZCh5bUWj9twIpl0gnyi
	pOHiSs7VFISvahEXeDQA=
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id Ns_z-WDfFxw5; Wed, 30 Aug 2023 17:55:48 +0200 (CEST)
Received: from emcodev.nl (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id EAD7E212004;
	Wed, 30 Aug 2023 17:55:48 +0200 (CEST)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Wed, 30 Aug 2023 17:55:48 +0200
From: Bas Mevissen <abuse@basmevissen.nl>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH] README: Clarify/standardise contributions process
In-Reply-To: <20230830153927.2016454-1-richard.purdie@linuxfoundation.org>
References: <20230830153927.2016454-1-richard.purdie@linuxfoundation.org>
Message-ID: <92d36cfa11b72367e8880a859cb577e4@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 30 Aug 2023 15:56:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13139

On 2023-08-30 17:39, Richard Purdie wrote:
> Now we have a contributor guide combining various wiki pages, point at
> that and standarise our approach across layers.
> 

I get a 404 on https://docs.yoctoproject.org/dev/contributor-guide/
where 
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded 
is pointing to.

Bas.

> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  meta-poky/README.poky.md          | 15 ++-------------
>  meta-yocto-bsp/README.hardware.md | 15 ++++++++++++---
>  2 files changed, 14 insertions(+), 16 deletions(-)
> 
> diff --git a/meta-poky/README.poky.md b/meta-poky/README.poky.md
> index a99c75ed5cb..7dd5e6d8316 100644
> --- a/meta-poky/README.poky.md
> +++ b/meta-poky/README.poky.md
> @@ -34,19 +34,8 @@ For information about OpenEmbedded, see the
>  Contribution Guidelines
>  -----------------------
> 
> -The project works using a mailing list patch submission process. 
> Patches
> -should be sent to the mailing list for the repository the components
> -originate from (see below). Throughout the Yocto Project, the README
> -files in the component in question should detail where to send 
> patches,
> -who the maintainers are and where bugs should be reported.
> -
> -A guide to submitting patches to OpenEmbedded is available at:
> -
> -<https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded>
> -
> -There is good documentation on how to write/format patches at:
> -
> -<https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines>
> +Please refer to our contributor guide here:
> https://docs.yoctoproject.org/dev/contributor-guide/
> +for full details on how to submit changes.
> 
>  Where to Send Patches
>  ---------------------
> diff --git a/meta-yocto-bsp/README.hardware.md
> b/meta-yocto-bsp/README.hardware.md
> index 8ea0ef14614..a8f38cb21a6 100644
> --- a/meta-yocto-bsp/README.hardware.md
> +++ b/meta-yocto-bsp/README.hardware.md
> @@ -33,10 +33,19 @@ The following boards are supported by the
> meta-yocto-bsp layer:
>  For more information see the board's section below. The appropriate 
> MACHINE
>  variable value corresponding to the board is given in brackets.
> 
> -Reference Board Maintenance
> -===========================
> +Reference Board Maintenance and Contributions
> +=============================================
> +
> +Please refer to our contributor guide here:
> https://docs.yoctoproject.org/dev/contributor-guide/
> +for full details on how to submit changes.
> +
> +As a quick guide, patches should be sent to 
> poky@lists.yoctoproject.org
> +The git command to do that would be:
> +
> +     git send-email -M -1 --to poky@lists.yoctoproject.org
> 
> -Send pull requests, patches, comments or questions about
> meta-yocto-bsps to poky@lists.yoctoproject.org
> +Send pull requests, patches, comments or questions about 
> meta-yocto-bsp to
> +poky@lists.yoctoproject.org
> 
>  Maintainers: Kevin Hao <kexin.hao@windriver.com>
>               Bruce Ashfield <bruce.ashfield@gmail.com>
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13138): 
> https://lists.yoctoproject.org/g/poky/message/13138
> Mute This Topic: https://lists.yoctoproject.org/mt/101055098/3617169
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/poky/leave/6694068/3617169/1811455910/xyzzy
> [abuse@basmevissen.nl]
> -=-=-=-=-=-=-=-=-=-=-=-


