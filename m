Return-Path: <abuse@basmevissen.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9454EC83F01
	for <webhook@archiver.kernel.org>; Wed, 30 Aug 2023 16:22:33 +0000 (UTC)
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
 by mx.groups.io with SMTP id smtpd.web11.1672.1693412545177530967
 for <poky@lists.yoctoproject.org>;
 Wed, 30 Aug 2023 09:22:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@basmevissen.nl header.s=default header.b=gB2dmzbe;
 spf=pass (domain: basmevissen.nl, ip: 178.18.92.162, mailfrom: abuse@basmevissen.nl)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id E51CB212005;
	Wed, 30 Aug 2023 18:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=basmevissen.nl;
	 h=message-id:references:in-reply-to:subject:subject:from:from
	:date:date:content-transfer-encoding:content-type:content-type
	:mime-version; s=default; t=1693412533; x=1695226934; bh=wdJkXcn
	7mCVb7aunmJjVxkS92gbmqJw/dGSkkdC5PCs=; b=gB2dmzbe9SvdZWUYaCxxqKR
	SXeDW8Kuwmmn0vDQykFTHkOMrVV3rXGhtKn/M2oGBRkkt0lEaMUeArhAn4NPwQK2
	vzMFvmwv2fu2J/c5/IFv19WCGeUCaLYLxhvkiduNuCNX2wjW5RBhZBVGDWxOICT5
	JNyWbNrgmROLixRcClIyyiZmmPifJBSQMvzZfrdpfVYwgqDJMdaOH/X0Rf14eF/Q
	i02ipwnLFFeWacoorsWAGL7rUn0gaZ+W6Zx+D91R0eS5EsI4p2OuLb+HoUsRO7dV
	jbghfVyCEsxhCSZVNbcaJCezZtPM5gjhzcOu/is44iIrUfcTn0P5HpPfLkX1/ZqA
	algAOGn6mojUJy4cwsUl6Z+fzsGrtwsaXxtcF3Zjt3EcjWITxnih0h4ZiF4QEksj
	mmHLgYnAjcGCvSAJ9WkBjd7/ta8kQDofXNsiheSXvCTtNcSmyhXeGUO1rN1dFiFv
	NAO3e9TuUUOn8YxJfQO+J9KHp/vcJoESZEbzZIyqW5MICA/w0T8DcaB08/uCe6C6
	RWAMQkE5j5RWv0AflR2O1G0fDwHFawOWgqvBOYp9PtN/fIRxEiQePuYuVXDGge0K
	Gwa99IaTKCXll8WDYVNjViP0YvUM4bqa1D75BmoozTzja2zEcqWGTk4fiM77h8Nz
	j6SPLZkzzyHPYe35UB7I=
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id PX7iPvGuXqCD; Wed, 30 Aug 2023 18:22:13 +0200 (CEST)
Received: from emcodev.nl (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 18E16212004;
	Wed, 30 Aug 2023 18:22:13 +0200 (CEST)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Wed, 30 Aug 2023 18:22:13 +0200
From: Bas Mevissen <abuse@basmevissen.nl>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH] README: Clarify/standardise contributions process
In-Reply-To: <09460cf1e1d4db1f21bf14284dec6c82f75e8fc4.camel@linuxfoundation.org>
References: <20230830153927.2016454-1-richard.purdie@linuxfoundation.org>
 <92d36cfa11b72367e8880a859cb577e4@basmevissen.nl>
 <09460cf1e1d4db1f21bf14284dec6c82f75e8fc4.camel@linuxfoundation.org>
Message-ID: <cb02e33e411c2c58302229ffb3649942@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 30 Aug 2023 16:22:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13141

On 2023-08-30 18:00, Richard Purdie wrote:
> On Wed, 2023-08-30 at 17:55 +0200, Bas Mevissen wrote:
>> On 2023-08-30 17:39, Richard Purdie wrote:
>> > Now we have a contributor guide combining various wiki pages, point at
>> > that and standarise our approach across layers.
>> >
>> 
>> I get a 404 on https://docs.yoctoproject.org/dev/contributor-guide/
>> where
>> https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
>> is pointing to.
> 
> The server is busy processing the docs patches and it will appear there
> soon as the docs build completes. You can see it right now at:
> 

Ok, thanks for the clarification.

> https://docs.yoctoproject.org/next/contributor-guide/
> 

Nice piece of work. Would be an asset for every open source project!

> Cheers,
> 
> Richard
> 

Cheers,

Bas.

> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13140): 
> https://lists.yoctoproject.org/g/poky/message/13140
> Mute This Topic: https://lists.yoctoproject.org/mt/101055098/3617169
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/poky/leave/6694068/3617169/1811455910/xyzzy
> [abuse@basmevissen.nl]
> -=-=-=-=-=-=-=-=-=-=-=-

