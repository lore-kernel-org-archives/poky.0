Return-Path: <jori@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 6E153E006C6
	for <poky@yoctoproject.org>; Wed, 29 Jan 2014 01:47:16 -0800 (PST)
Received: from sestows930 (172.16.140.35) by smtp.enea.com (172.21.1.208) with
	Microsoft SMTP Server id 14.3.158.1; Wed, 29 Jan 2014 10:47:11 +0100
Received: from jori by sestows930 with local (Exim 4.80)	(envelope-from
	<jori@sestows930>)	id 1W8Rjj-00044W-Tx; Wed, 29 Jan 2014 10:47:11 +0100
From: Jonas Eriksson <jonas.eriksson@enea.com>
To: <poky@yoctoproject.org>
Date: Wed, 29 Jan 2014 10:46:57 +0100
Message-ID: <1390988817-15610-1-git-send-email-jonas.eriksson@enea.com>
X-Mailer: git-send-email 1.9.rc1
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: jonas.eriksson@enea.com does not
	designate permitted sender hosts)
Subject: [PATCH] Docs: Add x11 to supported DISTRO_FEATURES
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
X-List-Received-Date: Wed, 29 Jan 2014 09:47:24 -0000
Content-Type: text/plain

Before this change, x11 was only documented as an IMAGE_FEATURE.
However, it is heavily relied upon as a DISTRO_FEATURE by packages that
have an optional X dependency determined during build time. Examples
include libsdl, dbus, alsa and pulseaudio.
---
 documentation/ref-manual/ref-features.xml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/documentation/ref-manual/ref-features.xml b/documentation/ref-manual/ref-features.xml
index f5641c6..d788530 100644
--- a/documentation/ref-manual/ref-features.xml
+++ b/documentation/ref-manual/ref-features.xml
@@ -177,6 +177,9 @@
                     supports it.</para></listitem>
                 <listitem><para><emphasis>wifi:</emphasis> Include WiFi support
                     (integrated only).</para></listitem>
+                <listitem><para><emphasis>x11:</emphasis> Include the X server
+                    and libraries.
+                    </para></listitem>
             </itemizedlist>
         </para>
     </section>
-- 
1.9.rc1


