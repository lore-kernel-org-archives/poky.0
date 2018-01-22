Return-Path: <Isaac.Hermida@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C263E00E97; Mon, 22 Jan 2018 09:12:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.243.205 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 412 seconds by postgrey-1.32 at yocto-www;
	Mon, 22 Jan 2018 09:12:17 PST
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.205])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCA10E00D41
	for <poky@yoctoproject.org>; Mon, 22 Jan 2018 09:12:17 -0800 (PST)
Received: from [216.82.241.196] (using TLSv1.2 with cipher
	DHE-RSA-AES256-GCM-SHA384 (256 bits))
	by server-13.bemta-8.messagelabs.com id 7B/31-18082-5D9166A5;
	Mon, 22 Jan 2018 17:05:25 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpjkeJIrShJLcpLzFFi42Jx8l0noHtFMi3
	K4NITE4vp/9awOzB6tJ/oYwtgjGLNzEvKr0hgzTi86QlzwVKOiiXXZzI3MB5m72Lk4hASWMUo
	se/AXyhnA6PEhnmnmbsYOTnYBHQkfj96BJTg4BARkJY4t68SJCws4Ctxb8FRFhCbRUBV4nPbP
	iYQm1fAVWLj5d+sILaEgJzE5ekP2CDighInZz4Bq2cWkJA4+OIF2HghAWWJSUdeM0LUK0gcXv
	KbeQIjzywkLbOQtCxgZFrFqFGcWlSWWqRrYqqXVJSZnlGSm5iZo2toYKGXm1pcnJiempOYVKy
	XnJ+7iREYJvUMDIw7GP8diT7EKMnBpCTKG/YyNUqILyk/pTIjsTgjvqg0J7X4EKMMB4eSBO8i
	ibQoIcGi1PTUirTMHGDAwqQlOHiURHhvgqR5iwsSc4sz0yFSpxh1OW68eN3GLMSSl5+XKiXOu
	wWkSACkKKM0D24ELHouMcpKCfMyMjAwCPEUpBblZpagyr9iFOdgVBLm/QYyhSczrwRu0yugI5
	iAjrhRkwpyREkiQkqqgbGA7RmT+vuicpk1l7RWzXEUvxlt/YIv/HPugyK2u1dFTu7yy91QxdH
	OpxHOse92QGLubskO6bWN0o4zf2lNlPv3QYpBKM/1MauBu0RQ0n/ZLt4E5g1c6bZXpfULJq4q
	tpgZ2CAffzX89N23/3fuOGHK8CZk5Zy1DwUfTLBte/jaVNAr8IqHjxJLcUaioRZzUXEiABfOv
	YCZAgAA
X-Env-Sender: Isaac.Hermida@digi.com
X-Msg-Ref: server-14.tower-46.messagelabs.com!1516640724!89830612!1
X-Originating-IP: [66.77.174.16]
X-StarScan-Received: 
X-StarScan-Version: 9.4.45; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 12328 invoked from network); 22 Jan 2018 17:05:24 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
	by server-14.tower-46.messagelabs.com with SMTP;
	22 Jan 2018 17:05:24 -0000
Received: from DOR-SMS-XCH01.digi.com (10.49.8.99) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Mon, 22 Jan 2018 11:05:21 -0600
Received: from log-cln-ihermida.digi.com (10.101.2.100) by
	dor-sms-xch01.digi.com (10.49.8.99) with Microsoft SMTP Server (TLS) id
	14.3.361.1; Mon, 22 Jan 2018 18:05:19 +0100
From: Isaac Hermida <isaac.hermida@digi.com>
To: <poky@yoctoproject.org>
Date: Mon, 22 Jan 2018 18:05:15 +0100
Message-ID: <1516640715-1355-1-git-send-email-isaac.hermida@digi.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.101.2.100]
Subject: [rocko][PATCH] bluez5.inc: fix python3 core dependency for testtools
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
X-List-Received-Date: Mon, 22 Jan 2018 17:12:19 -0000
Content-Type: text/plain

Commit 62b28136c0114e4e9c19d3b62714bae23d73bc81 updated the python3 metapackage
to include python3-modules instead of python3-core.
Adapt the testtools dependency to depend on python-core instead of metapackage
python.

Signed-off-by: Isaac Hermida <isaac.hermida@digi.com>
---
 meta/recipes-connectivity/bluez5/bluez5.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-connectivity/bluez5/bluez5.inc b/meta/recipes-connectivity/bluez5/bluez5.inc
index 1807aa7c96d5..3e3b8238e2f8 100644
--- a/meta/recipes-connectivity/bluez5/bluez5.inc
+++ b/meta/recipes-connectivity/bluez5/bluez5.inc
@@ -130,7 +130,7 @@ def get_noinst_tools_paths (d, bb, tools):
 
 FILES_${PN}-noinst-tools = "${@get_noinst_tools_paths(d, bb, d.getVar('NOINST_TOOLS'))}"
 
-RDEPENDS_${PN}-testtools += "python3 python3-dbus python3-pygobject"
+RDEPENDS_${PN}-testtools += "python3-core python3-dbus python3-pygobject"
 
 SYSTEMD_SERVICE_${PN} = "${@bb.utils.contains('PACKAGECONFIG', 'systemd', 'bluetooth.service', '', d)}"
 INITSCRIPT_PACKAGES = "${PN}"

