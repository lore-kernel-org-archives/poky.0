Return-Path: <anton@advancedtelematic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F331DE00E41; Tue, 16 Aug 2016 06:13:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80C86E00E41
	for <poky@yoctoproject.org>; Tue, 16 Aug 2016 06:13:24 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id q128so143192847wma.1
	for <poky@yoctoproject.org>; Tue, 16 Aug 2016 06:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=advancedtelematic.com; s=google;
	h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
	:references; bh=ruGJNln6zbfGm+XTNAKiq+KJlj3Vb3755EnMWYY8ge0=;
	b=RmhUoVTslqsEzQI0p63LPvIPCYherVPCErdtsW5nKYzHMDtEWCdgdbKG5L8/ZmrY39
	Y2YFxmK3fikhNshOPZFBQQEsq0ueYch0SvAqqi0welbL1wxoJzEc5MsbgMOQBoviHOLy
	dSvq6fYiQw+R3K5N7FHrKhZGMfuZpYndWaGqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=ruGJNln6zbfGm+XTNAKiq+KJlj3Vb3755EnMWYY8ge0=;
	b=k9pHqjnh3D4QsFvnVHplMaZ2SQ7uBNjMmLolyBb1b0xVgbLls1BbJOqtXFnJhTF5uu
	vbaHYYWDMeKP33+CijBrZfJLHdjbc8s2lrkqE9D6GIYTU+0tgve/OXWxMuAmkeQf4+ro
	+MDNGXxc6q40DIr93NRpWijJeNSYWaG2wRoelsGezY9mmiw7oU7oC0sNdo8hjpEHzryn
	IqOGpuyNorXzeE9XNtn1siYysWA2MvkGmN+Dz2kg9ZwJK5TKAP9fXudGGB7g1niCA8NJ
	YTjLH71FuPoSptY5s38kC6b3dzzw6ZOfJ828t14m4qntxselLHzacuEb/qajp4DU5sQ6
	0A1w==
X-Gm-Message-State: AEkoousGLgra08Mr4V6JuvdmYd2qTlvKnrQONYe0CiaTGawbVlft1y4XrVek6SOfUUnsJQ==
X-Received: by 10.28.23.210 with SMTP id 201mr6249301wmx.108.1471353203664;
	Tue, 16 Aug 2016 06:13:23 -0700 (PDT)
Received: from anton-ats.internal.advancedtelematic.com
	(p578a6cbb.dip0.t-ipconnect.de. [87.138.108.187])
	by smtp.gmail.com with ESMTPSA id
	qe2sm26689917wjc.28.2016.08.16.06.13.22 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 16 Aug 2016 06:13:23 -0700 (PDT)
From: Anton Gerasimov <anton@advancedtelematic.com>
To: poky@yoctoproject.org
Date: Tue, 16 Aug 2016 15:11:16 +0200
Message-Id: <1d6657130fb77dc09f3ae2be57746fc01078be2d.1471348606.git.anton@advancedtelematic.com>
X-Mailer: git-send-email 2.8.3
In-Reply-To: <cover.1471348606.git.anton@advancedtelematic.com>
References: <cover.1471348606.git.anton@advancedtelematic.com>
In-Reply-To: <cover.1471348606.git.anton@advancedtelematic.com>
References: <cover.1471348606.git.anton@advancedtelematic.com>
Subject: [PULL 1/1] runqemu: add OTA image
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
X-List-Received-Date: Tue, 16 Aug 2016 13:13:28 -0000

Add support for "otaimg" live image. This type of image also requires providing
u-boot as bios.

Signed-off-by: Anton Gerasimov <anton@advancedtelematic.com>
---
 scripts/runqemu          | 27 +++++++++++++++++++++++++--
 scripts/runqemu-internal | 41 +++++++++++++++++++++++++++++++----------
 2 files changed, 56 insertions(+), 12 deletions(-)

diff --git a/scripts/runqemu b/scripts/runqemu
index d52ea15..b6c9b54 100755
--- a/scripts/runqemu
+++ b/scripts/runqemu
@@ -96,7 +96,7 @@ process_filename() {
 		    error "conflicting FSTYPE types [$FSTYPE] and [$EXT]"
 		fi
 		;;
-	/hddimg/|/hdddirect/|/vmdk/|/wic/|/qcow2/|/vdi/)
+	/hddimg/|/hdddirect/|/vmdk/|/wic/|/qcow2/|/vdi/|/otaimg/)
 		FSTYPE=$EXT
 		VM=$filename
 		ROOTFS=$filename
@@ -128,7 +128,7 @@ while true; do
         "ext"[234] | "jffs2" | "nfs" | "btrfs")
             check_fstype_conflicts $arg
             ;;
-        "hddimg" | "hdddirect" | "wic" | "vmdk" | "qcow2" | "vdi" | "iso")
+        "hddimg" | "hdddirect" | "wic" | "vmdk" | "qcow2" | "vdi" | "iso" | "otaimg")
             check_fstype_conflicts $arg
             IS_VM="true"
             ;;
@@ -447,6 +447,29 @@ findimage() {
     exit 1
 }
 
+# Bios is necessary when using otaimg, look for it
+if [ "$FSTYPE" = "otaimg" ]; then
+    setup_path_vars 1
+    bios_option=`expr "$SCRIPT_QEMU_OPT" : '.*\(-bios\)'`
+    echo "bios_option: $bios_option"
+    if [ -z $bios_option ]; then
+        echo "LOOK FOR BIOS at ${DEPLOY_DIR_IMAGE}"
+        # if -bios wasn't specified explicitly, try to look at the default location
+        if [ -e "${DEPLOY_DIR_IMAGE}/u-boot.rom" ]; then
+            SCRIPT_QEMU_OPT="$SCRIPT_QEMU_OPT -bios ${DEPLOY_DIR_IMAGE}/u-boot.rom"
+        else
+            error "OTA image requires specifying u-boot as BIOS"
+        fi
+    fi
+fi
+
+
+# Kernel command line is stored in compressed format as u-boot environment
+#   which breaks determining drive interface with grep in runqemu-internal
+if [ "$FSTYPE" = "otaimg" ]; then
+    FORCE_DRIVE_IF="ide"
+fi
+
 if [ -e "$ROOTFS" -a -z "$FSTYPE" ]; then
     # Extract the filename extension
     EXT=`echo $ROOTFS | awk -F . '{ print \$NF }'`
diff --git a/scripts/runqemu-internal b/scripts/runqemu-internal
index d10466d..9811cf9 100755
--- a/scripts/runqemu-internal
+++ b/scripts/runqemu-internal
@@ -705,16 +705,37 @@ echo "Running $QEMU..."
 if [ "$IS_VM" = "true" ]; then
     # Check root=/dev/sdX or root=/dev/vdX
     [ ! -e "$VM" ] && error "VM image is not found!"
-    if grep -q 'root=/dev/sd' $VM; then
-        echo "Using scsi drive"
-        VM_DRIVE="-drive if=none,id=hd,file=$VM -device virtio-scsi-pci,id=scsi -device scsi-hd,drive=hd"
-    elif grep -q 'root=/dev/hd' $VM; then
-        echo "Using ide drive"
-        VM_DRIVE="$VM"
-    else
-        echo "Using virtio block drive"
-        VM_DRIVE="-drive if=virtio,file=$VM"
-    fi
+
+    case "$FORCE_DRIVE_IF" in
+        "ide")
+            echo "Using ide drive"
+            VM_DRIVE="$VM"
+	    ;;
+	"scsi")
+            echo "Using scsi drive"
+            VM_DRIVE="-drive if=none,id=hd,file=$VM -device virtio-scsi-pci,id=scsi -device scsi-hd,drive=hd"
+	    ;;
+	"virtio")
+            echo "Using virtio block drive"
+            VM_DRIVE="-drive if=virtio,file=$VM"
+	    ;;
+	"")
+            if grep -q 'root=/dev/sd' $VM; then
+                echo "Using scsi drive"
+                VM_DRIVE="-drive if=none,id=hd,file=$VM -device virtio-scsi-pci,id=scsi -device scsi-hd,drive=hd"
+            elif grep -q 'root=/dev/hd' $VM; then
+                echo "Using ide drive"
+                VM_DRIVE="$VM"
+            else
+                echo "Using virtio block drive"
+                VM_DRIVE="-drive if=virtio,file=$VM"
+            fi
+	    ;;
+	*)
+	    error "Invalid drive interface: $FORCE_DRIVE_IF"
+        ;;
+    esac
+
     QEMU_FIRE="$QEMUBIN $VM_DRIVE $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT"
     echo $QEMU_FIRE
     LD_PRELOAD="$GL_LD_PRELOAD" $QEMU_FIRE
-- 
2.8.3


