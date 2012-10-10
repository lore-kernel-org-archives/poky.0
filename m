Return-Path: <ftonello@masimolabs.com>
Received: from mail.masimolabs.com (wsip-70-183-20-162.oc.oc.cox.net
	[70.183.20.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0B88E0027E
	for <poky@yoctoproject.org>; Wed, 10 Oct 2012 09:24:54 -0700 (PDT)
Received: from TROI.masimolabs.com (192.168.10.22) by mail.masimolabs.com
	(192.168.10.25) with Microsoft SMTP Server (TLS) id 14.1.379.0;
	Wed, 10 Oct 2012 09:24:02 -0700
Received: from [192.168.48.44] (192.168.48.44) by troi.masimolabs.com
	(192.168.10.22) with Microsoft SMTP Server (TLS) id 14.1.379.0;
	Wed, 10 Oct 2012 09:23:56 -0700
Message-ID: <5075A157.1010601@cercacor.com>
Date: Wed, 10 Oct 2012 09:24:55 -0700
From: Felipe Ferreri Tonello <ftonello@cercacor.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <1349809566-7013-1-git-send-email-ftonello@cercacor.com>
In-Reply-To: <1349809566-7013-1-git-send-email-ftonello@cercacor.com>
X-Forwarded-Message-Id: <1349809566-7013-1-git-send-email-ftonello@cercacor.com>
Subject: [PATCH] connman: fixed init script, so it can run with nfs
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
X-List-Received-Date: Wed, 10 Oct 2012 16:24:55 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

From: "Felipe F. Tonello" <ftonello@cercacor.com>

Adding -I to the arguments, connmand will ignore the eth interface, so 
if you are
using nfs it will not be disconnected.

FIXME: it might not work if using more than one eth interface. But it's 
better
than not using connman with nfs at all.

Signed-off-by: Felipe F. Tonello <ftonello@cercacor.com>
---
  meta/recipes-connectivity/connman/connman/connman |    7 +++++--
  1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-connectivity/connman/connman/connman 
b/meta/recipes-connectivity/connman/connman/connman
index 4a0017f..e90925e 100644
--- a/meta/recipes-connectivity/connman/connman/connman
+++ b/meta/recipes-connectivity/connman/connman/connman
@@ -26,11 +26,14 @@ while read dev mtpt fstype rest; do
  	fi
  done

+ethn=`ifconfig | grep eth | sed -e "s/\(eth[0-9]\)\(.*\)/\1/"`
+
  do_start() {
  	EXTRA_PARAM=""
-	if test $nfsroot -eq 0 ; then
-		$DAEMON $EXTRA_PARAM
+	if test $nfsroot -eq 1 ; then
+		EXTRA_PARAM="-I $ethn"
  	fi
+	$DAEMON $EXTRA_PARAM
  }

  do_stop() {
-- 
1.7.9.5




