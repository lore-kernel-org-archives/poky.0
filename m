Return-Path: <cristian.iorga@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D6C2E01485
	for <poky@yoctoproject.org>; Wed,  9 Jan 2013 02:12:33 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Jan 2013 02:12:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,436,1355126400"; d="scan'208";a="243879299"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga001.jf.intel.com with ESMTP; 09 Jan 2013 02:12:31 -0800
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.95]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.13]) with mapi id
	14.01.0355.002; Wed, 9 Jan 2013 10:12:30 +0000
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: "eu@felipetonello.com" <eu@felipetonello.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] [PATCH] connman: fixed init script, so it can run with nfs
Thread-Index: AQHN7hHj3OlUR3L/Jk2o6u78my7w0ZhAxjog
Date: Wed, 9 Jan 2013 10:12:29 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB161DBDFD@IRSMSX102.ger.corp.intel.com>
References: <1357691823-8155-1-git-send-email-eu@felipetonello.com>
In-Reply-To: <1357691823-8155-1-git-send-email-eu@felipetonello.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Cc: "Felipe F. Tonello" <ftonello@cercacor.com>
Subject: Re: [PATCH] connman: fixed init script, so it can run with nfs
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
X-List-Received-Date: Wed, 09 Jan 2013 10:12:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Felipe,

I have some questions regarding this patch:

1. On which hardware/machine have you tested this patch? (real hardware, qe=
mu machine, etc)
2. In what way is connman affecting nfs? In other words, what is the root c=
ause?
3. Which version of connman are you using?

I am asking these questions because I am working on something somehow relat=
ed, and I think a more general fix might be needed.

Regards,
Cristian Iorga


-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of eu@felipetonello.com
Sent: Wednesday, January 09, 2013 2:37 AM
To: poky@yoctoproject.org
Cc: Felipe F. Tonello
Subject: [poky] [PATCH] connman: fixed init script, so it can run with nfs

From: "Felipe F. Tonello" <ftonello@cercacor.com>

Adding -I to the arguments, connmand will ignore the eth interface, so if y=
ou are using nfs it will not be disconnected.

FIXME: it might not work if using more than one eth interface. But it's bet=
ter than not using connman with nfs at all.

Signed-off-by: Felipe F. Tonello <ftonello@cercacor.com>
---
 meta/recipes-connectivity/connman/connman/connman |    7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-connectivity/connman/connman/connman b/meta/recip=
es-connectivity/connman/connman/connman
index 4a0017f..e90925e 100644
--- a/meta/recipes-connectivity/connman/connman/connman
+++ b/meta/recipes-connectivity/connman/connman/connman
@@ -26,11 +26,14 @@ while read dev mtpt fstype rest; do
 	fi
 done
=20
+ethn=3D`ifconfig | grep eth | sed -e "s/\(eth[0-9]\)\(.*\)/\1/"`
+
 do_start() {
 	EXTRA_PARAM=3D""
-	if test $nfsroot -eq 0 ; then
-		$DAEMON $EXTRA_PARAM
+	if test $nfsroot -eq 1 ; then
+		EXTRA_PARAM=3D"-I $ethn"
 	fi
+	$DAEMON $EXTRA_PARAM
 }
=20
 do_stop() {
--
1.7.9.5

_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky

