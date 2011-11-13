Return-Path: <walters@verbum.org>
Received: from out2.smtp.messagingengine.com (out2.smtp.messagingengine.com
	[66.111.4.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9238E00502
	for <poky@yoctoproject.org>; Sun, 13 Nov 2011 09:17:05 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@messagingengine.com;
	x-dkim-adsp=none (insecure policy)
Received: from compute5.internal (compute5.nyi.mail.srv.osa [10.202.2.45])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 65DF820F58
	for <poky@yoctoproject.org>; Sun, 13 Nov 2011 12:17:04 -0500 (EST)
Received: from frontend1.nyi.mail.srv.osa ([10.202.2.160])
	by compute5.internal (MEProxy); Sun, 13 Nov 2011 12:17:04 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=subject:from:to:cc:date:in-reply-to
	:references:content-type:content-transfer-encoding:message-id
	:mime-version; s=smtpout; bh=5VJi33Wvy45D4zMLAvdfL8G2UwE=; b=PfK
	wPbkHhS2iJNnL3bks9WXrfizDUgEZHicePa+95H1dbQTzDobPhYr+VqxW61Rg5mU
	7/GG6mJi55TeMMNArwm9dLLil/BcTcq+SUit/X4Z8djtgjccOYNsEScaRwrTQTHz
	r0cj54mSGkUeeMHKoc3MGVqNbQv1v8DDUdwc/zN4=
X-Sasl-enc: 07COjl17blSGjSH38DCvNoMof+NUwFMZ+qBpYXVydpto 1321204624
Received: from [192.168.1.6] (c-65-96-172-131.hsd1.ma.comcast.net
	[65.96.172.131])
	by mail.messagingengine.com (Postfix) with ESMTPA id 201BE8E0089;
	Sun, 13 Nov 2011 12:17:04 -0500 (EST)
From: Colin Walters <walters@verbum.org>
To: Koen Kooi <koen@dominion.thruhere.net>
Date: Sun, 13 Nov 2011 12:16:37 -0500
In-Reply-To: <68FDBEA5-4FA5-4511-8FFA-03924A5171D5@dominion.thruhere.net>
References: <1321145853.14976.12.camel@lenny>
	<68FDBEA5-4FA5-4511-8FFA-03924A5171D5@dominion.thruhere.net>
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1321204598.14976.19.camel@lenny>
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: non-upstreamed patches
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
X-List-Received-Date: Sun, 13 Nov 2011 17:17:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2011-11-13 at 10:28 +0100, Koen Kooi wrote:
> Op 13 nov. 2011, om 01:57 heeft Colin Walters het volgende geschreven:
> 
> > So I've switched back to looking at Yocto again for a project, and the
> > Edison release works fine.  Thanks!
> > 
> > I work on GNOME (almost all of it)
> 
> Have a look at the GNOME layer as well http://cgit.openembedded.org/meta-openembedded/tree/ :)

What's the high level relationship of this tree versus the Yocto one?
The git log looks very similar, are Yocto commits cherry-picked into it?



