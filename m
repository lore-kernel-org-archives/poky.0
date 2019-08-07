Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E3EAE00D90; Wed,  7 Aug 2019 05:53:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C95FE00C9B
	for <poky@yoctoproject.org>; Wed,  7 Aug 2019 05:53:18 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 463WdR4r9mz4s;
	Wed,  7 Aug 2019 14:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1565182396;
	bh=gs8VaBzF4ZhFLgIjo/u2qauCn50SXfTQ1qkLcAVRQNk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PkQmIb5ShYBqJAzEYWQh3Y7tUKDb3LUgAOkuEuXM9tZDwN0vSWfciuzLR4Di4mzT4
	yxf+42C1k5XTTrSwEqeKJaW5nhB92hDmaz+gmha3FW+O/n8g8ZMQREWP/0JnguEpdJ
	F7vPOOhYVYQptkbXW+GGhkiHRlhhTKOx0XLbkHi1qj3HnVtjkGYfRUmPq1q7Nrmm+I
	PqLCFKZ3jR9O0exIMVpi067xuA/b44yNBjHn/bXiGTAb/EPD4F24+K6I5HgZIPpavM
	H801zMLx98kCBuWhVzbUvPezOY5KLqh0CigMhBbguSEMbc6cnU4SBMRFMxeLq0gRxe
	4LGLrjik3BcAJWbdeJXmn+FTUAP1rEPsVwDRndGgG+mVO49JntGd+zJdB9v5W6DlGx
	VG3SafZ8uc/Uh1FR6ARlc5TkYmo0m5WvFZuv+HOZghBsKUVv8YhhZf4EjxlRS6GClh
	E7mTKT+HLatgfA4ynhjQtVVIHbYM/u8fIWtZ8FpudX7xLYF8PDw377LvB4VYAImJ1J
	0ivSj4e/6HDNIWbtywvtMz626iGhwbmoWH8CNh7M052SPQw0mtzWfpOJchBvDib8fn
	6pocCQyv6IweapKPrr7uMjN7N55GPyNn440we5iWqUuIfD0udwgtTq+pydmCgfoBU8
	ypQLiFwOBD/eE/I8molT4VPs=
Date: Wed, 7 Aug 2019 15:53:12 +0300
From: Adrian Bunk <bunk@stusta.de>
To: Tim Blechmann <tim@klingt.org>
Message-ID: <20190807125312.GA24727@localhost>
References: <qidgh2$3lce$1@blaine.gmane.org> <20190807060446.GA5249@localhost>
	<320c4e09-e480-4a93-4ef2-a6453e4ca779@klingt.org>
MIME-Version: 1.0
In-Reply-To: <320c4e09-e480-4a93-4ef2-a6453e4ca779@klingt.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: poky@yoctoproject.org
Subject: Re: deb: custom compression
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
X-List-Received-Date: Wed, 07 Aug 2019 12:53:20 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed, Aug 07, 2019 at 02:35:37PM +0800, Tim Blechmann wrote:
> >> poky compresses deb packages with the default flags, which these days
> >> boils down to using xz compression.
> >> trying to cut down turnaround times for local builds, i tried to modify
> >> the `package_deb` class to be able to force a low gzip compression via a
> >> `DPKG_FAST` parameter (patch attached).
> >>
> >> could this patch be accepted upstream?
> > 
> > It is specific to your problem (and sent to the wrong mailing list).
> 
> my bad (thought it's this one, as the file resides in the poky repo).
> which is the right place for it?

Not really your bad since it is complicated,
README.poky contains the details.

> > A more generic solution would be similar to OPKGBUILDCMD,
> > allowing the user to pass any parameters (including any
> > compression settings) to dpkg-deb.
> 
> something like `DPKG_OPTIONS` i'm happy to adapt the patch?

opkg (upstream defaults to gzip) has
  OPKGBUILDCMD ??= 'opkg-build -Z xz -a "${XZ_DEFAULTS}"'

For dpkg-deb I would therefore suggest
  DPKGDEBCMD ??= 'dpkg-deb'

> thanks,
> tim

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


