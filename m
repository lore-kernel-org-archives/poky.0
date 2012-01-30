Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63623E0030B
	for <poky@yoctoproject.org>; Mon, 30 Jan 2012 12:18:22 -0800 (PST)
Received: by dakj40 with SMTP id j40so4747028dak.35
	for <poky@yoctoproject.org>; Mon, 30 Jan 2012 12:18:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=H3IBiq07Bf+PStfeU+ncRTm9AvxfYceD/2mPncjLz/c=;
	b=xBjCr0qO4xDD2QblZf1/Hhn5am3eaTqhFGoY/ufb+1Kzz44EShTThYQj1kV8zz/hj4
	vJ5XVNlbh1Vd70GEd/LsHmXN6TlI2xEyEN5877zR9OevTvvUIoUm/wsXxFj4tuKo1dOK
	SlZn7IpmEV06COiTGqSWquGKx6XOzKzM8HbKI=
MIME-Version: 1.0
Received: by 10.68.189.69 with SMTP id gg5mr44132938pbc.41.1327954702121; Mon,
	30 Jan 2012 12:18:22 -0800 (PST)
Received: by 10.143.7.11 with HTTP; Mon, 30 Jan 2012 12:18:22 -0800 (PST)
In-Reply-To: <cover.1327954069.git.bruce.ashfield@windriver.com>
References: <cover.1327954069.git.bruce.ashfield@windriver.com>
Date: Mon, 30 Jan 2012 15:18:22 -0500
Message-ID: <CADkTA4MGw-u-aBKNNCDYSu8GnwuZg6hyFvhgzGdTjf1BX0GbFw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/2] linux-yocto/meta-yocto: 3.2.2 and 3.0.18
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
X-List-Received-Date: Mon, 30 Jan 2012 20:18:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 30, 2012 at 3:16 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> Richard/Saul,
>
> This is a follow up to the oe-core pull request that I just sent.
> Once that merges, this can go into yocto to add 3.0.18 and 3.2.2
> support for the emulated boards.

Urk. There's actually a 3rd patch in this series. Sorry about that. On
the same branch:


ommit 879bdbb8ec2c01eaca6ac6769b39cf7bdd9d6a2d
Author: Bruce Ashfield <bruce.ashfield@windriver.com>
Date:   Mon Jan 30 01:12:51 2012 -0500

    linux-yocto/meta-yocto: update to v3.0.18 + features

    Updateing the meta-yocto SRCREVs to the new 3.0.18 kernel.

    The -stable team released v3.0.18, so it becomes the new base for the
    linux-yocto_3.0 recipe.

    Along with the 3.0.18 update this kernel refresh brings in the followin=
g
    changes:

          59314a3 meta/beagleboard: Using CONFIG_PANEL_GENERIC_DPI=3Dy
          b168325 crownbay: use emgd-1.10
          281b80f kver: bumping to v3.0.18
          0d5d0dd common-pc*: add SMP and virtio

    Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

Cheers,

Bruce

>
> Testing and updating of the hardware reference platforms will follow
> in the next few days.
>
> Cheers,
>
> Bruce
>
> The following changes since commit 879bdbb8ec2c01eaca6ac6769b39cf7bdd9d6a=
2d:
>
> =A0linux-yocto/meta-yocto: update to v3.0.18 + features (2012-01-30 14:35=
:20 -0500)
>
> are available in the git repository at:
> =A0git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
> =A0http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dzedd/kernel-yo=
cto
>
> Bruce Ashfield (2):
> =A0linux-yocto/meta-yocto: create linux-yocto 3.2 bbappend
> =A0meta-yocto/poky.conf: set qemu* preferred linux-yocto version to 3.2
>
> =A0meta-yocto/conf/distro/poky.conf =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0 12 ++++++------
> =A0.../recipes-kernel/linux/linux-yocto_3.2.bbappend =A0| =A0 19 ++++++++=
+++++++++++
> =A02 files changed, 25 insertions(+), 6 deletions(-)
> =A0create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bba=
ppend
>
> --
> 1.7.4.1
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

