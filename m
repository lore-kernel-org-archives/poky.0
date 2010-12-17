Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 713B34C810AC;
	Fri, 17 Dec 2010 00:46:32 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so258400iyb.35
	for <multiple recipients>; Thu, 16 Dec 2010 22:46:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=xC/LQ3MqdwXioEuiBzG1qikwP9w/Fg5TQzIkhcbodBo=;
	b=TAoftxw7l5JVK/ixaHkStUc/GqBm2NN6IcVvzFPNeptbjdVdowlBXi8norrhgLFDAI
	78/g5WnyXV2MOsjGECmEPZBlKSnXbGK15tVkMnYtJNALLDQns4PqCs+WtWsEWquPsBOL
	qYt5gjSFE+ru5wccpNvjYBt6DrFrivTtw0HNk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=u0b/tBZzzFcKb1h0hJHC9hxa1N1T6wrDThrzEm2gWiC38dq3hbkDE5+U9K61GP1+4W
	6YPtWbGdxPXDjI7TV4dZJly0WRm+qKAcf1YOPAxAC7+LKKQLcqCrTUSVe4t5Zt5Yol+3
	Mfq/o+pB7VtRaRw9vpxoYLvj/YdxAvkpJR0bQ=
MIME-Version: 1.0
Received: by 10.231.182.13 with SMTP id ca13mr440596ibb.57.1292568392049; Thu,
	16 Dec 2010 22:46:32 -0800 (PST)
Received: by 10.231.200.140 with HTTP; Thu, 16 Dec 2010 22:46:32 -0800 (PST)
In-Reply-To: <4D0A8CEC.5030709@linux.intel.com>
References: <4D0A8CEC.5030709@linux.intel.com>
Date: Fri, 17 Dec 2010 07:46:32 +0100
Message-ID: <AANLkTikeMd8b73HSMddL3H0dRwjSih=n6zdYABvP7mDN@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [yocto] Announcing poky-extras repository available
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
X-List-Received-Date: Fri, 17 Dec 2010 06:46:32 -0000
Content-Type: text/plain; charset=ISO-8859-1

Cool.
Thanks a lot!
Would this also be the place where user contributed bsp's (like the
one for kirkwood I posted a while ago) could go in?

Frans

