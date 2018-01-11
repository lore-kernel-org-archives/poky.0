Return-Path: <gael.portay@savoirfairelinux.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E8ABE00DB6; Thu, 11 Jan 2018 10:12:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.88.110.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
	[208.88.110.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7951BE0056D
	for <poky@yoctoproject.org>; Thu, 11 Jan 2018 10:12:49 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id E8F459C30C5
	for <poky@yoctoproject.org>; Thu, 11 Jan 2018 13:12:48 -0500 (EST)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id P9m0PM2gLUcX; Thu, 11 Jan 2018 13:12:48 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 680419C3088;
	Thu, 11 Jan 2018 13:12:48 -0500 (EST)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id m3KyuP2R0K3I; Thu, 11 Jan 2018 13:12:48 -0500 (EST)
Received: from archlinux (unknown [173.231.104.26])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id 3E0B89C307C;
	Thu, 11 Jan 2018 13:12:48 -0500 (EST)
Date: Thu, 11 Jan 2018 13:12:47 -0500
From: =?iso-8859-1?Q?Ga=EBl?= PORTAY <gael.portay@savoirfairelinux.com>
To: poky@yoctoproject.org
Message-ID: <20180111181247.zcb74beq33jgn5qe@archlinux>
References: <cover.1512682188.git.gael.portay@savoirfairelinux.com>
	<ebf0d7257abc739215a3e852e8c5c364bc1b6f29.1512682188.git.gael.portay@savoirfairelinux.com>
MIME-Version: 1.0
In-Reply-To: <ebf0d7257abc739215a3e852e8c5c364bc1b6f29.1512682188.git.gael.portay@savoirfairelinux.com>
User-Agent: NeoMutt/20171013-35-c06e73
Cc: Ash Charles <ash.charles@savoirfairelinux.com>
Subject: Re: [PATCH 1/1] package_manager.py: fix opkg custom config path
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
X-List-Received-Date: Thu, 11 Jan 2018 18:12:53 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi maintainers,

On Thu, Dec 07, 2017 at 04:38:47PM -0500, Ga=EBl PORTAY wrote:
> The opkg custom config feature has moved to the package_manager python
> module. This feature is broken since commit 19c538f57c.
>=20
> The python function os.path.join joins path components. If a component
> is an absolute path, all previous components are thrown away.
>=20
> The sysconfdir variable is an absolute path component. It causes the
> leading target rootfs component to be removed. As a result, the
> package-manager module tries to write in the real root filesystem
> instead of the temporary work directory for the rootfs image.
>=20
> This fixes the issue by prepending the target rootfs component using th=
e
> string concatenation operator when the file is opened (without using
> os.path module).
>=20
> Cc: Ash Charles <ash.charles@savoirfairelinux.com>
> Signed-off-by: Ga=EBl PORTAY <gael.portay@savoirfairelinux.com>
> ---
>  meta/lib/oe/package_manager.py | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>=20
> diff --git a/meta/lib/oe/package_manager.py b/meta/lib/oe/package_manag=
er.py
> index ef69b18b642..642d714b51e 100644
> --- a/meta/lib/oe/package_manager.py
> +++ b/meta/lib/oe/package_manager.py
> @@ -953,12 +953,11 @@ class OpkgPM(OpkgDpkgPM):
>              """
>              if (self.d.getVar('FEED_DEPLOYDIR_BASE_URI') or "") !=3D "=
":
>                  for arch in self.pkg_archs.split():
> -                    cfg_file_name =3D os.path.join(self.target_rootfs,
> -                                                 self.d.getVar("syscon=
fdir"),
> +                    cfg_file_name =3D os.path.join(self.d.getVar("sysc=
onfdir", True),
>                                                   "opkg",
>                                                   "local-%s-feed.conf" =
% arch)
> =20
> -                    with open(cfg_file_name, "w+") as cfg_file:
> +                    with open(self.target_rootfs + cfg_file_name, "w+"=
) as cfg_file:
>                          cfg_file.write("src/gz local-%s %s/%s" %
>                                         (arch,
>                                          self.d.getVar('FEED_DEPLOYDIR_=
BASE_URI'),
> --=20
> 2.15.0
>=20

Does anybody has any comment about this patch?

Regards,
Gael

