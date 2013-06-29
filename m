Return-Path: <wills.wang.open@gmail.com>
Received: from mail-ob0-f193.google.com (mail-ob0-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33707E01492
	for <poky@yoctoproject.org>; Sat, 29 Jun 2013 04:50:40 -0700 (PDT)
Received: by mail-ob0-f193.google.com with SMTP id xk17so1137030obc.8
	for <poky@yoctoproject.org>; Sat, 29 Jun 2013 04:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=TQZ6JZTMUX7EPRa5GOfQYBca7vCjYkbQ41AmFVSfNdM=;
	b=v5xHXIYkKONwOzd5OmJcK+OqctOMU32VQIs+nMSzbLHoPsiQKrqpzEEll/jb4tsH/9
	dYgrWqP7aTmr+eVSJ0hmCaO5CO6xBy/WGNNyAqapxRM5pF7oJmWSEPeeatKKYsLGMUpc
	mWMdrB9lwPGmcd4jt5XseJ2QZ0RAzH2hn71oZGf7SyU0BcNwQtV/3GdhEbaegf8nrqjk
	N4bUHBrn5AFd/AFhwk9f/nlFPkfkxyRMc1Lm5d364gHTofjTlOXadpkh59R8HOSpuRSR
	zJqV42EUueMzoPWywB7u3ZdNAPzX87foWNkSWPKcRbawEK4ytMiKkJHRhz8rI/Izbl5g
	Sw4Q==
MIME-Version: 1.0
X-Received: by 10.60.155.169 with SMTP id vx9mr6732155oeb.93.1372506639726;
	Sat, 29 Jun 2013 04:50:39 -0700 (PDT)
Received: by 10.60.144.39 with HTTP; Sat, 29 Jun 2013 04:50:39 -0700 (PDT)
Date: Sat, 29 Jun 2013 19:50:39 +0800
Message-ID: <CAC6FaqyMxgZP4ODaZiACA8qPBCNRZUAg=UV_WufTqe1hZkdUdw@mail.gmail.com>
From: Wills Wang <wills.wang.open@gmail.com>
To: poky@yoctoproject.org
Subject: [PATCH] qt4e: override variables OE_QMAKE_QT_CONFIG
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
X-List-Received-Date: Sat, 29 Jun 2013 11:50:41 -0000
Content-Type: text/plain; charset=ISO-8859-1

override variables OE_QMAKE_QT_CONFIG to compile Qt/Embedded apps

diff --git a/meta/classes/qt4e.bbclass b/meta/classes/qt4e.bbclass
index de2a68d..13b1050 100755
--- a/meta/classes/qt4e.bbclass
+++ b/meta/classes/qt4e.bbclass
@@ -9,6 +9,7 @@ QT_LIBINFIX = "E"
 # override variables set by qmake-base to compile Qt/Embedded apps
 #
 export QMAKESPEC =
"${STAGING_DATADIR}/${QT_DIR_NAME}/mkspecs/${TARGET_OS}-oe-g++"
+export OE_QMAKE_QT_CONFIG =
"${STAGING_DATADIR}/${QT_DIR_NAME}/mkspecs/qconfig.pri"
 export OE_QMAKE_INCDIR_QT = "${STAGING_INCDIR}/${QT_DIR_NAME}"
 export OE_QMAKE_LIBDIR_QT = "${STAGING_LIBDIR}"
 export OE_QMAKE_LIBS_QT = "qt"

