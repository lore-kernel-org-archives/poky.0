Return-Path: <jeff.dagenais@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A494E00D2A; Thu, 11 Apr 2019 05:21:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jeff.dagenais[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
	[209.85.222.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 654D9E00AD5
	for <poky@yoctoproject.org>; Thu, 11 Apr 2019 05:21:21 -0700 (PDT)
Received: by mail-qk1-f195.google.com with SMTP id o129so3266194qke.8
	for <poky@yoctoproject.org>; Thu, 11 Apr 2019 05:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=l5HHRro+qqu0pEPcU5nP+3xecQdN38IE5+MSYNDEAOc=;
	b=By2juRJIfatAxVXy7HD2irkjAvoSHNgON3k6ijQxWx1DcNitkmKJeZgryrHKz2HkLg
	td9Xh2/ILvAuHGzaavgcwaG/tN9AG/2BVP6j7TMO5QZZkhngXMuCZIklLP4DO3q9qljd
	6s3+QxFnvDrB/sEdyVpmIVg76y9boUfwIh303XOfa3GbuHZRP4aNdxyf0JaMaRIW+UNW
	R60A5CXSS+p7t6VqTHP/uTg6idlWqbnbP797LIuWgJRDNQLf+XR3MW1CzGk/IKIkXTTE
	7rE8KBTd31ektkAOjiiQOZ/QaZD6QCg4yMFs6/3yFz3JxVaZuxwMfV2yIv0DTbyRZ8KN
	H/JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=l5HHRro+qqu0pEPcU5nP+3xecQdN38IE5+MSYNDEAOc=;
	b=Fn1S8rtFqIfRdJTB6NrCAcHegKjOUOW1dEuInAbfyG0noV+5M4wMyHt7fnTBiw7gKq
	HIYSv9XhaUs6R7C7+oJ0HZ8AZu796EzGeMcthhQgfrm1O1Iwto2AqLyCqo0Y6FccPyov
	mR90k+6S9w09w2Rno+p7tyw4p3sdwMr8ZerPmARH1WQv/pAqvwY4Tv5RIqKKycKuKT+m
	nCh3xVt4iblpCKL4iYqECd3p5VP3aOk/oE9aGs9gYo7Lke4tRhtHJsCO+yfg25zelO0L
	jUjUQEYvOC7CNuZYldiHAqVVJl1nX06dMV3XTibiaccdrp1/lD4Jf1Z/63BcPE6LCLhj
	hGAA==
X-Gm-Message-State: APjAAAWfKJkpYgKjW7wieh5wZbewF1cmYt2jstoLECUVbKLtYnmc9Ala
	wM9GQ5zKONl/m814e89/T+c=
X-Google-Smtp-Source: APXvYqyLh72bu2gpIAEYsYJp+w3A+gLRNxTauagp5ZmfG6OyNabUScnctV4h3X/9xx1Ocv9Bl8NJuA==
X-Received: by 2002:a05:620a:1334:: with SMTP id
	p20mr39766876qkj.244.1554985280731; 
	Thu, 11 Apr 2019 05:21:20 -0700 (PDT)
Received: from jfdmac.sonatest.net
	(ipagstaticip-d73c7528-4de5-0861-800b-03d8b15e3869.sdsl.bell.ca.
	[174.94.156.236]) by smtp.gmail.com with ESMTPSA id
	x2sm19742037qkj.59.2019.04.11.05.21.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Apr 2019 05:21:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.2 \(3445.102.3\))
From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
In-Reply-To: <CANNYZj-Ttrgut1EpF4R-pzMD5jsdMFtyq7kEU9LzcQF9FGOHHg@mail.gmail.com>
Date: Thu, 11 Apr 2019 08:21:18 -0400
Message-Id: <DAE001AB-BCB8-46FF-9863-B90C01A360D2@gmail.com>
References: <20190410152319.3323-1-jeff.dagenais@gmail.com>
	<CANNYZj-Ttrgut1EpF4R-pzMD5jsdMFtyq7kEU9LzcQF9FGOHHg@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
X-Mailer: Apple Mail (2.3445.102.3)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH v1] weston: introduce meson build on v5.0.94
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
X-List-Received-Date: Thu, 11 Apr 2019 12:21:22 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Thanks for the come back.

> On Apr 11, 2019, at 07:12, Alexander Kanavin <alex.kanavin@gmail.com> =
wrote:
>=20
> This is a pre-release, which we generally do not accept.

I understand. I needed the latest weston and spent a lot of time working =
on the
conversion of the recipe to meson, so I mainly wanted to have the patch =
out
there so people can pick up from where I left off.

> Also, the
> patch should go to oe-core list.


I had checked https://www.yoctoproject.org/community/mailing-lists/ but =
couldn't
figure it out correctly. While grepping "oe-core" I found
=
https://git.yoctoproject.org/cgit/cgit.cgi/poky/plain/meta-poky/README.pok=
y
which perhaps should be referred to by the "mailing lists" =
yoctoproject.org
page?

I assume "oe-core" is openembedded-core@lists.openembedded.org ...

Will send there then.=

