Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id A9A4F4C800A0;
	Wed, 30 Mar 2011 19:03:32 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwr19 with SMTP id 19so2647721iwr.35
	for <multiple recipients>; Wed, 30 Mar 2011 17:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=SQxexLuN1IS0FcMmzMP7XKUESDdidnUFDHS9YdMh+/8=;
	b=O7XqS5lXKJuJCmblMM7MprZ/HJw0nOCwW9TiN5zCZYQuZGjjEozbWUUBCYSLJrck5R
	q/kRWCc6JBFaN6UqEQyvJWjFa2Te1ASN3pmN3tonvuRfI1qI3RrSFTrxXjPBBW+jAVlF
	bFaIJmFW20zt+Y172n+czks9Te1PymiCg0lTk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=r9o8o7jlQgRlswb63W3zbomE31MbfmjkVTLZe1w2JBYELTvaY1S7yT+p0Dq6B6YwTu
	SaSgdkUUl3tIPX43gQ88g+bItDo0eJwvQDNzodj8TSWwaTBm4UpXz/oPlahF/BLWevP3
	b5vcmXpPH/X4oAj85tbISx3Q5DRI6ln1qYSU8=
MIME-Version: 1.0
Received: by 10.231.130.87 with SMTP id r23mr1839008ibs.189.1301529812003;
	Wed, 30 Mar 2011 17:03:32 -0700 (PDT)
Received: by 10.231.155.138 with HTTP; Wed, 30 Mar 2011 17:03:31 -0700 (PDT)
In-Reply-To: <3596f8420135f2bdbff81390cedf4a8d9a895670.1301518292.git.bruce.ashfield@windriver.com>
References: <cover.1301518292.git.bruce.ashfield@windriver.com>
	<3596f8420135f2bdbff81390cedf4a8d9a895670.1301518292.git.bruce.ashfield@windriver.com>
Date: Wed, 30 Mar 2011 20:03:31 -0400
Message-ID: <AANLkTimxo-aCDOvaCdhkUY2nFfSSoyBJ8kOtR3xk7tWY@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [PATCH 1/1] linux-yocto/crownbay: update configuration
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
X-List-Received-Date: Thu, 31 Mar 2011 00:03:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 30, 2011 at 4:53 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> The crownbay has been updated for 2.6.37, the BSP branch
> already contans the changes, and this is the update of meta
> to the new config values:
>
> =A0crownbay: update eg20t config
> =A0crownbay: set cpu type to MATOM
>
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
> =A0.../conf/distro/include/poky-default-revisions.inc | =A0 =A02 +-
> =A01 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/c=
onf/distro/include/poky-default-revisions.inc
> index 98db029..245e0d2 100644
> --- a/meta/conf/distro/include/poky-default-revisions.inc
> +++ b/meta/conf/distro/include/poky-default-revisions.inc
> @@ -108,7 +108,7 @@ SRCREV_machine_pn-linux-yocto_atom-pc ?=3D "69cfbdf9f=
1ff461a75e5b77d6d7ba35e97db4c
> =A0SRCREV_machine_pn-linux-yocto_routerstationpro ?=3D "8db69980d76e1f863=
af409e70175963f23de83ab"
> =A0SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?=3D "6861d8a4d58f8aa75997f=
7678cc454791544507a"
> =A0SRCREV_machine_pn-linux-yocto_beagleboard ?=3D "69cfbdf9f1ff461a75e5b7=
7d6d7ba35e97db4cc3"
> -SRCREV_machine_pn-linux-yocto ?=3D "69cfbdf9f1ff461a75e5b77d6d7ba35e97db=
4cc3"
> +SRCREV_machine_pn-linux-yocto ?=3D "51c761795b078bf3c80104ed6e73b3d99506=
7384"

And this is why double checking is the best policy. This is wrong, but
I've already
pushed a fixed patch to the zedd/crownbay contrib branch.

Cheers,

Bruce

> =A0SRCREV_meta_pn-linux-yocto ?=3D "16cabf8ce412b5f8599f92a9e11dfd0ee6e0a=
d12"
> =A0SRCREV_pn-linux-libc-headers-yocto ??=3D "69cfbdf9f1ff461a75e5b77d6d7b=
a35e97db4cc3"
> =A0SRCREV_pn-matchbox-config-gtk ??=3D "3ed74dfb7c57be088a5ab36e446c0ccde=
9fa1028"
> --
> 1.7.0.4
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

