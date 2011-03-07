Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D85224C800A7
	for <poky@yoctoproject.org>; Mon,  7 Mar 2011 02:08:45 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Mar 2011 00:08:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,276,1297065600"; d="scan'208";a="609817598"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 07 Mar 2011 00:08:44 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 7 Mar 2011 16:07:47 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 7 Mar 2011 16:07:46 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Mon, 7 Mar 2011
	16:07:45 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 7 Mar 2011 16:07:44 +0800
Thread-Topic: [poky] [PATCH 1/1] connman: add xuser to the dbus permission list
Thread-Index: Acvcndi0IaJHj/lKS4y6mmr1dQJiDgAAFygg
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A33573446@shsmsx501.ccr.corp.intel.com>
References: <cover.1299254646.git.dongxiao.xu@intel.com>
	<11d60c5b1494c8c796d5e5020bcbb1285c769a73.1299254646.git.dongxiao.xu@intel.com>
In-Reply-To: <11d60c5b1494c8c796d5e5020bcbb1285c769a73.1299254646.git.dongxiao.xu@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 1/1] connman: add xuser to the dbus permission list
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
X-List-Received-Date: Mon, 07 Mar 2011 08:08:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dongxiao Xu wrote:
> From: Dongxiao Xu <dongxiao.xu@intel.com>
>=20
> Some platform (like atom-pc) enables rootless X, thus the connman
> frontend run on it need the permission to connect with connman by
> dbus. =20
> This commit grants permission to xuser.
>=20
> This fixes [BUGID #779]

This line has been changed to [YOCTO #779] in the branch. I forgot to chang=
e it in pull request.
See http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Ddxu4/bu=
gfix&id=3D9bbd4a5d8521de2667bc13eb51023519653db3c4

Thanks,
Dongxiao

>=20
> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
> ---
>  .../connman-0.65/add_xuser_dbus_permission.patch   |   21
>  ++++++++++++++++++++
>  meta/recipes-connectivity/connman/connman_0.65.bb  |    3 +- 2 files
> changed, 23 insertions(+), 1 deletions(-)  create mode 100644
> meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_permission.=
patch
>=20
> diff --git
> a/meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_permissio=
n.patch
> b/meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_permissio=
n.patch
> new file mode 100644 =20
> index 0000000..787d49b
> --- /dev/null
> +++
> b/meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_perm
> +++ ission.patch @@ -0,0 +1,21 @@
> +Some platform (like atom-pc) enables rootless X, thus we need to add
> +the xuser in the list.
> +
> +Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
> +
> +diff -ruN connman-0.65-orig/src/connman-dbus.conf
> connman-0.65/src/connman-dbus.conf +---
> connman-0.65-orig/src/connman-dbus.conf	2011-03-04 09:34:49.000000000
> +0800 ++++ connman-0.65/src/connman-dbus.conf	2011-03-04
> 09:35:21.000000000 +0800 +@@ -7,6 +7,12 @@ +         <allow
> send_interface=3D"net.connman.Agent"/> +         <allow
> send_interface=3D"net.connman.Counter"/> +     </policy>
> ++    <policy user=3D"xuser">
> ++        <allow own=3D"net.connman"/>
> ++        <allow send_destination=3D"net.connman"/>
> ++        <allow send_interface=3D"net.connman.Agent"/>
> ++        <allow send_interface=3D"net.connman.Counter"/>
> ++    </policy>
> +     <policy at_console=3D"true">
> +         <allow send_destination=3D"net.connman"/>
> +     </policy>
> diff --git a/meta/recipes-connectivity/connman/connman_0.65.bb
> b/meta/recipes-connectivity/connman/connman_0.65.bb=20
> index 0b077e1..8bb84a1 100644
> --- a/meta/recipes-connectivity/connman/connman_0.65.bb
> +++ b/meta/recipes-connectivity/connman/connman_0.65.bb
> @@ -1,5 +1,5 @@
>  require connman.inc
> -PR =3D "r0"
> +PR =3D "r1"
>=20
>  EXTRA_OECONF +=3D "\
>    ac_cv_path_WPASUPPLICANT=3D/usr/sbin/wpa_supplicant \ @@ -21,6 +21,7
>    @@ EXTRA_OECONF +=3D "\  SRC_URI  =3D "\
>  =20
> http://www.kernel.org/pub/linux/network/connman/connman-${PV}.tar.gz
>    \ file://fix-shutdown-ap-disconnect.patch \ +=20
>  file://add_xuser_dbus_permission.patch \ file://connman \ "


