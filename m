Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A9EDE01363
	for <poky@yoctoproject.org>; Tue, 10 Apr 2012 06:33:07 -0700 (PDT)
Received: by dajx4 with SMTP id x4so7783000daj.28
	for <poky@yoctoproject.org>; Tue, 10 Apr 2012 06:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=WbMfiryBawDBwiTAZJW/G7XL2KMWGXIZe19CCcKlG4Q=;
	b=LSqUm6g9S4InXW7VnFZEFcxjdGj5M8haz05AZgXA2Vwsh0eONP20m5xzPhD2W3r5tX
	lCnjtt8kPdXJaZWi9k+w0nDKG4moUUddPFSVry5DzsyVp15eAPkyBck/MPU19gaQBecN
	jANxT4leN/EAqgOOdHOfwpsEN6FfJ+3ofS8iG02wjuTnMttzosAW6zShS4DTiRJ0XKSp
	5rJavRmdRzEtq5kMK6hCfJKs/E6mnPfkx1B+hFNX1M4RYv5/LcazVZ641dfqpA1b0AYb
	naLGnLSMTZBxiTvdPprF49DjscK9nyqeFBgRM2NOcRu9iXX6O4MBCYiuYvOXg5qTy6iN
	huBg==
MIME-Version: 1.0
Received: by 10.68.241.167 with SMTP id wj7mr5710478pbc.141.1334064787326;
	Tue, 10 Apr 2012 06:33:07 -0700 (PDT)
Received: by 10.68.60.5 with HTTP; Tue, 10 Apr 2012 06:33:07 -0700 (PDT)
In-Reply-To: <dcba3335671dc92d395a6906ebb0cd02704eac63.1334064083.git.bruce.ashfield@windriver.com>
References: <cover.1334064083.git.bruce.ashfield@windriver.com>
	<dcba3335671dc92d395a6906ebb0cd02704eac63.1334064083.git.bruce.ashfield@windriver.com>
Date: Tue, 10 Apr 2012 09:33:07 -0400
Message-ID: <CADkTA4P8ECH_5LJjyEbNnGBA_qoD8_biWomxNFy0PgDUd9J+fQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 1/1] linux-yocto/meta-yocto: update hardware reference boards to v3.0.24
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
X-List-Received-Date: Tue, 10 Apr 2012 13:33:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 10, 2012 at 9:23 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> The meta-yocto hardware reference boards missed a SRCREV update when the
> base recipe when to v3.0.24. This updates the SRCREVs to ensure that the
> kernel that is built and booted matches the version information conveyed
> from the base recipe.
>
> Fixes [YOCTO #2265]
>
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
> =A0.../recipes-kernel/linux/linux-yocto_3.0.bbappend =A0| =A0 =A08 ++++--=
--
> =A01 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/m=
eta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
> index 2a9ad7b..9ee43e6 100644
> --- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
> +++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
> @@ -4,10 +4,10 @@ KMACHINE_mpc8315e-rdb =3D "yocto/standard/fsl-mpc8315e-=
rdb"
> =A0KMACHINE_beagleboard =3D "yocto/standard/beagleboard"
>
>
> -SRCREV_machine_atom-pc ?=3D "b42d0d016af36d0bbbb619c424200d4b5bc9ba28"
> -SRCREV_machine_routerstationpro ?=3D "f1bc894b09bd9b048df99e53fd6559c5d8=
4e4871"
> -SRCREV_machine_mpc8315e-rdb ?=3D "7ba6d6853b6e7cf00a742baeba1503c80fc053=
14"
> -SRCREV_machine_beagleboard ?=3D "fccd4e4041454f16f1e7a25569ec530eaa1bf89=
e"
> +SRCREV_machine_atom-pc ?=3D "12b4af6966843baf7bb3aedbae93e69ae19405b0"
> +SRCREV_machine_routerstationpro ?=3D "12b4af6966843baf7bb3aedbae93e69ae1=
9405b1"

Anyone looking closely will see that this is different for no good
reason .. it's been
fixed on my contrib branch.

Working too late at night .. again.

Bruce

> +SRCREV_machine_mpc8315e-rdb ?=3D "12b4af6966843baf7bb3aedbae93e69ae19405=
b0"
> +SRCREV_machine_beagleboard ?=3D "12b4af6966843baf7bb3aedbae93e69ae19405b=
0"
>
> =A0COMPATIBLE_MACHINE_mpc8315e-rdb =3D "mpc8315e-rdb"
> =A0COMPATIBLE_MACHINE_routerstationpro =3D "routerstationpro"
> --
> 1.7.5.4
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

