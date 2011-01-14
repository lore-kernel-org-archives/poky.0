Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 215A94C8086E
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 22:55:42 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0E4tfLX000004
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 20:55:41 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 13 Jan 2011 20:55:41 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 13 Jan 2011 20:55:41 -0800
Message-ID: <4D2FD74C.2080603@windriver.com>
Date: Thu, 13 Jan 2011 22:55:40 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky <poky@yoctoproject.org>
References: <4D2FD707.4080509@windriver.com>
In-Reply-To: <4D2FD707.4080509@windriver.com>
X-OriginalArrivalTime: 14 Jan 2011 04:55:41.0360 (UTC)
	FILETIME=[4B403300:01CBB3A7]
Subject: [PATCH 1/1] pseudo: Update to the latest upstream version
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
X-List-Received-Date: Fri, 14 Jan 2011 04:55:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Update pseudo to the latest version to resolve a number of optimization defects.

The problems were present on both 64-bit and 32-bit systems, but generally only
caused issues on 32-bit hosts.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 .../895fa7e359e8026a608fba052c2994e42901e45f.patch |  235 --------------------
 meta/recipes-devtools/pseudo/pseudo_git.bb         |    2 +-
 3 files changed, 2 insertions(+), 237 deletions(-)
 delete mode 100644
meta/recipes-devtools/pseudo/pseudo/895fa7e359e8026a608fba052c2994e42901e45f.patch

diff --git a/meta/conf/distro/include/poky-default-revisions.inc
b/meta/conf/distro/include/poky-default-revisions.inc
index 6b98091..413284c 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -150,7 +150,7 @@ PRELINKSRCREV ??= "909470ee441237563d6236c505cb2d02ddc48704"
 SRCREV_pn-prelink ??= "${PRELINKSRCREV}"
 SRCREV_pn-prelink-native ??= "${PRELINKSRCREV}"
 SRCREV_pn-psplash ??= "424"
-PSEUDOSRCREV ??= "c9792c7acdb1cac90549ff08db12a8bf0c53cdcf"
+PSEUDOSRCREV ??= "a1b25a64d8dd012bc8adcac1e1e09b6291c877ad"
 SRCREV_pn-pseudo ??= "${PSEUDOSRCREV}"
 SRCREV_pn-pseudo-native ??= "${PSEUDOSRCREV}"
 SRCREV_pn-pseudo-nativesdk ??= "${PSEUDOSRCREV}"
diff --git
a/meta/recipes-devtools/pseudo/pseudo/895fa7e359e8026a608fba052c2994e42901e45f.patch
b/meta/recipes-devtools/pseudo/pseudo/895fa7e359e8026a608fba052c2994e42901e45f.patch
deleted file mode 100644
index d8c2295..0000000
---
a/meta/recipes-devtools/pseudo/pseudo/895fa7e359e8026a608fba052c2994e42901e45f.patch
+++ /dev/null
@@ -1,235 +0,0 @@
-From 895fa7e359e8026a608fba052c2994e42901e45f Mon Sep 17 00:00:00 2001
-From: Mark Hatle <mark.hatle@windriver.com>
-Date: Fri, 17 Dec 2010 01:23:47 +0000
-Subject: Revert "Add a cache of the last object found in pseudo_op"
-
-This reverts commit 49d4d35918d457b0e9206679ecad3b9c84f11e66.
-
-Conflicts:
-
-	ChangeLog.txt
----
-diff --git a/ChangeLog.txt b/ChangeLog.txt
-index 1db8c7d..200b32e 100644
---- a/ChangeLog.txt
-+++ b/ChangeLog.txt
-@@ -9,7 +9,6 @@
- 	* (mhatle) as a result of profiling, optimize inode search
- 	* (mhatle) rearrange the pseudo_op file data operations to reduce
- 		   the number of selects.
--	* (mhatle) add the ability to cache the last select result
- 	* (mhatle) change the indexing in pseudo_db.c
-
- 2010-12-14:
-diff --git a/pseudo.c b/pseudo.c
-index 3979fd8..6b965be 100644
---- a/pseudo.c
-+++ b/pseudo.c
-@@ -425,9 +425,6 @@ pseudo_op(pseudo_msg_t *msg, const char *program, const
char *tag) {
- 	int found_path = 0, found_ino = 0;
- 	int prefer_ino = 0;
-
--	static pseudo_msg_t cache_msg = { .op = 0 };
--	static char * cache_path = NULL;
--
- 	if (!msg)
- 		return 1;
- 	
-@@ -471,59 +468,7 @@ pseudo_op(pseudo_msg_t *msg, const char *program, const
char *tag) {
-
- 	/* Lookup the full path, with inode and dev if available */
- 	if (msg->pathlen && msg->dev && msg->ino) {
--		if (cache_msg.pathlen == msg->pathlen &&
--		    cache_msg.dev == msg->dev &&
--		    cache_msg.ino == msg->ino &&
--		    !strcmp(cache_path, msg->path)) {
--			/* Found it in the cache! */
--#ifdef NPROFILE
--			pseudo_diag("cache hit -- by_file_exact\n");
--#endif
--			/* Change the cache to match the msg */
--			cache_msg.type = msg->type;
--			cache_msg.op = msg->op;
--			cache_msg.result = msg->result;
--			cache_msg.access = msg->access;
--			cache_msg.fd = msg->fd;
--#ifdef NVALIDATE
--			if (!pdb_find_file_exact(msg)) {
--				if (cache_msg.pathlen != msg->pathlen ||
--				    cache_msg.dev != msg->dev ||
--				    cache_msg.ino != msg->ino ||
--				    cache_msg.uid != msg->uid ||
--				    cache_msg.gid != msg->gid ||
--				    cache_msg.mode != msg->mode ||
--				    cache_msg.rdev != msg->rdev ||
--				    cache_msg.nlink != msg->nlink ||
--				    cache_msg.deleting != msg->deleting) {
--				pseudo_diag("Cache mismatch [%s]: Database differs from cache\n"
--						"     cache vs result:\n"
--						"     dev (%llu,%llu) ino (%llu,%llu)\n"
--						"     uid (%d,%d) gid (%d,%d) mode (0%o,0%o)\n"
--						"     rdev (%llu,%llu) nlink (%d,%d) deleting (%d,%d)\n",
--						msg->pathlen ? msg->path : "no path",
--						(unsigned long long) cache_msg.dev, (unsigned long long) msg->dev,
--						(unsigned long long) cache_msg.ino, (unsigned long long) msg->ino,
--						(unsigned long long) cache_msg.uid, (unsigned int) msg->uid,
--						(unsigned long long) cache_msg.gid, (unsigned int) msg->gid,
--						cache_msg.mode, msg->mode,
--						(unsigned long long) cache_msg.rdev, (unsigned int) msg->rdev,
--						cache_msg.nlink, msg->nlink,
--						cache_msg.deleting, msg->deleting);
--				}
--			} else {
--				pseudo_diag("Cache mismatch [%s]: Not found in DB\n",
--						msg->pathlen ? msg->path : "no path");
--			}
--#endif
--
--			by_path = cache_msg;
--			by_ino = cache_msg;
--			/* no need to restore msg */
--			found_path = 1;
--			found_ino = 1;
--			path_by_ino = msg->path;
--		} else if (!pdb_find_file_exact(msg)) {
-+		if (!pdb_find_file_exact(msg)) {
- 			/* restore header contents */
- 			by_path = *msg;
- 			by_ino = *msg;
-@@ -539,51 +484,7 @@ pseudo_op(pseudo_msg_t *msg, const char *program, const
char *tag) {
- 		if (msg->pathlen) {
- 			/* for now, don't canonicalize paths anymore */
- 			/* used to do it here, but now doing it in client */
--			if (cache_msg.pathlen == msg->pathlen &&
--			    !strcmp(cache_path, msg->path)) {
--#ifdef NPROFILE
--				pseudo_diag("cache hit -- by_path\n");
--#endif
--				/* Change the cache to match the msg */
--				cache_msg.type = msg->type;
--				cache_msg.op = msg->op;
--				cache_msg.result = msg->result;
--				cache_msg.access = msg->access;
--				cache_msg.fd = msg->fd;
--#ifdef NVALIDATE
--				if (!pdb_find_file_exact(msg)) {
--					if (cache_msg.pathlen != msg->pathlen ||
--					    cache_msg.dev != msg->dev ||
--					    cache_msg.ino != msg->ino ||
--					    cache_msg.uid != msg->uid ||
--					    cache_msg.gid != msg->gid ||
--					    cache_msg.mode != msg->mode ||
--					    cache_msg.rdev != msg->rdev ||
--					    cache_msg.nlink != msg->nlink ||
--					    cache_msg.deleting != msg->deleting) {
--					pseudo_diag("Cache mismatch [%s]: Database differs from cache\n"
--						"     cache vs result:\n"
--						"     dev (%llu,%llu) ino (%llu,%llu)\n"
--						"     uid (%d,%d) gid (%d,%d) mode (0%o,0%o)\n"
--						"     rdev (%llu,%llu) nlink (%d,%d) deleting (%d,%d)\n",
--						msg->pathlen ? msg->path : "no path",
--						(unsigned long long) cache_msg.dev, (unsigned long long) msg->dev,
--						(unsigned long long) cache_msg.ino, (unsigned long long) msg->ino,
--						(unsigned long long) cache_msg.uid, (unsigned int) msg->uid,
--						(unsigned long long) cache_msg.gid, (unsigned int) msg->gid,
--						cache_msg.mode, msg->mode,
--						(unsigned long long) cache_msg.rdev, (unsigned int) msg->rdev,
--						cache_msg.nlink, msg->nlink,
--						cache_msg.deleting, msg->deleting);
--					}
--				} else {
--					pseudo_diag("Cache mismatch [%s]: Not found in DB\n",
--							msg->pathlen ? msg->path : "no path");
--				}
--#endif
--				by_path = cache_msg;
--				found_path = 1;
--			} else if (!pdb_find_file_path(msg)) {
-+			if (!pdb_find_file_path(msg)) {
- 				by_path = *msg;
- 				found_path = 1;
- 			} else {
-@@ -594,51 +495,7 @@ pseudo_op(pseudo_msg_t *msg, const char *program, const
char *tag) {
- 		}
- 		/* search on original inode -- in case of mismatch */
- 		if (msg->dev && msg->ino) {
--			if (cache_msg.dev == msg->dev &&
--			    cache_msg.ino == msg->ino) {
--#ifdef NPROFILE
--				pseudo_diag("cache hit -- by_ino\n");
--#endif
--				/* Change the cache to match the msg */
--				cache_msg.type = msg->type;
--				cache_msg.op = msg->op;
--				cache_msg.result = msg->result;
--				cache_msg.access = msg->access;
--				cache_msg.fd = msg->fd;
--#ifdef NVALIDATE
--				if (!pdb_find_file_exact(msg)) {
--					if (cache_msg.pathlen != msg->pathlen ||
--					    cache_msg.dev != msg->dev ||
--					    cache_msg.ino != msg->ino ||
--					    cache_msg.uid != msg->uid ||
--					    cache_msg.gid != msg->gid ||
--					    cache_msg.mode != msg->mode ||
--					    cache_msg.rdev != msg->rdev ||
--					    cache_msg.nlink != msg->nlink ||
--					    cache_msg.deleting != msg->deleting) {
--					pseudo_diag("Cache mismatch [%s]: Database differs from cache\n"
--						"     cache vs result:\n"
--						"     dev (%llu,%llu) ino (%llu,%llu)\n"
--						"     uid (%d,%d) gid (%d,%d) mode (0%o,0%o)\n"
--						"     rdev (%llu,%llu) nlink (%d,%d) deleting (%d,%d)\n",
--						msg->pathlen ? msg->path : "no path",
--						(unsigned long long) cache_msg.dev, (unsigned long long) msg->dev,
--						(unsigned long long) cache_msg.ino, (unsigned long long) msg->ino,
--						(unsigned long long) cache_msg.uid, (unsigned int) msg->uid,
--						(unsigned long long) cache_msg.gid, (unsigned int) msg->gid,
--						cache_msg.mode, msg->mode,
--						(unsigned long long) cache_msg.rdev, (unsigned int) msg->rdev,
--						cache_msg.nlink, msg->nlink,
--						cache_msg.deleting, msg->deleting);
--					}
--				} else {
--					pseudo_diag("Cache mismatch [%s]: Not found in DB\n",
--							msg->pathlen ? msg->path : "no path");
--				}
--#endif
--				found_ino = 1;
--				path_by_ino = cache_path;
--			} else 	if (!pdb_find_file_dev(&by_ino)) {
-+			if (!pdb_find_file_dev(&by_ino)) {
- 				found_ino = 1;
- 				path_by_ino = pdb_get_file_path(&by_ino);
- 			}
-@@ -1016,28 +873,6 @@ pseudo_op(pseudo_msg_t *msg, const char *program, const
char *tag) {
- 		break;
- 	}
-
--	/* Cache previous values... */
--	if (msg->op != OP_MAY_UNLINK &&
--	    msg->op != OP_DID_UNLINK &&
--	    msg->op != OP_CANCEL_UNLINK &&
--	    msg->op != OP_UNLINK) {
--
--		cache_msg = *msg;
--
--		free(cache_path);
--
--		if (path_by_ino)
--			cache_path = strdup(path_by_ino);
--		else
--			cache_path = strdup(msg->path);
--	} else {
--		cache_msg.pathlen = 0;
--		cache_msg.dev = 0;
--		cache_msg.ino = 0;
--		free(cache_path);
--		cache_path = NULL;
--	}
--
- 	/* in the case of an exact match, we just used the pointer
- 	 * rather than allocating space
- 	 */
---
-cgit v0.8.3.3-89-gbf82
diff --git a/meta/recipes-devtools/pseudo/pseudo_git.bb
b/meta/recipes-devtools/pseudo/pseudo_git.bb
index f9b10f0..df73696 100644
--- a/meta/recipes-devtools/pseudo/pseudo_git.bb
+++ b/meta/recipes-devtools/pseudo/pseudo_git.bb
@@ -10,7 +10,7 @@ PR = "r16"

 SRC_URI = "git://github.com/wrpseudo/pseudo.git;protocol=git \
            file://static_sqlite.patch \
-           file://895fa7e359e8026a608fba052c2994e42901e45f.patch"
+	  "

 FILES_${PN} = "${libdir}/libpseudo.so ${bindir}/* ${localstatedir}/pseudo"
 PROVIDES += "virtual/fakeroot"
-- 
1.7.3.4

