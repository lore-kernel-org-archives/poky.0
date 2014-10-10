Return-Path: <kevin.thierry@open.eurogiciel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C4F8E0077F; Fri, 10 Oct 2014 01:34:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.171 listed in list.dnswl.org]
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21936E00744
	for <poky@yoctoproject.org.>; Fri, 10 Oct 2014 01:34:00 -0700 (PDT)
Received: by mail-wi0-f171.google.com with SMTP id em10so1291885wid.4
	for <poky@yoctoproject.org.>; Fri, 10 Oct 2014 01:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=open.eurogiciel.org; s=google;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type; bh=fRuM7bshd0bvf5ByzNdwahEZmWOaAPspPQIbQeGMWXc=;
	b=SSkemDctkgKd5MKaHSsCqgC2wLRouc4WCwjN1ip5YaIDx95CdmSObs9Y5AzHTDerOe
	srLxNt2MsqjpntfNtPQi63Fjd7jCHjg1lcb9a1QiYQfzpSm07TbZyz4qQnkTXb9ESKS2
	Rp9sOQcksxuox9iGsvH43J9rfLvDNSy8PQbOU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type;
	bh=fRuM7bshd0bvf5ByzNdwahEZmWOaAPspPQIbQeGMWXc=;
	b=ez+rmvitaETaVw3tRn/Bw5LKRF8BdEx4pZ++Iv05Mjmcmn4K1U64Z3/OW/UOOhbbK5
	iJGPoPhI0et8HXmQgpwcPtOtEPk8wm32ghng+XpWJvm5Laia8pZHpbKF7UBSzkzBduD0
	HpxdTBSr7the+pYW1qEPecS+/MwzfIz5JxWiCpsNztWtv+DL6HOUzoeLUeo7DKTWJuE3
	SirDD4zb57AOucAbueALc0anMUAAG8GOyQOZL8DIyflfPJS+M9wzFLqJVvyWn7QeTDO9
	036o3ladrZeEfVPpl2cnV5b6pHVw7nsBz0gllShWe4ohxi7emdWpLrQs6L1VUG983Vr1
	1n+g==
X-Gm-Message-State: ALoCoQkBTrYLtUHc1SE3KRZyDCSrj5rHRloEaKQ05u5Rsg7WWXg+NqFfvxZ89j3Wa6YF4CfitjbK
X-Received: by 10.194.243.230 with SMTP id xb6mr1342770wjc.100.1412930039002; 
	Fri, 10 Oct 2014 01:33:59 -0700 (PDT)
Received: from [10.19.3.25] ([46.18.96.46])
	by mx.google.com with ESMTPSA id q5sm1816584wiy.16.2014.10.10.01.33.58
	for <poky@yoctoproject.org.>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 10 Oct 2014 01:33:58 -0700 (PDT)
Message-ID: <543799F5.5010605@open.eurogiciel.org>
Date: Fri, 10 Oct 2014 10:33:57 +0200
From: =?ISO-8859-1?Q?K=E9vin_THIERRY?=
 <kevin.thierry@open.eurogiciel.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: Patch: package_rpm.bbclass: set algorithm and level of compression
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
X-List-Received-Date: Fri, 10 Oct 2014 08:34:05 -0000
X-Groupsio-MsgNum: 9778
Content-Type: multipart/mixed; boundary="------------060301070001080002020409"

--------------060301070001080002020409
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I made a small patch to globally modify algorithm and level of 
compression for rpm packaging. Being able to modify those parameters 
allows to either reduce the rpm packages creation time or reduce the rpm 
packages size 
(0001-package_rpm.bbclass-set-algorithm-and-level-of-compr.patch).

I also made a patchfor yocto-docs to document the two new variables 
(0001-ref-manual-Add-RPM_BIN_PAYLOAD-RPM_SRC_PAYLOAD-varia.patch).

If something is wrong/missing, I'll be happy to make the necessary changes.

Best regards,
Kevin THIERRY


--------------060301070001080002020409
Content-Type: text/x-patch;
 name="0001-package_rpm.bbclass-set-algorithm-and-level-of-compr.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment;
 filename*0="0001-package_rpm.bbclass-set-algorithm-and-level-of-compr.pa";
 filename*1="tch"

From 8e32ab1a381e3a31c81369c226cce40d37b119c6 Mon Sep 17 00:00:00 2001
From: =?UTF-8?q?K=C3=A9vin=20THIERRY?= <kevin.thierry@open.eurogiciel.org>
Date: Thu, 9 Oct 2014 17:17:20 +0200
Subject: [PATCH] package_rpm.bbclass: set algorithm and level of compression
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add the possibility to chose the algorithm and level of compression to
be used by rpmbuid to create the RPM packages. Such an option is useful
to either reduce RPM packages creation time or reduce RPM packages
size.

Usage:
  RPM_BIN_PAYLOAD = "w9.gzdio"

Signed-off-by: Kévin THIERRY <kevin.thierry@open.eurogiciel.org>
---
 meta/classes/package_rpm.bbclass | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_rpm.bbclass
index 92ddf7a..18fd979 100644
--- a/meta/classes/package_rpm.bbclass
+++ b/meta/classes/package_rpm.bbclass
@@ -676,6 +676,8 @@ python do_package_rpm () {
     targetvendor = d.getVar('HOST_VENDOR', True)
     package_arch = (d.getVar('PACKAGE_ARCH', True) or "").replace("-", "_")
     sdkpkgsuffix = (d.getVar('SDKPKGSUFFIX', True) or "nativesdk").replace("-", "_")
+    src_payload = d.getVar('RPM_SRC_PAYLOAD', True)
+    bin_payload = d.getVar('RPM_BIN_PAYLOAD', True)
     if package_arch not in "all any noarch".split() and not package_arch.endswith(sdkpkgsuffix):
         ml_prefix = (d.getVar('MLPREFIX', True) or "").replace("-", "_")
         d.setVar('PACKAGE_ARCH_EXTEND', ml_prefix + package_arch)
@@ -703,6 +705,10 @@ python do_package_rpm () {
     cmd = cmd + " --define 'debug_package %{nil}'"
     cmd = cmd + " --define '_rpmfc_magic_path " + magicfile + "'"
     cmd = cmd + " --define '_tmppath " + workdir + "'"
+    if src_payload:
+        cmd = cmd + " --define '_source_payload " + src_payload + "'"
+    if bin_payload:
+        cmd = cmd + " --define '_binary_payload " + bin_payload + "'"
     if d.getVarFlag('ARCHIVER_MODE', 'srpm', True) == '1' and bb.data.inherits_class('archiver', d):
         cmd = cmd + " --define '_sourcedir " + d.getVar('ARCHIVER_OUTDIR', True) + "'"
         cmdsrpm = cmd + " --define '_srcrpmdir " + d.getVar('ARCHIVER_OUTDIR', True) + "'"
-- 
1.8.1.4


--------------060301070001080002020409
Content-Type: text/x-patch;
 name="0001-ref-manual-Add-RPM_BIN_PAYLOAD-RPM_SRC_PAYLOAD-varia.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment;
 filename*0="0001-ref-manual-Add-RPM_BIN_PAYLOAD-RPM_SRC_PAYLOAD-varia.pa";
 filename*1="tch"

From c28a483a3ca30ed0d1ab0b702908137806318558 Mon Sep 17 00:00:00 2001
From: =?UTF-8?q?K=C3=A9vin=20THIERRY?= <kevin.thierry@open.eurogiciel.org>
Date: Thu, 9 Oct 2014 17:09:09 +0200
Subject: [PATCH] ref-manual: Add RPM_BIN_PAYLOAD, RPM_SRC_PAYLOAD variables
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Kévin THIERRY <kevin.thierry@open.eurogiciel.org>
---
 documentation/ref-manual/ref-variables.xml | 45 ++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 22b8f2e..1a8051f 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -7100,6 +7100,51 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             </glossdef>
         </glossentry>
 
+    <glossentry id='var-RPM_BIN_PAYLOAD'><glossterm>RPM_BIN_PAYLOAD</glossterm>
+        <glossdef>
+            <para>
+                Globally set the algorithm and level of compression to use when
+                creating binary RPM packages. This option is particularly useful
+                to either reduce RPM packages creation time or reduce RPM
+                packages size.
+            </para>
+            <para>
+                For gzip:
+                <literallayout class='monospaced'>
+     RPM_BIN_PAYLOAD = "w9.gzdio"
+                </literallayout>
+                For bzip2:
+                <literallayout class='monospaced'>
+     RPM_BIN_PAYLOAD = "w9.bzdio"
+                </literallayout>
+                For lzma:
+                <literallayout class='monospaced'>
+     RPM_BIN_PAYLOAD = "w9.lzdio"
+                </literallayout>
+                For xz:
+                <literallayout class='monospaced'>
+     RPM_BIN_PAYLOAD = "w7.xzdio"
+                </literallayout>
+            </para>
+            <para>
+                The compression level is set by replacing the '?' in "w?.gzdio"
+                with the desired value. A higher level means a better compression
+                (but more processing time).
+            </para>
+        </glossdef>
+    </glossentry>
+
+    <glossentry id='var-RPM_SRC_PAYLOAD'><glossterm>RPM_SRC_PAYLOAD</glossterm>
+        <glossdef>
+            <para>
+                Globally set the algorithm and level of compression to use when
+                creating source RPM packages. For more information about RPM
+                algorithm and level of compression, please see
+                <filename><link linkend='var-RPM_BIN_PAYLOAD'>RPM_BIN_PAYLOAD</link></filename>.
+            </para>
+        </glossdef>
+    </glossentry>
+
         <glossentry id='var-RPROVIDES'><glossterm>RPROVIDES</glossterm>
             <glossdef>
                 <para>
-- 
1.8.1.4


--------------060301070001080002020409--
