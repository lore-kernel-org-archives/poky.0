Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0A8984C80FDC
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:41 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 May 2011 23:29:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; d="scan'208";a="745544762"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by orsmga001.jf.intel.com with ESMTP; 10 May 2011 23:29:41 -0700
Message-Id: <46e4412c8a0254c859db0c7bee18b613112540cc.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 13:18:49 +0800
Date: Wed, 11 May 2011 14:27:05 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 16/24] xtrans: update its patch's Upstream-Status
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 May 2011 06:29:42 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

remove abstract_socket_fix.patch as it's not used at all for long.

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../xorg-lib/xtrans/abstract_socket_fix.patch      |   58 --------------------
 1 files changed, 0 insertions(+), 58 deletions(-)
 delete mode 100644 meta/recipes-graphics/xorg-lib/xtrans/abstract_socket_fix.patch

diff --git a/meta/recipes-graphics/xorg-lib/xtrans/abstract_socket_fix.patch b/meta/recipes-graphics/xorg-lib/xtrans/abstract_socket_fix.patch
deleted file mode 100644
index 197da07..0000000
--- a/meta/recipes-graphics/xorg-lib/xtrans/abstract_socket_fix.patch
+++ /dev/null
@@ -1,58 +0,0 @@
-From 556a351de83fc6f401b02213dae95731553c216d Mon Sep 17 00:00:00 2001
-From: Loïc Minier <lool@dooz.org>
-Date: Mon, 24  Mar  2008  19:38:27  +0000
-Subject: Bug #10489: Don't retry unix socket connect()s on ENOENT.
-
-If the socket isn't there, it's not gonna magically appear.  Either it's
-a server socket and you should have just waited for the SIGUSR1 from the
-server, or it's a stale reference to an ICE socket.
-
-However, do retry once, so fallback from abstract to filesystem namespace
-works.
-
-Originally Debian bug #385976.
----
-diff --git a/Xtranssock.c b/Xtranssock.c
-index 8a7d2ec..da4afe9 100644
---- a/Xtranssock.c
-+++ b/Xtranssock.c
-@@ -2146,8 +2146,13 @@ TRANS(SocketUNIXConnect) (XtransConnInfo ciptr, char *host, char *port)
- 	    errno = olderrno;
- 	    
- 	    /*
--	     * If the error was ENOENT, the server may be starting up
--	     * and we should try again.
-+	     * If the error was ENOENT, the server may be starting up; we used
-+	     * to suggest to try again in this case with
-+	     * TRANS_TRY_CONNECT_AGAIN, but this introduced problems for
-+	     * processes still referencing stale sockets in their environment.
-+	     * Hence, we now return a hard error, TRANS_CONNECT_FAILED, and it
-+	     * is suggested that higher level stacks handle retries on their
-+	     * level when they face a slow starting server.
- 	     *
- 	     * If the error was EWOULDBLOCK or EINPROGRESS then the socket
- 	     * was non-blocking and we should poll using select
-@@ -2161,14 +2166,14 @@ TRANS(SocketUNIXConnect) (XtransConnInfo ciptr, char *host, char *port)
- 	    else if (olderrno == EINTR)
- 		return TRANS_TRY_CONNECT_AGAIN;
- 	    else if (olderrno == ENOENT) {
--		/*
--		* If opening as abstract socket failed, try again "normally"
--		*/
--		if (abstract)
-+		/* If opening as abstract socket failed, try again normally */
-+		if (abstract) {
- 		    ciptr->transptr->flags &= ~(TRANS_ABSTRACT);
--		return TRANS_TRY_CONNECT_AGAIN;
--	    }
--	    else {
-+		    return TRANS_TRY_CONNECT_AGAIN;
-+		} else {
-+		    return TRANS_CONNECT_FAILED;
-+		}
-+	    } else {
- 		PRMSG (2,"SocketUNIXConnect: Can't connect: errno = %d\n",
- 		       EGET(),0, 0);
- 
---
-cgit v0.7.2-37-g538c
-- 
1.7.2


