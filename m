Return-Path: <u.oelmann@pengutronix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45E82D43362
	for <webhook@archiver.kernel.org>; Thu,  7 Nov 2024 14:11:25 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
 by mx.groups.io with SMTP id smtpd.web11.72646.1730988676642954027
 for <poky@lists.yoctoproject.org>;
 Thu, 07 Nov 2024 06:11:17 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: pengutronix.de, ip: 185.203.201.7, mailfrom: u.oelmann@pengutronix.de)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1t93EA-0007Kn-Ke; Thu, 07 Nov 2024 15:11:14 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1t93EA-002TQP-0V;
	Thu, 07 Nov 2024 15:11:14 +0100
Received: from uol by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1t93EA-001T5U-0C;
	Thu, 07 Nov 2024 15:11:14 +0100
From: =?utf-8?Q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
To: "Ross Burton" <ross.burton@arm.com>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH] local.conf.sample: update IMAGE_FEATURES
 comments to remove debug-tweaks
In-Reply-To: <20241107134805.2071772-1-ross.burton@arm.com> (Ross Burton's
	message of "Thu, 7 Nov 2024 13:48:05 +0000")
References: <20241107134805.2071772-1-ross.burton@arm.com>
User-Agent: mu4e 1.12.6; emacs 29.4
Date: Thu, 07 Nov 2024 15:11:14 +0100
Message-ID: <6rh68jnngd.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: u.oelmann@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: poky@lists.yoctoproject.org
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 07 Nov 2024 14:11:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13483

Hi Ross,

On Thu, Nov 07 2024 at 13:48 +0000, "Ross Burton" <ross.burton@arm.com> wro=
te:
> Remove debug-tweaks and add the features that it included.
>
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
>  .../conf/templates/default/local.conf.sample  | 36 +++++++++----------
>  1 file changed, 18 insertions(+), 18 deletions(-)
>
> diff --git a/meta-poky/conf/templates/default/local.conf.sample b/meta-po=
ky/conf/templates/default/local.conf.sample
> index cfa77106ab3..02aa3f238f2 100644
> --- a/meta-poky/conf/templates/default/local.conf.sample
> +++ b/meta-poky/conf/templates/default/local.conf.sample
> @@ -125,24 +125,24 @@ DISTRO ?=3D "poky"
>  # Extra image configuration defaults
>  #
>  # The EXTRA_IMAGE_FEATURES variable allows extra packages to be added to=
 the generated
> -# images. Some of these options are added to certain image types automat=
ically. The
> -# variable can contain the following options:
> -#  "dbg-pkgs"       - add -dbg packages for all installed packages
> -#                     (adds symbol information for debugging/profiling)
> -#  "src-pkgs"       - add -src packages for all installed packages
> -#                     (adds source code for debugging)
> -#  "dev-pkgs"       - add -dev packages for all installed packages
> -#                     (useful if you want to develop against libs in the=
 image)
> -#  "ptest-pkgs"     - add -ptest packages for all ptest-enabled packages
> -#                     (useful if you want to run the package test suites)
> -#  "tools-sdk"      - add development tools (gcc, make, pkgconfig etc.)
> -#  "tools-debug"    - add debugging tools (gdb, strace)
> -#  "eclipse-debug"  - add Eclipse remote debugging support

the patch removes "eclipse-debug" as well. Was that intended?

Best regards
Ulrich


> -#  "tools-profile"  - add profiling tools (oprofile, lttng, valgrind)
> -#  "tools-testapps" - add useful testing tools (ts_print, aplay, arecord=
 etc.)
> -#  "debug-tweaks"   - make an image suitable for development
> -#                     e.g. ssh root access has a blank password
> -# There are other application targets that can be used here too, see
> +# images. Some of these options are added to certain image types automat=
ically. Some
> +# of the features available are:
> +#  "dbg-pkgs"             - add -dbg packages for all installed packages
> +#                           (adds symbol information for debugging/profi=
ling)
> +#  "src-pkgs"             - add -src packages for all installed packages
> +#                           (adds source code for debugging)
> +#  "dev-pkgs"             - add -dev packages for all installed packages
> +#                           (useful if you want to develop against libs =
in the image)
> +#  "ptest-pkgs"           - add -ptest packages for all ptest-enabled pa=
ckages
> +#                           (useful if you want to run the package test =
suites)
> +#  "tools-sdk"            - add development tools (gcc, make, pkgconfig =
etc.)
> +#  "tools-debug"          - add debugging tools (gdb, strace)
> +#  "tools-profile"        - add profiling tools (oprofile, lttng, valgri=
nd)
> +#  "tools-testapps"       - add useful testing tools (ts_print, aplay, a=
record etc.)
> +#  "allow-empty-password" - allow users to have an empty password
> +#  "empty-root-password"  - the root user has no password set
> +#  "allow-root-login      - the root user can login
> +# There are other features that can be used here too, see
>  # meta/classes-recipe/image.bbclass and
>  # meta/classes-recipe/core-image.bbclass for more details.
>  # We default to allowing root login without a password for convenience.
--=20
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

