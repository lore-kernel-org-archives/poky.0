Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 860F24C800A3
	for <poky@yoctoproject.org>; Tue,  8 Mar 2011 08:03:18 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Mar 2011 06:03:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,284,1297065600"; d="scan'208";a="717665387"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 08 Mar 2011 05:57:45 -0800
Date: Tue, 8 Mar 2011 22:03:20 +0800
From: Yu Ke <ke.yu@intel.com>
To: Dongxiao Xu <dongxiao.xu@intel.com>
Message-ID: <20110308140320.GG23315@kyu3-hedt>
References: <cover.1299254646.git.dongxiao.xu@intel.com>
	<11d60c5b1494c8c796d5e5020bcbb1285c769a73.1299254646.git.dongxiao.xu@intel.com>
MIME-Version: 1.0
In-Reply-To: <11d60c5b1494c8c796d5e5020bcbb1285c769a73.1299254646.git.dongxiao.xu@intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Tue, 08 Mar 2011 14:03:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Dongxiao,

Thanks for the fix. I just feel it may be better to do it in rootless x routine, instead of connman. because the "xuser" is introduced by rootless x routine, and the user name is configurable by /etc/X11/Xusername (details in meta/recipes-graphics/x11-common/xserver-nodm-init.bb: pkg_postinst). if the user name changed by user configuration, the connman will break again.

So I wonder if connman has the standard interface to grant permission, so that rootless x routine can call it to grant xuser permission. e.g.
- A group-based policy, i.e. for any user belongs to the connman group, it will has the required dbus permission.
- or a standalone command like "connman-perm xuser" which can add xuser into connman-dbus.conf

Also another alternative is: in connman pkg_postinst, get x user name from /etc/X11/Xusername, then grant the user permission. in this case, at least you won't need to hardcode the xuser name.

Regards
Ke

On Mar 07, 16:00, Dongxiao Xu wrote:
> From: Dongxiao Xu <dongxiao.xu@intel.com>
> 
> Some platform (like atom-pc) enables rootless X,
> thus the connman frontend run on it need the
> permission to connect with connman by dbus.
> This commit grants permission to xuser.
> 
> This fixes [BUGID #779]
> 
> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
> ---
>  .../connman-0.65/add_xuser_dbus_permission.patch   |   21 ++++++++++++++++++++
>  meta/recipes-connectivity/connman/connman_0.65.bb  |    3 +-
>  2 files changed, 23 insertions(+), 1 deletions(-)
>  create mode 100644 meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_permission.patch
> 
> diff --git a/meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_permission.patch b/meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_permission.patch
> new file mode 100644
> index 0000000..787d49b
> --- /dev/null
> +++ b/meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_permission.patch
> @@ -0,0 +1,21 @@
> +Some platform (like atom-pc) enables rootless X,
> +thus we need to add the xuser in the list.
> +
> +Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
> +
> +diff -ruN connman-0.65-orig/src/connman-dbus.conf connman-0.65/src/connman-dbus.conf
> +--- connman-0.65-orig/src/connman-dbus.conf	2011-03-04 09:34:49.000000000 +0800
> ++++ connman-0.65/src/connman-dbus.conf	2011-03-04 09:35:21.000000000 +0800
> +@@ -7,6 +7,12 @@
> +         <allow send_interface="net.connman.Agent"/>
> +         <allow send_interface="net.connman.Counter"/>
> +     </policy>
> ++    <policy user="xuser">
> ++        <allow own="net.connman"/>
> ++        <allow send_destination="net.connman"/>
> ++        <allow send_interface="net.connman.Agent"/>
> ++        <allow send_interface="net.connman.Counter"/>
> ++    </policy>
> +     <policy at_console="true">
> +         <allow send_destination="net.connman"/>
> +     </policy>
> diff --git a/meta/recipes-connectivity/connman/connman_0.65.bb b/meta/recipes-connectivity/connman/connman_0.65.bb
> index 0b077e1..8bb84a1 100644
> --- a/meta/recipes-connectivity/connman/connman_0.65.bb
> +++ b/meta/recipes-connectivity/connman/connman_0.65.bb
> @@ -1,5 +1,5 @@
>  require connman.inc
> -PR = "r0"
> +PR = "r1"
>  
>  EXTRA_OECONF += "\
>    ac_cv_path_WPASUPPLICANT=/usr/sbin/wpa_supplicant \
> @@ -21,6 +21,7 @@ EXTRA_OECONF += "\
>  SRC_URI  = "\
>    http://www.kernel.org/pub/linux/network/connman/connman-${PV}.tar.gz \
>    file://fix-shutdown-ap-disconnect.patch \
> +  file://add_xuser_dbus_permission.patch \
>    file://connman \
>  "
>  
> -- 
> 1.7.1
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

