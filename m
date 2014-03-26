Return-Path: <ross.burton@intel.com>
Received: from mail-qc0-f175.google.com (mail-qc0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0EF9E00A44
	for <poky@yoctoproject.org>; Wed, 26 Mar 2014 03:14:26 -0700 (PDT)
Received: by mail-qc0-f175.google.com with SMTP id e16so2213893qcx.6
	for <poky@yoctoproject.org>; Wed, 26 Mar 2014 03:14:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=gu+2iuRfw2vmbq8oo6qVrjSxOVL4+dTH042myi44das=;
	b=kXnMSzC4VX2r1j0PsxmPYI7wSsCHUeNzxnKd/pNQYDy6vRLQEOesumvISWCLak75GP
	3HqZwOXX5v1oE88X085Gs2AejHt3NWqhbLXSMNjXxOm7Nt3gU0UTIP4NAK3WfbUB9/2h
	FJAbfSbi2ZGGi2SMXt/pI2d4NRaCHSVjRFiJm8jSbqe24ryB9EQSelSwyNDls2+0DlkJ
	LHwFX/AKOwA0nqZNIyC6oO1POHctpxvNRkvLeTiHpgTVZ1fwM4WYLBq4y6nnygm2Rl06
	wFveZ4DN4h3eY5qjArFZxxWtNlDK7EruY2BRxLiSJOs/CiErjzUjhjn8UzLkcDtglOQ/
	q3zQ==
X-Gm-Message-State: ALoCoQn/ukOi9JAvdZfCRK/7Cd45SSh9frOTGSXTi6IA+xvosEqoBPVbquMsWv/rLhWrr2tpgkqi
X-Received: by 10.224.75.5 with SMTP id w5mr28343637qaj.52.1395828865246; Wed,
	26 Mar 2014 03:14:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Wed, 26 Mar 2014 03:14:05 -0700 (PDT)
In-Reply-To: <53329F23.8020307@visionaid.com>
References: <53329F23.8020307@visionaid.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 26 Mar 2014 10:14:05 +0000
Message-ID: <CAJTo0LZUE-QAmPGysmwxCfxSajms8-VhWTXcunjMgW8bMAYNqw@mail.gmail.com>
To: Jeremy Powell <jeremy@visionaid.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Poky core-image-minimal fails to build with package_deb
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
X-List-Received-Date: Wed, 26 Mar 2014 10:14:26 -0000
Content-Type: text/plain; charset=UTF-8

On 26 March 2014 09:34, Jeremy Powell <jeremy@visionaid.com> wrote:
> I'm trying to build poky from the git master head, but there are several
> problems in the DpkgIndexer class in ./meta/lib/oe/package_manager.py

Can you file a bug for these issues please (reply here with the number
so it doesn't get lost).

Ross

