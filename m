Return-Path: <walters@verbum.org>
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 067CAE0175C
	for <poky@yoctoproject.org>; Wed, 23 Oct 2013 16:18:00 -0700 (PDT)
Received: from compute6.internal (compute6.nyi.mail.srv.osa [10.202.2.46])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 70D2620A9A;
	Wed, 23 Oct 2013 19:17:56 -0400 (EDT)
Received: from frontend1 ([10.202.2.160])
	by compute6.internal (MEProxy); Wed, 23 Oct 2013 19:17:56 -0400
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=subject:from:to:cc:in-reply-to:references
	:content-type:date:message-id:mime-version
	:content-transfer-encoding; s=smtpout; bh=DRQyDgqZcSozxW1pGK6bbk
	wWyfg=; b=HA3Ok6mOMy6sBJYVZUgK8AlQ2Kl439Md3wv+H+hZBxnWWXQASqrCyp
	GAYwkeO4F/Qgm7HANiABF4C+cD6DjIlYiZ3yZ4/C8XTOWmn7MbrI0SgLZfRk3evk
	SbfUwY+KY28fpxrDd53MUfqphJmmDd/5MQT78pqu0eo2cOY+JTErw=
X-Sasl-enc: AxiPfz0mRuybHO7XcO0zymAP7PEoGEuiqidEZmvTWrlQ 1382570276
Received: from [192.168.1.2] (unknown [66.31.18.51])
	by mail.messagingengine.com (Postfix) with ESMTPA id 18391C00E84;
	Wed, 23 Oct 2013 19:17:56 -0400 (EDT)
From: Colin Walters <walters@verbum.org>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <CADkTA4NEoi90rFy7mDTdzaJx2twGVD5=Q=o8mc=tSH4nmATNtA@mail.gmail.com>
References: <1382568000.6691.84.camel@localhost>
	<CADkTA4NEoi90rFy7mDTdzaJx2twGVD5=Q=o8mc=tSH4nmATNtA@mail.gmail.com>
Date: Wed, 23 Oct 2013 19:17:55 -0400
Message-ID: <1382570275.6691.87.camel@localhost>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.3 (2.32.3-26.el6) 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Using linux-yocto_3.10 with dylan
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
X-List-Received-Date: Wed, 23 Oct 2013 23:18:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2013-10-23 at 19:06 -0400, Bruce Ashfield wrote:

> It's the kernel tools. You need to bring back the matched tools -> the new 3.10
> kernel tree, since they no longer use guilt to manage patches on branches, but
> instead use pure git. The guilt tools can't detect that the patches are in fact
> already applied to the tree, and try to push changes again, which lead to your
> error.

Ah hah!  Yep, after a quick copy of kern-tools.bb from oe-core master
and a "bitbake kern-tools-native", looks like "bitbake linux-yocto" is
past do_patch and onto do_compile now.  I should have posted a few hours
earlier before I was knee deep in debugging prints and generated shell
scripts...

Thank you!




