Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D781BE00B43; Thu,  1 Oct 2015 11:01:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C1ADE00747
	for <poky@yoctoproject.org>; Thu,  1 Oct 2015 11:01:08 -0700 (PDT)
Received: by wiclk2 with SMTP id lk2so663818wic.1
	for <poky@yoctoproject.org>; Thu, 01 Oct 2015 11:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=Y1q6IiYnw4AzpBczRZpIh6gIlpxvQ+xrWTxh4RNE9Ps=;
	b=g3jX+wwYq6jNoQ0yHI0A5/JVmAbJl77FMCE8K9cWDaHQm8Gwial0+IdJh5SKtdZhGU
	LN8sLAncUrQVnmzbGcpFuDxk6LO2eoVNzIR/FZoPf2db2JdO7/yt+vxWJDaf3EeYFysO
	S2Yyk2OIFF7CWdcnnbwtbdmSO8XS68qWfDjFcuTLZvRc3lLwrb/ws1Zhf1oPR0bh5TjD
	Pjb9qrjaNXRaENkXhez+YBacoXdnSEsAmxSpy6qEwklCZ/F77KHy1DOoElarpVI6mo+Y
	mZ/OpiCgm5NqY4u3ectopFyEIo/7sPEd2TpN5YZlVKsN6H/3qN/F3jTRrGBWZDuTjpwP
	/50A==
X-Received: by 10.180.106.66 with SMTP id gs2mr158746wib.14.1443722468203;
	Thu, 01 Oct 2015 11:01:08 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id
	fs9sm4322947wic.24.2015.10.01.11.01.07 for <poky@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:01:07 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <BAB71D4B-3CEA-44E3-83ED-A10DF8CEAF52@gmail.com>
Date: Thu, 1 Oct 2015 20:01:06 +0200
To: poky@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 1/9] Fix "configure: error: gbm requires --enable-dri"
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
X-List-Received-Date: Thu, 01 Oct 2015 18:01:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 meta/recipes-graphics/mesa/mesa.inc | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/meta/recipes-graphics/mesa/mesa.inc =
b/meta/recipes-graphics/mesa/mesa.inc
index af7a2c4..13a8b9d 100644
--- a/meta/recipes-graphics/mesa/mesa.inc
+++ b/meta/recipes-graphics/mesa/mesa.inc
@@ -37,11 +37,9 @@ PACKAGECONFIG[wayland] =3D ",,wayland"
 DRIDRIVERS =3D "swrast"
 DRIDRIVERS_append_x86 =3D ",radeon,r200,nouveau,i965,i915"
 DRIDRIVERS_append_x86-64 =3D ",radeon,r200,nouveau,i965,i915"
-PACKAGECONFIG[dri] =3D "--enable-dri --with-dri-drivers=3D${DRIDRIVERS}, =
--disable-dri, dri2proto libdrm"
+PACKAGECONFIG[dri] =3D "--enable-dri --with-dri-drivers=3D${DRIDRIVERS} =
--enable-gbm, --disable-dri, dri2proto libdrm"
 PACKAGECONFIG[dri3] =3D "--enable-dri3, --disable-dri3, dri3proto =
presentproto libxshmfence"
=20
-EXTRA_OECONF +=3D "--enable-gbm"
-
 PACKAGECONFIG[gles] =3D "--enable-gles1 --enable-gles2, --disable-gles1 =
--disable-gles2"
=20
 EGL_PLATFORMS  =3D "drm"
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


