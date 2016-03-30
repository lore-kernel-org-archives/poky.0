Return-Path: <A.Baumfalk@astro-kom.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D40D4E00C4C; Wed, 30 Mar 2016 05:37:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,HK_NAME_DR,
	LOCALPART_IN_SUBJECT,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.173.193.132 listed in list.dnswl.org]
	* 1.1 LOCALPART_IN_SUBJECT Local part of To: address appears in Subject
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000] *  1.0 HK_NAME_DR HK_NAME_DR
X-Greylist: delayed 311 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Mar 2016 05:37:44 PDT
Received: from mailrelay-out2.netcologne.de (mailrelay-out2.netcologne.de
	[81.173.193.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6264CE00C27
	for <poky@yoctoproject.org>; Wed, 30 Mar 2016 05:37:44 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mailrelay-out2.netcologne.de (Postfix) with ESMTP id AC94010B5A6
	for <poky@yoctoproject.org>; Wed, 30 Mar 2016 14:32:31 +0200 (CEST)
Received: from [213.196.222.82] (helo=mailrelay-out2.netcologne.de)
	by localhost with ESMTP (eXpurgate 4.0.9)
	(envelope-from <A.Baumfalk@astro-kom.de>)
	id 56fbc75f-0aa2-7f0000012729-7f000001bdf5-1
	for <poky@yoctoproject.org>; Wed, 30 Mar 2016 14:32:31 +0200
Received: from ASTRO-EX1.Bensberg.de (unknown [213.196.222.82])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailrelay-out2.netcologne.de (Postfix) with ESMTPS
	for <poky@yoctoproject.org>; Wed, 30 Mar 2016 14:32:30 +0200 (CEST)
Received: from [192.168.8.2] (192.168.100.114) by ASTRO-EX1.Bensberg.de
	(192.168.100.26) with Microsoft SMTP Server (TLS) id 15.0.775.38;
	Wed, 30 Mar 2016 14:32:29 +0200
To: <poky@yoctoproject.org>
From: "Dr. Arno Baumfalk" <a.baumfalk@astro-kom.de>
Message-ID: <56FBC74C.4070204@astro-kom.de>
Date: Wed, 30 Mar 2016 14:32:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
X-Originating-IP: [192.168.100.114]
X-ClientProxiedBy: ASTRO-EX1.Bensberg.de (192.168.100.26) To
	ASTRO-EX1.Bensberg.de (192.168.100.26)
X-purgate-ID: 153929::1459341151-00000AA2-7C21F099/0/0
X-purgate: clean
Subject: poky: added overlay file
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
X-List-Received-Date: Wed, 30 Mar 2016 12:37:46 -0000
X-Groupsio-MsgNum: 10363
Content-Type: multipart/mixed; boundary="------------060305030409080305050100"

--------------060305030409080305050100
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I have found, that the init-live.sh script does not consider, that the 
overlay filesystem in the linux kernel has been renamed from "overlayfs" 
to "overlay" (and the mount API has changed, too).
Currently the script will not detect "overlay" and use "aufs" as a 
fallback, if present.

In order not to break anything for users of elder kernel versions I have 
simply added the "overlay" case to the script, see attached patch.


Best regards,
Arno Baumfalk



--------------060305030409080305050100
Content-Type: text/x-patch;
	name="0001-added-overlay-filesystem-to-init-live.sh.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="0001-added-overlay-filesystem-to-init-live.sh.patch"

From 860a4f3f038f362094c7bd20e6abef08767a44bd Mon Sep 17 00:00:00 2001
From: Arno Baumfalk <a.baumfalk@astro-kom.de>
Date: Tue, 22 Mar 2016 16:03:17 +0100
Subject: [PATCH] added overlay filesystem to init-live.sh (overlayfs was
 renamed and the mount api was changed)

---
 meta/recipes-core/initrdscripts/files/init-live.sh | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-core/initrdscripts/files/init-live.sh b/meta/recipes-core/initrdscripts/files/init-live.sh
index d852c57..fa9d9c6 100644
--- a/meta/recipes-core/initrdscripts/files/init-live.sh
+++ b/meta/recipes-core/initrdscripts/files/init-live.sh
@@ -169,7 +169,9 @@ mount_and_boot() {
 
     # determine which unification filesystem to use
     union_fs_type=""
-    if grep -q -w "overlayfs" /proc/filesystems; then
+    if grep -q -w "overlay" /proc/filesystems; then
+	union_fs_type="overlay"
+    elif grep -q -w "overlayfs" /proc/filesystems; then
 	union_fs_type="overlayfs"
     elif grep -q -w "aufs" /proc/filesystems; then
 	union_fs_type="aufs"
@@ -179,6 +181,21 @@ mount_and_boot() {
 
     # make a union mount if possible
     case $union_fs_type in
+	"overlay")
+	    mkdir -p /rootfs.ro /tmpfs
+	    if ! mount -n --move $ROOT_MOUNT /rootfs.ro; then
+		rm -rf /rootfs.ro /tmpfs
+		fatal "Could not move rootfs mount point"
+	    else
+		mount -t tmpfs -o rw,noatime,mode=755 tmpfs /tmpfs
+		mkdir /tmpfs/rootfs.rw /tmpfs/work
+		mount -t overlay -o "lowerdir=/rootfs.ro,upperdir=/tmpfs/rootfs.rw,workdir=/tmpfs/work" overlay $ROOT_MOUNT
+		mkdir -p $ROOT_MOUNT/rootfs.ro $ROOT_MOUNT/tempfs
+		mount --move /rootfs.ro $ROOT_MOUNT/rootfs.ro
+		mount --move /tmpfs $ROOT_MOUNT/tempfs
+		ln -s /tempfs/rootfs.rw $ROOT_MOUNT/rootfs.rw
+	    fi
+	    ;;
 	"overlayfs")
 	    mkdir -p /rootfs.ro /rootfs.rw
 	    if ! mount -n --move $ROOT_MOUNT /rootfs.ro; then
-- 
1.9.1


--------------060305030409080305050100--
