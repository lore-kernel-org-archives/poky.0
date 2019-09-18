Return-Path: <Hector.Palacios@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65EE8E00D77; Wed, 18 Sep 2019 01:40:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [67.219.250.116 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
X-Greylist: delayed 795 seconds by postgrey-1.32 at yocto-www;
	Wed, 18 Sep 2019 01:40:39 PDT
Received: from mail1.bemta24.messagelabs.com (mail1.bemta24.messagelabs.com
	[67.219.250.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 336D0E00D75
	for <poky@yoctoproject.org>; Wed, 18 Sep 2019 01:40:39 -0700 (PDT)
Received: from [67.219.250.197] (using TLSv1.2 with cipher
	DHE-RSA-AES256-GCM-SHA384 (256 bits))
	by server-5.bemta.az-b.us-west-2.aws.symcld.net id 16/97-11074-B6AE18D5;
	Wed, 18 Sep 2019 08:27:23 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIIsWRWlGSWpSXmKPExsXi5LtOQDf7VWO
	sweGjYhbT/61ht/jxbCKrA5PH/rlr2D3aT/SxBTBFsWbmJeVXJLBmrJ31m7XgOlfFyxVFDYxN
	nF2MnBxCAqsYJb7M8uli5AKytzBKtK84ywSSYBMwkJhyfRpLFyMHh4iAtMS5fZUgYWYBF4m5S
	7exgdjCAiESJyduBStnEVCV+DDlB1icV8BW4ufLq2C2hIC8xOoNB5gh4oISJ2c+YYGYIyFx8M
	ULZogbVCXmfd7EClGvINF8uJ19AiPvLCQts5C0LGBkWsVokVSUmZ5RkpuYmaNraGCga2hopGt
	obAKkjfUSq3ST9EqLdctTi0t0jfQSy4v1iitzk3NS9PJSSzYxAsMtpaCtcAfj1llv9A4xSnIw
	KYnyRt5vjBXiS8pPqcxILM6ILyrNSS0+xCjDwaEkwSvxEignWJSanlqRlpkDDH2YtAQHj5IIr
	xBImre4IDG3ODMdInWK0Zhj59F5i5g5nna0LWEWYsnLz0uVEue1eAFUKgBSmlGaBzcIFpOXGG
	WlhHkZGRgYhHgKUotyM0tQ5V8xinMwKgnzTgKZwpOZVwK37xXQKUxAp9hFgJ1SkoiQkmpgYrz
	OxThZ75pL+ftPncV3Vbf5qbdOvX/zzK9DRhdux2ss2+8manm+y+vxsjW68xZlOYRWtIm9mGh/
	2lBs6wXZimbfr0ce2n387zg/8f/pbY5nfiivX1ku9PTjk0kykxoUAmyUo++yfdPVbEjMOhMjJ
	vvBcNME+cnnsq/tvljQLT/nYsybI2WzmULY/vyfrPL8t8NbB+ugR47rp05avCUh9szE5Q/3P9
	hlt6fV0fz6dlnHiu9/p/jXWOe9mCZktTCpN07jjWqlwIMoIb9ne+Pur3f9/3nrC1eGh0e5ZmU
	k7PvocPq+xm6Lbdd6ViYYB11e42J09cfFnWsd0//vuFPryys8hT/FhFf/6TEN3erpc5yUWIoz
	Eg21mIuKEwFBegWLRAMAAA==
X-Env-Sender: Hector.Palacios@digi.com
X-Msg-Ref: server-15.tower-345.messagelabs.com!1568795214!89865!11
X-Originating-IP: [66.77.174.16]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.43.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 10295 invoked from network); 18 Sep 2019 08:27:23 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
	by server-15.tower-345.messagelabs.com with ECDHE-RSA-AES256-SHA384
	encrypted SMTP; 18 Sep 2019 08:27:23 -0000
Received: from DOR-SMS-XCH01.digi.com (10.49.8.99) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 18 Sep 2019 03:27:15 -0500
Received: from log-cln-hpalacio2018.digi.com (10.101.2.172) by
	dor-sms-xch01.digi.com (10.49.8.99) with Microsoft SMTP Server (TLS) id
	14.3.468.0; Wed, 18 Sep 2019 10:27:12 +0200
From: Hector Palacios <hector.palacios@digi.com>
To: <poky@yoctoproject.org>
Date: Wed, 18 Sep 2019 10:26:55 +0200
Message-ID: <20190918082655.28746-1-hector.palacios@digi.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.101.2.172]
Subject: [PATCH] udev-extraconf: skip mounting partitions already mounted by systemd
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
X-List-Received-Date: Wed, 18 Sep 2019 08:40:41 -0000
Content-Type: text/plain

For some devices, udev may sometimes trigger twice the 'add' rule during
boot. Calling the mount.sh script twice will eventually fail for
already mounted partitions, but in that case, the script tries to remove
the created mountpoint, when it shouldn't.
This has been observed on USB sticks connected to a USB hub and may
result in devices not being mounted if plugged-in before booting.

This patch checks for already mounted partitions earlier (before creating
the mount point) and returns with no actions.

Signed-off-by: Hector Palacios <hector.palacios@digi.com>
---
 meta/recipes-core/udev/udev-extraconf/mount.sh | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/meta/recipes-core/udev/udev-extraconf/mount.sh b/meta/recipes-core/udev/udev-extraconf/mount.sh
index 79eb0145c2a6..b23731870ea2 100644
--- a/meta/recipes-core/udev/udev-extraconf/mount.sh
+++ b/meta/recipes-core/udev/udev-extraconf/mount.sh
@@ -38,6 +38,12 @@ done
 automount_systemd() {
     name="`basename "$DEVNAME"`"
 
+    # Skip already mounted partitions
+    if [ -f /run/systemd/transient/run-media-$name.mount ]; then
+        logger "mount.sh/automount" "/run/media/$name already mounted"
+        return
+    fi
+
     # Skip the partition which are already in /etc/fstab
     grep "^[[:space:]]*$DEVNAME" /etc/fstab && return
     for n in LABEL PARTLABEL UUID PARTUUID; do

