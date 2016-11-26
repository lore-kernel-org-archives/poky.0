Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12AAAE00CC3; Fri, 25 Nov 2016 20:10:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA1E9E00CA3
	for <poky@yoctoproject.org>; Fri, 25 Nov 2016 20:10:04 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id i88so3635827pfk.2
	for <poky@yoctoproject.org>; Fri, 25 Nov 2016 20:10:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=8kaZnWDPFBr9pljnUPzy8lHpIfyKloLLIHzdjfa9Yhw=;
	b=xCmWWyu0zIyj1o784q+xmmLrcp5TmNOMrW3cF1OLNClgK1s2m1QU1YQPqEPg9vwqYp
	Q50QCTieTX9pzuZo+eee+6wnfFK7tgplPdrIqYFsdouVGqsUKoq+92OULYK8GDDLM/9T
	LvW0FqhhS4tHT6COgJNiEDysO9zr63vVFwH2nxJzWcJpytzARmsf72bL7NH7MygidSWz
	O3AdfeMgAkoAhsAH9aHOFLHVkLtdXnSrsyHUexGp9YH+dofJZuDMy14YnyGkXr/4Ui98
	WfmRl9KtJ0LbxXBGOyTRkvmGYLwRsguUgFevB3JiHfWrFgbrhKCH3XyPrQauk+Lvesp+
	iDng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=8kaZnWDPFBr9pljnUPzy8lHpIfyKloLLIHzdjfa9Yhw=;
	b=XEcgQROe5VrC2mBn8vli26L7nYrPxvoVZjq7lgNDdskfNJ1dK1YNxJGguVjm2sA6X4
	hrYZr4w02nD5rkHG3CkJnkx/eukUWqfSathI1iWNQwH2OuN12NRnrSnW2ljGa3vIt6uG
	J1dlaAe4GI43e8ykLzOR4DwwjLB3VCIiSUK/Ux0B9SIeFzrd0i9XFbCUGxC4vQwGRDyG
	opTZMaXq0fxUJnqRIZBgH5gbc7+DS9+CI14KcBH5X6Yd2HjsNmB2RdpZIuN3DWYk9T7w
	8bjVZrCi1XMbMFWYsu0gwpjFmrUKp9+5oS5vcvvn2H34aq95y+Z/w+jjnfSSZZSx9GN0
	dSwA==
X-Gm-Message-State: AKaTC01VSng43OPmnwOjz9u9/tePXRt/pWVtTAiX2EV+K8e2hWlpbXnbxpvUqoKzblvcEg==
X-Received: by 10.98.68.84 with SMTP id r81mr11084878pfa.174.1480133403834;
	Fri, 25 Nov 2016 20:10:03 -0800 (PST)
Received: from ?IPv6:2601:646:8882:b8c:38de:4871:ed5d:b69f?
	([2601:646:8882:b8c:38de:4871:ed5d:b69f])
	by smtp.gmail.com with ESMTPSA id
	o126sm52948078pga.34.2016.11.25.20.10.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 25 Nov 2016 20:10:03 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <e2521c31acb6e6cdf59e9d7101439035efe085be.1480022350.git.leonardo.sandoval.gonzalez@linux.intel.com>
Date: Fri, 25 Nov 2016 20:10:02 -0800
Message-Id: <1A8E575B-ED23-4411-AE18-DA3EC439F3F5@gmail.com>
References: <cover.1480022350.git.leonardo.sandoval.gonzalez@linux.intel.com>
	<e2521c31acb6e6cdf59e9d7101439035efe085be.1480022350.git.leonardo.sandoval.gonzalez@linux.intel.com>
To: leonardo.sandoval.gonzalez@linux.intel.com
X-Mailer: Apple Mail (2.3251)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH v2 1/1] selftest: skip tests for poky-tiny distro due to incompatible kernel machine
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
X-List-Received-Date: Sat, 26 Nov 2016 04:10:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Nov 24, 2016, at 1:34 PM, =
leonardo.sandoval.gonzalez@linux.intel.com wrote:
>=20
> From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
>=20
> The poky-tiny distro points to linux-yocto-tiny which in turns the =
compatible
> machine is set to qemux86. Current tests are defined for just =
generic86 architectures
> so tests are not possible for the corresponding distro.
>=20

can we fix the distro policy instead of skipping ?

> Signed-off-by: Leonardo Sandoval =
<leonardo.sandoval.gonzalez@linux.intel.com>
> ---
> meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py    | 3 ++-
> meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py | 3 ++-
> 2 files changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py =
b/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py
> index 00aa36f..63643e5 100644
> --- a/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py
> +++ b/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py
> @@ -25,9 +25,10 @@ class Gummiboot(oeSelfTest):
>         """
>=20
>         # Build a genericx86-64/efi gummiboot image
> +        if self.distro =3D=3D 'poky-tiny':
> +            self.skipTest('Machine %s not compatible with =
linux-yocto-tiny' % get_bb_var('MACHINE'))
>         bitbake('syslinux syslinux-native parted-native =
dosfstools-native mtools-native core-image-minimal')
>=20
> -
>     @testcase(1101)
>     def test_efi_gummiboot_images_can_be_built(self):
>         """
> diff --git a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py =
b/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
> index f7f74db..52b33ed 100644
> --- a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
> +++ b/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
> @@ -25,9 +25,10 @@ class Systemdboot(oeSelfTest):
>         """
>=20
>         # Build a genericx86-64/efi gummiboot image
> +        if self.distro =3D=3D 'poky-tiny':
> +            self.skipTest('Machine %s not compatible with =
linux-yocto-tiny' % get_bb_var('MACHINE'))
>         bitbake('mtools-native core-image-minimal')
>=20
> -
>     @testcase(1445)
>     def test_efi_systemdboot_images_can_be_built(self):
>         """
> --=20
> 2.1.4
>=20
> --=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


