Return-Path: <nick@leverton.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CF8DE00C23; Thu, 17 Mar 2016 08:22:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 400 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Mar 2016 08:22:40 PDT
Received: from leverton.org (leverton.org [80.229.14.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBBBDE00929
	for <poky@yoctoproject.org>; Thu, 17 Mar 2016 08:22:40 -0700 (PDT)
Received: (qmail 21490 invoked from network); 17 Mar 2016 15:15:59 +0000
Received: from unknown (HELO localhost) (127.0.0.1)
	by localhost with SMTP; 17 Mar 2016 15:15:59 +0000
X-Virus-Scanned: Debian amavisd-new at hub.home
Received: from hub.home ([127.0.0.1])
	by localhost (hub.home [127.0.0.1]) (amavisd-new, port 10024)
	with SMTP id CPDE5SjalGI9; Thu, 17 Mar 2016 15:15:56 +0000 (GMT)
Received: (nullmailer pid 21482 invoked by uid 130);
	Thu, 17 Mar 2016 15:15:56 -0000
X-OS-Fingerprint: (up 17) (distance -1, link IPIP tunnel)
Received: from inspiredesigns.force9.co.uk (HELO nickl.none) (80.229.47.107)
	(smtp-auth username nj@leverton.org, mechanism cram-md5)
	by leverton.org (qpsmtpd/0.84) with (AES128-SHA256 encrypted) ESMTPSA;
	Thu, 17 Mar 2016 15:15:56 +0000
From: Nick Leverton <nick@leverton.org>
To: poky@yoctoproject.org
Date: Thu, 17 Mar 2016 15:15:22 +0000
Message-Id: <1458227722-28660-1-git-send-email-nick@leverton.org>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH 1/1] lighttpd: fix /usr/lib/mod_cgi.so: undefined symbol: chunkqueue_written
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
X-List-Received-Date: Thu, 17 Mar 2016 15:22:44 -0000

lighttpd fails to load when mod_cgi is enabled at run time, with the
message "dlopen() failed for: /usr/lib/mod_cgi.so /usr/lib/mod_cgi.so:
undefined symbol: chunkqueue_written".

This is caused by a patch intended to prevent memory exhaustion by
naively streaming CGIs, aimed at upstream issue
http://redmine.lighttpd.net/issues/1264 . The patch uses internal API
functions from older versions of lighttpd which don't exist in this
version.  Remove the patch, pending a better fix.

[ YOCTO #9289 ]

Signed-off-by: Nick Leverton <nick@leverton.org>
---
 .../0001-mod_cgi-buffers-data-without-bound.patch  | 387 ---------------------
 meta/recipes-extended/lighttpd/lighttpd_1.4.39.bb  |   1 -
 2 files changed, 388 deletions(-)
 delete mode 100644 meta/recipes-extended/lighttpd/lighttpd/0001-mod_cgi-buffers-data-without-bound.patch

diff --git a/meta/recipes-extended/lighttpd/lighttpd/0001-mod_cgi-buffers-data-without-bound.patch b/meta/recipes-extended/lighttpd/lighttpd/0001-mod_cgi-buffers-data-without-bound.patch
deleted file mode 100644
index a9df174..0000000
--- a/meta/recipes-extended/lighttpd/lighttpd/0001-mod_cgi-buffers-data-without-bound.patch
+++ /dev/null
@@ -1,387 +0,0 @@
-From e6ccbab5d42b110ac4f6ce1f72cb1e9ccbe4400a Mon Sep 17 00:00:00 2001
-From: Li xin <lixin.fnst@cn.fujitsu.com>
-Date: Tue, 16 Jun 2015 19:02:38 +0900
-Subject: [PATCH] mod_cgi buffers data without bound so fix it
-
-Upstream-Status: Submitted [http://redmine.lighttpd.net/issues/1264]
-
-Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
-
-Update context for 1.4.36.
-
-Signed-off-by: Kai Kang <kai.kang@windriver.com>
----
- doc/config/lighttpd.conf |   8 ++
- src/mod_cgi.c            | 188 ++++++++++++++++++++++++++++++++++++++++++++---
- 2 files changed, 187 insertions(+), 9 deletions(-)
-
-diff --git a/doc/config/lighttpd.conf b/doc/config/lighttpd.conf
-index 60b0ae1..9c101a7 100644
---- a/doc/config/lighttpd.conf
-+++ b/doc/config/lighttpd.conf
-@@ -375,6 +375,14 @@ server.upload-dirs = ( "/var/tmp" )
- ##
- #######################################################################
- 
-+#######################################################################
-+##
-+##
-+## maximum bytes in send_raw before backing off [KByte]
-+##  cgi.high-waterlevel        = 10240
-+## minimum bytes in send_raw to disable backoff [KByte]
-+##  cgi.low-waterlevel         = 5120
-+#######################################################################
- 
- #######################################################################
- ##
-diff --git a/src/mod_cgi.c b/src/mod_cgi.c
-index 01b1877..7c67eb5 100644
---- a/src/mod_cgi.c
-+++ b/src/mod_cgi.c
-@@ -38,6 +38,10 @@
- 
- #include "version.h"
- 
-+/* for output logs */
-+char msgbuf[2048];
-+
-+
- enum {EOL_UNSET, EOL_N, EOL_RN};
- 
- typedef struct {
-@@ -53,9 +57,19 @@ typedef struct {
- 	size_t size;
- } buffer_pid_t;
- 
-+struct handler_ctx;
-+
-+typedef struct {
-+	struct handler_ctx **hctx;
-+	size_t used;
-+	size_t size;
-+} buffer_ctx_t;
-+
- typedef struct {
- 	array *cgi;
- 	unsigned short execute_x_only;
-+	unsigned int high_waterlevel; /* maximum bytes in send_raw before backing off */
-+	unsigned int low_waterlevel;  /* minimum bytes in send_raw to disable backoff */
- } plugin_config;
- 
- typedef struct {
-@@ -68,9 +82,11 @@ typedef struct {
- 	plugin_config **config_storage;
- 
- 	plugin_config conf;
-+
-+	buffer_ctx_t cgi_ctx;
- } plugin_data;
- 
--typedef struct {
-+typedef struct handler_ctx {
- 	pid_t pid;
- 	int fd;
- 	int fde_ndx; /* index into the fd-event buffer */
-@@ -78,11 +94,16 @@ typedef struct {
- 	connection *remote_conn;  /* dumb pointer */
- 	plugin_data *plugin_data; /* dumb pointer */
- 
-+	int throttling;        /* 1=waiting for send_raw buffer to drain */
-+	off_t high_waterlevel; /* maximum bytes in send_raw before backing off */
-+	off_t low_waterlevel;  /* minimum bytes in send_raw to disable backoff */
-+	off_t bytes_in_buffer;
-+
- 	buffer *response;
- 	buffer *response_header;
- } handler_ctx;
- 
--static handler_ctx * cgi_handler_ctx_init(void) {
-+static handler_ctx * cgi_handler_ctx_init(plugin_data *p) {
- 	handler_ctx *hctx = calloc(1, sizeof(*hctx));
- 
- 	force_assert(hctx);
-@@ -90,13 +111,26 @@ static handler_ctx * cgi_handler_ctx_init(void) {
- 	hctx->response = buffer_init();
- 	hctx->response_header = buffer_init();
- 
-+	hctx->throttling = 0;
-+	hctx->high_waterlevel = (off_t)p->conf.high_waterlevel * 1024;
-+	hctx->low_waterlevel  = (off_t)p->conf.low_waterlevel  * 1024;
-+	if (hctx->low_waterlevel >= hctx->high_waterlevel) {
-+	    hctx->low_waterlevel = hctx->high_waterlevel * 3 / 4; /* 75% */
-+	}
-+	hctx->bytes_in_buffer = 0;
-+
- 	return hctx;
- }
- 
--static void cgi_handler_ctx_free(handler_ctx *hctx) {
-+static void cgi_handler_ctx_free(server *srv, handler_ctx *hctx) {
- 	buffer_free(hctx->response);
- 	buffer_free(hctx->response_header);
- 
-+	/* to avoid confusion */
-+	if (hctx->throttling) {
-+	    log_error_write(srv, __FILE__, __LINE__, "s", "unthrottled");
-+	}
-+
- 	free(hctx);
- }
- 
-@@ -154,6 +188,8 @@ SETDEFAULTS_FUNC(mod_fastcgi_set_defaults) {
- 	config_values_t cv[] = {
- 		{ "cgi.assign",                  NULL, T_CONFIG_ARRAY, T_CONFIG_SCOPE_CONNECTION },       /* 0 */
- 		{ "cgi.execute-x-only",          NULL, T_CONFIG_BOOLEAN, T_CONFIG_SCOPE_CONNECTION },     /* 1 */
-+		{ "cgi.high-waterlevel",         NULL, T_CONFIG_INT,   T_CONFIG_SCOPE_CONNECTION },       /* 2 */
-+		{ "cgi.low-waterlevel",          NULL, T_CONFIG_INT,   T_CONFIG_SCOPE_CONNECTION },       /* 3 */
- 		{ NULL,                          NULL, T_CONFIG_UNSET, T_CONFIG_SCOPE_UNSET}
- 	};
- 
-@@ -169,9 +205,13 @@ SETDEFAULTS_FUNC(mod_fastcgi_set_defaults) {
- 
- 		s->cgi    = array_init();
- 		s->execute_x_only = 0;
-+		s->high_waterlevel = 0; /* 0 == disabled */
-+		s->low_waterlevel  = 0;
- 
- 		cv[0].destination = s->cgi;
- 		cv[1].destination = &(s->execute_x_only);
-+		cv[2].destination = &(s->high_waterlevel);
-+		cv[3].destination = &(s->low_waterlevel);
- 
- 		p->config_storage[i] = s;
- 
-@@ -184,6 +224,51 @@ SETDEFAULTS_FUNC(mod_fastcgi_set_defaults) {
- }
- 
- 
-+static void cgi_recount_bytes_in_buffer(handler_ctx *hctx)
-+{
-+	chunkqueue *cq = hctx->remote_conn->write_queue;
-+	hctx->bytes_in_buffer = chunkqueue_length(cq) - chunkqueue_written(cq);
-+}
-+
-+
-+static void cgi_throttling_control(server *srv, handler_ctx *hctx)
-+{
-+	cgi_recount_bytes_in_buffer(hctx);
-+
-+#ifdef DEBUG
-+	sprintf(msgbuf, "throttling=%d, chars=%llu, high=%llu, low=%llu",
-+		hctx->throttling, hctx->bytes_in_buffer,
-+		hctx->high_waterlevel, hctx->low_waterlevel);
-+	log_error_write(srv, __FILE__, __LINE__, "ss",
-+			"(debug) throttling control,", msgbuf);
-+#endif
-+
-+	if (hctx->throttling) {
-+		sprintf(msgbuf, "throttling; chars in queue=%llu,"
-+			" low-waterlevel=%llu, high-waterlevel=%llu",
-+			hctx->bytes_in_buffer,
-+			hctx->low_waterlevel, hctx->high_waterlevel);
-+		log_error_write(srv, __FILE__, __LINE__, "s", msgbuf);
-+		if (hctx->bytes_in_buffer <= hctx->low_waterlevel) {
-+			fdevent_event_set(srv->ev, &(hctx->fde_ndx), hctx->fd, FDEVENT_IN);
-+			hctx->throttling = 0;
-+			log_error_write(srv, __FILE__, __LINE__, "s", "unthrottled");
-+		}
-+	} else {
-+		if (hctx->high_waterlevel != 0 &&
-+			hctx->high_waterlevel <= hctx->bytes_in_buffer) {
-+			fdevent_event_del(srv->ev, &(hctx->fde_ndx), hctx->fd);
-+			hctx->throttling = 1;
-+			sprintf(msgbuf, "throttled; chars in queue=%llu,"
-+				" low-waterlevel=%llu, high-waterlevel=%llu",
-+				hctx->bytes_in_buffer,
-+				hctx->low_waterlevel, hctx->high_waterlevel);
-+			log_error_write(srv, __FILE__, __LINE__, "s", msgbuf);
-+		}
-+	}
-+}
-+
-+
- static int cgi_pid_add(server *srv, plugin_data *p, pid_t pid) {
- 	int m = -1;
- 	size_t i;
-@@ -230,6 +315,39 @@ static int cgi_pid_del(server *srv, plugin_data *p, pid_t pid) {
- 	return 0;
- }
- 
-+
-+static void cgi_ctx_add(plugin_data *p, handler_ctx *hctx) {
-+	buffer_ctx_t *r = &(p->cgi_ctx);
-+
-+	if (r->size == 0) {
-+		r->size = 16;
-+		r->hctx = malloc(sizeof(*r->hctx) * r->size);
-+	} else if (r->used == r->size) {
-+		r->size += 16;
-+		r->hctx = realloc(r->hctx, sizeof(*r->hctx) * r->size);
-+	}
-+
-+	r->hctx[r->used++] = hctx;
-+}
-+
-+static void cgi_ctx_del(plugin_data *p, handler_ctx *hctx) {
-+	size_t i;
-+	buffer_ctx_t *r = &(p->cgi_ctx);
-+
-+	for (i = 0; i < r->used; i++) {
-+		if (r->hctx[i] == hctx) break;
-+	}
-+
-+	if (i != r->used) {
-+		/* found */
-+
-+		if (i != r->used - 1) {
-+			r->hctx[i] = r->hctx[r->used - 1];
-+		}
-+		r->used--;
-+	}
-+}
-+
- static int cgi_response_parse(server *srv, connection *con, plugin_data *p, buffer *in) {
- 	char *ns;
- 	const char *s;
-@@ -380,6 +498,14 @@ static int cgi_demux_response(server *srv, handler_ctx *hctx) {
- 
- 		buffer_commit(hctx->response, n);
- 
-+#ifdef DEBUG
-+		sprintf(msgbuf, "n=%d, bytes_out=%llu, bytes_in=%llu", n,
-+			(unsigned long long)con->write_queue->bytes_out,
-+			(unsigned long long)con->write_queue->bytes_in);
-+		log_error_write(srv, __FILE__, __LINE__, "ss",
-+				"(debug) read,", msgbuf);
-+#endif
-+
- 		/* split header from body */
- 
- 		if (con->file_started == 0) {
-@@ -503,7 +629,20 @@ static int cgi_demux_response(server *srv, handler_ctx *hctx) {
- 			}
- 		} else {
- 			http_chunk_append_buffer(srv, con, hctx->response);
-+#ifdef DEBUG
-+			sprintf(msgbuf, "n=%d, bytes_out=%llu, bytes_in=%llu, limit=%llu", n,
-+				(unsigned long long)con->write_queue->bytes_out,
-+				(unsigned long long)con->write_queue->bytes_in,
-+				(unsigned long long)hctx->high_waterlevel);
-+			log_error_write(srv, __FILE__, __LINE__,
-+					"ss", "(debug) append,", msgbuf);
-+#endif
- 			joblist_append(srv, con);
-+
-+			cgi_throttling_control(srv, hctx);
-+			if (hctx->throttling) {
-+				return FDEVENT_HANDLED_NOT_FINISHED;
-+			}
- 		}
- 
- #if 0
-@@ -553,8 +692,9 @@ static handler_t cgi_connection_close(server *srv, handler_ctx *hctx) {
- 	con->plugin_ctx[p->id] = NULL;
- 
- 	/* is this a good idea ? */
--	cgi_handler_ctx_free(hctx);
--
-+	cgi_ctx_del(p, hctx);
-+	cgi_handler_ctx_free(srv, hctx);
-+	
- 	/* if waitpid hasn't been called by response.c yet, do it here */
- 	if (pid) {
- 		/* check if the CGI-script is already gone */
-@@ -1105,7 +1245,8 @@ static int cgi_create_env(server *srv, connection *con, plugin_data *p, buffer *
- 		con->mode = p->id;
- 		buffer_reset(con->physical.path);
- 
--		hctx = cgi_handler_ctx_init();
-+		hctx = cgi_handler_ctx_init(p);
-+		cgi_ctx_add(p, hctx);
- 
- 		hctx->remote_conn = con;
- 		hctx->plugin_data = p;
-@@ -1114,6 +1255,11 @@ static int cgi_create_env(server *srv, connection *con, plugin_data *p, buffer *
- 		hctx->fde_ndx = -1;
- 
- 		con->plugin_ctx[p->id] = hctx;
-+#ifdef DEBUG
-+		sprintf(msgbuf, "hctx=%p, con=%p", (void*)hctx, (void*)con);
-+		log_error_write(srv, __FILE__, __LINE__, "ss",
-+				"(debug) hctx generated, ", msgbuf);
-+#endif
- 
- 		fdevent_register(srv->ev, hctx->fd, cgi_handle_fdevent, hctx);
- 		fdevent_event_set(srv->ev, &(hctx->fde_ndx), hctx->fd, FDEVENT_IN);
-@@ -1128,7 +1274,8 @@ static int cgi_create_env(server *srv, connection *con, plugin_data *p, buffer *
- 
- 			close(hctx->fd);
- 
--			cgi_handler_ctx_free(hctx);
-+			cgi_ctx_del(p, hctx);
-+			cgi_handler_ctx_free(srv, hctx);
- 
- 			con->plugin_ctx[p->id] = NULL;
- 
-@@ -1153,6 +1300,8 @@ static int mod_cgi_patch_connection(server *srv, connection *con, plugin_data *p
- 
- 	PATCH(cgi);
- 	PATCH(execute_x_only);
-+	PATCH(high_waterlevel);
-+	PATCH(low_waterlevel);
- 
- 	/* skip the first, the global context */
- 	for (i = 1; i < srv->config_context->used; i++) {
-@@ -1170,6 +1319,10 @@ static int mod_cgi_patch_connection(server *srv, connection *con, plugin_data *p
- 				PATCH(cgi);
- 			} else if (buffer_is_equal_string(du->key, CONST_STR_LEN("cgi.execute-x-only"))) {
- 				PATCH(execute_x_only);
-+			} else if (buffer_is_equal_string(du->key, CONST_STR_LEN("cgi.high-waterlevel"))) {
-+				PATCH(high_waterlevel);
-+			} else if (buffer_is_equal_string(du->key, CONST_STR_LEN("cgi.low-waterlevel"))) {
-+				PATCH(low_waterlevel);
- 			}
- 		}
- 	}
-@@ -1222,6 +1375,21 @@ URIHANDLER_FUNC(cgi_is_handled) {
- TRIGGER_FUNC(cgi_trigger) {
- 	plugin_data *p = p_d;
- 	size_t ndx;
-+
-+	for (ndx = 0; ndx < p->cgi_ctx.used; ndx++) {
-+		handler_ctx *hctx = p->cgi_ctx.hctx[ndx];
-+#ifdef DEBUG
-+		connection *con = hctx->remote_conn;
-+	
-+		sprintf(msgbuf, "hctx=%p, con=%p, bytes_in_buffer=%llu",
-+			(void*)hctx, (void*)con,
-+			(unsigned long long)hctx->bytes_in_buffer);
-+		log_error_write(srv, __FILE__, __LINE__, "ss",
-+				"(debug) found using ctx,", msgbuf);
-+#endif
-+		cgi_throttling_control(srv, hctx);
-+	}
-+
- 	/* the trigger handle only cares about lonely PID which we have to wait for */
- #ifndef __WIN32
- 
-@@ -1330,7 +1498,8 @@ SUBREQUEST_FUNC(mod_cgi_handle_subrequest) {
- 			log_error_write(srv, __FILE__, __LINE__, "sds", "cgi close failed ", hctx->fd, strerror(errno));
- 		}
- 
--		cgi_handler_ctx_free(hctx);
-+		cgi_ctx_del(p, hctx);
-+		cgi_handler_ctx_free(srv, hctx);
- 
- 		con->plugin_ctx[p->id] = NULL;
- 
-@@ -1362,7 +1531,8 @@ SUBREQUEST_FUNC(mod_cgi_handle_subrequest) {
- 			log_error_write(srv, __FILE__, __LINE__, "sds", "cgi close failed ", hctx->fd, strerror(errno));
- 		}
- 
--		cgi_handler_ctx_free(hctx);
-+		cgi_ctx_del(p, hctx);
-+		cgi_handler_ctx_free(srv, hctx);
- 
- 		con->plugin_ctx[p->id] = NULL;
- 		return HANDLER_FINISHED;
diff --git a/meta/recipes-extended/lighttpd/lighttpd_1.4.39.bb b/meta/recipes-extended/lighttpd/lighttpd_1.4.39.bb
index a407d03..378accb 100644
--- a/meta/recipes-extended/lighttpd/lighttpd_1.4.39.bb
+++ b/meta/recipes-extended/lighttpd/lighttpd_1.4.39.bb
@@ -21,7 +21,6 @@ SRC_URI = "http://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-${PV}.t
         file://lighttpd \
         file://lighttpd.service \
         file://pkgconfig.patch \
-        file://0001-mod_cgi-buffers-data-without-bound.patch \
         "
 
 SRC_URI[md5sum] = "63c7563be1c7a7a9819a51f07f1af8b2"
-- 
2.1.4


