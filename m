Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1251A4C8109B
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 01:19:38 -0600 (CST)
Received: by wye20 with SMTP id 20so562099wye.35
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 23:19:38 -0800 (PST)
Received: by 10.227.129.9 with SMTP id m9mr342596wbs.1.1295421578248;
	Tue, 18 Jan 2011 23:19:38 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id x3sm3481360wes.46.2011.01.18.23.19.36
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 18 Jan 2011 23:19:36 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <d57e678ab0ed9d20ebb08a5935e3d8d7bdbcfed5.1295410231.git.scott.a.garman@intel.com>
Date: Wed, 19 Jan 2011 08:19:36 +0100
Message-Id: <21D8C9BF-2F1A-479C-AF91-D7BE4ED87D44@dominion.thruhere.net>
References: <cover.1295410231.git.scott.a.garman@intel.com>
	<d57e678ab0ed9d20ebb08a5935e3d8d7bdbcfed5.1295410231.git.scott.a.garman@intel.com>
To: Scott Garman <scott.a.garman@intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 5/9] insane.bbclass: skip checks on .la installed status
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
X-List-Received-Date: Wed, 19 Jan 2011 07:19:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Op 19 jan 2011, om 05:19 heeft Scott Garman het volgende geschreven:

> Enabling libtool sysroot support triggers these errors but they
> are a valid change in behavior.

Based on the RPATH discussion off-list, should we add a check for RPATH =
pointing to staging as well? I know RPs patches fix it, but it would be =
nice to catch if it starts happening again.

regards,

Koen

>=20
> Signed-off-by: Scott Garman <scott.a.garman@intel.com>
> ---
> meta/classes/insane.bbclass |    5 -----
> 1 files changed, 0 insertions(+), 5 deletions(-)
>=20
> diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
> index 3ab4c2c..6f06d85 100644
> --- a/meta/classes/insane.bbclass
> +++ b/meta/classes/insane.bbclass
> @@ -427,11 +427,6 @@ def package_qa_check_staged(path,d):
>             path =3D os.path.join(root,file)
>             if file.endswith(".la"):
>                 file_content =3D open(path).read()
> -                # Don't check installed status for native/cross =
packages
> -                if not bb.data.inherits_class("native", d) and not =
bb.data.inherits_class("cross", d):
> -                    if installed in file_content:
> -                        error_msg =3D "%s failed sanity test =
(installed) in path %s" % (file,root)
> -                        sane =3D package_qa_handle_error(5, =
error_msg, "staging", path, d)
>                 if workdir in file_content:
>                     error_msg =3D "%s failed sanity test (workdir) in =
path %s" % (file,root)
>                     sane =3D package_qa_handle_error(8, error_msg, =
"staging", path, d)
> --=20
> 1.7.1
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


