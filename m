Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9780B4C8009A
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 03:14:01 -0500 (CDT)
Received: by wwd20 with SMTP id 20so1605287wwd.11
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 01:14:00 -0700 (PDT)
Received: by 10.227.71.206 with SMTP id i14mr452485wbj.215.1300263240380;
	Wed, 16 Mar 2011 01:14:00 -0700 (PDT)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id bd8sm833840wbb.1.2011.03.16.01.13.59
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 16 Mar 2011 01:13:59 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <945a0bac5f7174fdb27b518b061cb8eabf640a78.1300230459.git.scott.a.garman@intel.com>
Date: Wed, 16 Mar 2011 09:13:58 +0100
Message-Id: <5B279E08-1255-421A-82AE-F3795325744B@dominion.thruhere.net>
References: <cover.1300230459.git.scott.a.garman@intel.com>
	<945a0bac5f7174fdb27b518b061cb8eabf640a78.1300230459.git.scott.a.garman@intel.com>
To: Scott Garman <scott.a.garman@intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/7] task-poky-ssh-dropbear: new task recipe for dropbear ssh
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
X-List-Received-Date: Wed, 16 Mar 2011 08:14:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 16 mrt 2011, om 00:12 heeft Scott Garman het volgende geschreven:

> From: Scott Garman <scott.a.garman@intel.com>
>=20
> This task can be used when IMAGE_FEATURES is set to
> ssh-server-dropbear.
>=20
> Signed-off-by: Scott Garman <scott.a.garman@intel.com>
> ---
> meta/recipes-core/tasks/task-poky-ssh-dropbear.bb |   17 =
+++++++++++++++++
> 1 files changed, 17 insertions(+), 0 deletions(-)
> create mode 100644 meta/recipes-core/tasks/task-poky-ssh-dropbear.bb
>=20
> diff --git a/meta/recipes-core/tasks/task-poky-ssh-dropbear.bb =
b/meta/recipes-core/tasks/task-poky-ssh-dropbear.bb
> new file mode 100644
> index 0000000..870d2d9
> --- /dev/null
> +++ b/meta/recipes-core/tasks/task-poky-ssh-dropbear.bb
> @@ -0,0 +1,17 @@
> +DESCRIPTION =3D "Dropbear SSH task for Poky"
> +LICENSE =3D "MIT"
> +LIC_FILES_CHKSUM =3D =
"file://${POKYBASE}/LICENSE;md5=3D3f40d7994397109285ec7b81fdeb3b58 \
> +                    =
file://${POKYBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420=
"
> +PR =3D "r0"
> +
> +PACKAGES =3D "\
> +    task-poky-ssh-dropbear \
> +    task-poky-ssh-dropbear-dbg \
> +    task-poky-ssh-dropbear-dev \
> +    "
> +
> +ALLOW_EMPTY =3D "1"
> +
> +RDEPENDS_task-poky-ssh-dropbear =3D "dropbear"
> +RDEPENDS_task-poky-ssh-dropbear-dbg =3D "dropbear-dbg"
> +RDEPENDS_task-poky-ssh-dropbear-dev =3D "dropbear-dev"

looks like a good candidate for 'inherit task'=

