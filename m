Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DC17E00D8C; Tue,  6 Aug 2019 23:04:53 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EF22E00BAA
	for <poky@yoctoproject.org>; Tue,  6 Aug 2019 23:04:51 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 463LZ92fyDz65;
	Wed,  7 Aug 2019 08:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1565157890;
	bh=8IJVdyNr/SpBgKvHByFR9kMkWa6wkBLZPPFkInE598A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DTwU0ie1huyq36BRPS1pQFJxFVjtxRZP71r1g8fcGYXGISZ8Fw+c0V7SWdcpjAgpI
	Hp2QFsOgaMIoHINrVhFlECsA9pVTItsiBxwqm1HoxZ7hMtNyjLEIV/rZO+Dd6AtIk0
	BF4O74dpNXJb2swJt/kvyuBJ0fTiAkjuCZ4r7J/FdZIb/WAiZPNY5ah4gOA55+RYge
	tsVVQ9VvzEbPiUCpb0ouaoo9HnlKU7izFX8G+XLV0rr/xMVASQk7+wp3Ab+DCSh0+P
	jiNAWOBK0OiThPrs0tJ8mhPCDpNSSyEYIJ8aPt9Xz++63aWzBvBM3Ykyw539pm735j
	8DN2KWiK+Hw6pTrXSjo/jp2ly0s6BJ6XsjcAMartTiiVa+yHeBaTV+LxyzNYK4WWxS
	gsr4adP1u3CpnsaZzHhAXRCrZbN0hIjyrVs/WBun8UMnIk6aY/P6M5K4q0rtzhpBPC
	R5i0dK85Wx1JCt72lwVJrXgwfBA8Fp531HNYmmcDDO7pAp+uOu7YpNsTPLrJPLbHQs
	oFiIo4DJUpQxHkv/HpkR5Oy2pGPyQApg0+zBNDqy+BQhbJ4D5ztsFMh7x2QHViC5ld
	45vn9BgMMOOWuj8z5d4qO7TU0aruYTfP4gQI1wuORv+kFVCKCKQ2htcvzIuUOJJD6D
	Cp5yU61DRJrtn0cxS3IItDQs=
Date: Wed, 7 Aug 2019 09:04:46 +0300
From: Adrian Bunk <bunk@stusta.de>
To: Tim Blechmann <tim@klingt.org>
Message-ID: <20190807060446.GA5249@localhost>
References: <qidgh2$3lce$1@blaine.gmane.org>
MIME-Version: 1.0
In-Reply-To: <qidgh2$3lce$1@blaine.gmane.org>
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
X-List-Received-Date: Wed, 07 Aug 2019 06:04:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed, Aug 07, 2019 at 11:28:32AM +0800, Tim Blechmann wrote:
> hi!
> 
> poky compresses deb packages with the default flags, which these days
> boils down to using xz compression.
> trying to cut down turnaround times for local builds, i tried to modify
> the `package_deb` class to be able to force a low gzip compression via a
> `DPKG_FAST` parameter (patch attached).
> 
> could this patch be accepted upstream?

It is specific to your problem (and sent to the wrong mailing list).

A more generic solution would be similar to OPKGBUILDCMD,
allowing the user to pass any parameters (including any
compression settings) to dpkg-deb.

This would also support the opposite usecase of "xz -9",
which is both faster to download and faster to decompress
than the default "xz -6".

> thanks a lot,
> tim
>...

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


