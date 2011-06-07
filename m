Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 019C34C80479
	for <poky@yoctoproject.org>; Tue,  7 Jun 2011 07:59:02 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yib12 with SMTP id 12so2714605yib.35
	for <poky@yoctoproject.org>; Tue, 07 Jun 2011 05:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=kT3LRf2ex/pixfEY/NTOWAMGE81ZLb9LcM0sL72q+44=;
	b=mZMy57EiHSm1jvXTItQjPCjkW127hY7L3nFSSLekcZbgCoYhf5iZiQGbih5uZ7bnwI
	HYRSt0Er3OoV078K295lh4I7jubsipcL2aGwi9raAjcpaocki3aDDevebSUHNY0o+W8A
	Wo9iNnLMykJ9wAT+McTDzkcalGhD8tH7fhBsM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=UYR+WT5v3PEj4ej5irwGxvgmUhvPb1BLgidi8JxzsjLJ7gVjM8LPO+l+0atQBlRhXA
	vYy9NNCfRIcLKteqd8Ur3QLfbsnXAHyYY08d08ViTT55WvkfT03L3ff//McD3wo4EMUi
	ZeXe8GQ+5eZiQKMW356a1TNKCHnSNknndfCoA=
MIME-Version: 1.0
Received: by 10.91.65.11 with SMTP id s11mr5469734agk.159.1307451537404; Tue,
	07 Jun 2011 05:58:57 -0700 (PDT)
Received: by 10.90.96.1 with HTTP; Tue, 7 Jun 2011 05:58:57 -0700 (PDT)
In-Reply-To: <9e80fcf7db2a25b1caa913c61764a9f36c1abcaf.1307436402.git.dongxiao.xu@intel.com>
References: <cover.1307436402.git.dongxiao.xu@intel.com>
	<9e80fcf7db2a25b1caa913c61764a9f36c1abcaf.1307436402.git.dongxiao.xu@intel.com>
Date: Tue, 7 Jun 2011 08:58:57 -0400
Message-ID: <BANLkTikQH8oxMmMWzrrBjPd_PN_200PUsQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: y@pokylinux.org
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/5] kernel.bbclass: Auto load cdc-acm and cdc-wdm
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
X-List-Received-Date: Tue, 07 Jun 2011 12:59:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 7, 2011 at 4:52 AM,  <y@pokylinux.org> wrote:
> From: Dongxiao Xu <dongxiao.xu@intel.com>
>
> Automatically load cdc-acm.ko and cdc-wdm.ko to support 3G module.
>
> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
> ---
> =A0meta/classes/kernel.bbclass | =A0 =A02 ++
> =A01 files changed, 2 insertions(+), 0 deletions(-)
>
> diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
> index 1bb69f5..1b50b38 100644
> --- a/meta/classes/kernel.bbclass
> +++ b/meta/classes/kernel.bbclass
> @@ -264,6 +264,8 @@ module_autoload_rfcomm =3D "rfcomm"
> =A0module_autoload_sa1100-rtc =3D "sa1100-rtc"
> =A0# sa1100-rtc was renamed in 2.6.23 onwards
> =A0module_autoload_rtc-sa1100 =3D "rtc-sa1100"
> +module_autoload_cdc-acm =3D "cdc-acm"
> +module_autoload_cdc-wdm =3D "cdc-wdm"

Hi Dongxiao,

This patch should go to oe-core, since we are talking about
meta/classes/kernel.bbclass.

But seeing this looks like it doesn't belong in kernel.bbclass at all (neit=
her
do the existing autoloads), but would be better defined in either a BSP or
distro layer.

But maybe I'm missing something, and I'll be enlightened shortly :)

Cheers,

Bruce

>
> =A0# alias defaults (alphabetically sorted)
> =A0module_conf_af_packet =3D "alias net-pf-17 af_packet"
> --
> 1.7.1
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

