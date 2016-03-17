Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA81FE00C3A; Thu, 17 Mar 2016 09:33:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f175.google.com (mail-pf0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F01D7E00C39
	for <poky@yoctoproject.org>; Thu, 17 Mar 2016 09:33:18 -0700 (PDT)
Received: by mail-pf0-f175.google.com with SMTP id 124so127795843pfg.0
	for <poky@yoctoproject.org>; Thu, 17 Mar 2016 09:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=DDm8dlCFBfUyENkNZ5ax00TrwLk+EDUwPeT0j6mxb/Y=;
	b=RB0pufbjQ7JHVov/RmuPzZXBNro8SfdbZx5sQLziqdg622vNYtNeEp5Nx6p3AqyjJs
	lv5Kg9RwxKCWRcBu12yz5N+iDh+giyNpYr9Ci5nsCHm2F4d0+mWCjRx8VOgO9RXUflLc
	H5nFIHqFXYfHgkY882CFQkPSZmHwuLWAf49v7GT+OPfx7nMN4CwHDxlz6lU3EgXsrSKR
	4nGPkGeewGmnQ0Yhyt+P8+1kxoWdwMqPVoodcBWva+mNG0JFJ86dby4dooOGMIu2aMPO
	0GZ3/W/yNa2jfXehbgdyfsKs4KlIMKfj1dJ3jsizNvYCfRSFeDx8PKiEaXNr6BYy1qG2
	xD1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=DDm8dlCFBfUyENkNZ5ax00TrwLk+EDUwPeT0j6mxb/Y=;
	b=Aje9kiJuVYoixy2oMPoVekqQz7xRaVfEN3WJIJW1ZQ7UCPs3alL3DzJb9DshuTqyF6
	MbDrZHg+W3JLmIxwGjWLi87XmQ8LAFgmVL91/+eh5/9KZvmnEU+YOCEZ7umJZSqHDmI2
	ZcGlV8N1Irb5R7wbGBJfRXQGyo5RdJ+X4ZP8evQZRr+/wEpQzmjp7aGzmgWBaw6WQ5oL
	5/GAsrheFdTIRTxxPcqadM3MpB6CzyfwquM5Fx/7iZU3EY0eWj9DW4rELo7dYKTuWn+t
	x+YkTDwI83R/+Wi9USNT/XS6jrqJ69sEhfNJDgjHioIs3xvYeFxtg98gRq7Ehdx0oDij
	lSIA==
X-Gm-Message-State: AD7BkJK3srM1ZGEsx1LQNdvIHhmvX4l5s2ZjppcB+G9CB2n8JE030qMPDzsZJc4owNV7yA==
X-Received: by 10.98.65.14 with SMTP id o14mr16038326pfa.151.1458232398015;
	Thu, 17 Mar 2016 09:33:18 -0700 (PDT)
Received: from [10.234.78.1] ([50.141.35.53]) by smtp.gmail.com with ESMTPSA id
	lq10sm14533312pab.36.2016.03.17.09.33.17
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 17 Mar 2016 09:33:17 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1458227722-28660-1-git-send-email-nick@leverton.org>
Date: Thu, 17 Mar 2016 09:33:13 -0700
Message-Id: <A288F972-E86D-4135-910D-D4743DC6D603@gmail.com>
References: <1458227722-28660-1-git-send-email-nick@leverton.org>
To: Nick Leverton <nick@leverton.org>
X-Mailer: Apple Mail (2.3112)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] lighttpd: fix /usr/lib/mod_cgi.so: undefined symbol: chunkqueue_written
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
X-List-Received-Date: Thu, 17 Mar 2016 16:33:34 -0000
X-Groupsio-MsgNum: 10350
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B3A9093B-4027-4D38-8228-110E5EB71489";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_B3A9093B-4027-4D38-8228-110E5EB71489
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Mar 17, 2016, at 8:15 AM, Nick Leverton <nick@leverton.org> wrote:
>=20
> lighttpd fails to load when mod_cgi is enabled at run time, with the
> message "dlopen() failed for: /usr/lib/mod_cgi.so /usr/lib/mod_cgi.so:
> undefined symbol: chunkqueue_written".
>=20
> This is caused by a patch intended to prevent memory exhaustion by
> naively streaming CGIs, aimed at upstream issue
> http://redmine.lighttpd.net/issues/1264 . The patch uses internal API
> functions from older versions of lighttpd which don't exist in this
> version.  Remove the patch, pending a better fix.

I think a fix should be accompanying the removal, otherwise we regress =
on memory issue.

>=20
> [ YOCTO #9289 ]
>=20
> Signed-off-by: Nick Leverton <nick@leverton.org>
> ---
> .../0001-mod_cgi-buffers-data-without-bound.patch  | 387 =
---------------------
> meta/recipes-extended/lighttpd/lighttpd_1.4.39.bb  |   1 -
> 2 files changed, 388 deletions(-)
> delete mode 100644 =
meta/recipes-extended/lighttpd/lighttpd/0001-mod_cgi-buffers-data-without-=
bound.patch
>=20
> diff --git =
a/meta/recipes-extended/lighttpd/lighttpd/0001-mod_cgi-buffers-data-withou=
t-bound.patch =
b/meta/recipes-extended/lighttpd/lighttpd/0001-mod_cgi-buffers-data-withou=
t-bound.patch
> deleted file mode 100644
> index a9df174..0000000
> --- =
a/meta/recipes-extended/lighttpd/lighttpd/0001-mod_cgi-buffers-data-withou=
t-bound.patch
> +++ /dev/null
> @@ -1,387 +0,0 @@
> -=46rom e6ccbab5d42b110ac4f6ce1f72cb1e9ccbe4400a Mon Sep 17 00:00:00 =
2001
> -From: Li xin <lixin.fnst@cn.fujitsu.com>
> -Date: Tue, 16 Jun 2015 19:02:38 +0900
> -Subject: [PATCH] mod_cgi buffers data without bound so fix it
> -
> -Upstream-Status: Submitted [http://redmine.lighttpd.net/issues/1264]
> -
> -Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
> -
> -Update context for 1.4.36.
> -
> -Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ----
> - doc/config/lighttpd.conf |   8 ++
> - src/mod_cgi.c            | 188 =
++++++++++++++++++++++++++++++++++++++++++++---
> - 2 files changed, 187 insertions(+), 9 deletions(-)
> -
> -diff --git a/doc/config/lighttpd.conf b/doc/config/lighttpd.conf
> -index 60b0ae1..9c101a7 100644
> ---- a/doc/config/lighttpd.conf
> -+++ b/doc/config/lighttpd.conf
> -@@ -375,6 +375,14 @@ server.upload-dirs =3D ( "/var/tmp" )
> - ##
> - =
#######################################################################
> -
> =
-+#######################################################################
> -+##
> -+##
> -+## maximum bytes in send_raw before backing off [KByte]
> -+##  cgi.high-waterlevel        =3D 10240
> -+## minimum bytes in send_raw to disable backoff [KByte]
> -+##  cgi.low-waterlevel         =3D 5120
> =
-+#######################################################################
> -
> - =
#######################################################################
> - ##
> -diff --git a/src/mod_cgi.c b/src/mod_cgi.c
> -index 01b1877..7c67eb5 100644
> ---- a/src/mod_cgi.c
> -+++ b/src/mod_cgi.c
> -@@ -38,6 +38,10 @@
> -
> - #include "version.h"
> -
> -+/* for output logs */
> -+char msgbuf[2048];
> -+
> -+
> - enum {EOL_UNSET, EOL_N, EOL_RN};
> -
> - typedef struct {
> -@@ -53,9 +57,19 @@ typedef struct {
> - 	size_t size;
> - } buffer_pid_t;
> -
> -+struct handler_ctx;
> -+
> -+typedef struct {
> -+	struct handler_ctx **hctx;
> -+	size_t used;
> -+	size_t size;
> -+} buffer_ctx_t;
> -+
> - typedef struct {
> - 	array *cgi;
> - 	unsigned short execute_x_only;
> -+	unsigned int high_waterlevel; /* maximum bytes in send_raw =
before backing off */
> -+	unsigned int low_waterlevel;  /* minimum bytes in send_raw to =
disable backoff */
> - } plugin_config;
> -
> - typedef struct {
> -@@ -68,9 +82,11 @@ typedef struct {
> - 	plugin_config **config_storage;
> -
> - 	plugin_config conf;
> -+
> -+	buffer_ctx_t cgi_ctx;
> - } plugin_data;
> -
> --typedef struct {
> -+typedef struct handler_ctx {
> - 	pid_t pid;
> - 	int fd;
> - 	int fde_ndx; /* index into the fd-event buffer */
> -@@ -78,11 +94,16 @@ typedef struct {
> - 	connection *remote_conn;  /* dumb pointer */
> - 	plugin_data *plugin_data; /* dumb pointer */
> -
> -+	int throttling;        /* 1=3Dwaiting for send_raw buffer to =
drain */
> -+	off_t high_waterlevel; /* maximum bytes in send_raw before =
backing off */
> -+	off_t low_waterlevel;  /* minimum bytes in send_raw to disable =
backoff */
> -+	off_t bytes_in_buffer;
> -+
> - 	buffer *response;
> - 	buffer *response_header;
> - } handler_ctx;
> -
> --static handler_ctx * cgi_handler_ctx_init(void) {
> -+static handler_ctx * cgi_handler_ctx_init(plugin_data *p) {
> - 	handler_ctx *hctx =3D calloc(1, sizeof(*hctx));
> -
> - 	force_assert(hctx);
> -@@ -90,13 +111,26 @@ static handler_ctx * cgi_handler_ctx_init(void) =
{
> - 	hctx->response =3D buffer_init();
> - 	hctx->response_header =3D buffer_init();
> -
> -+	hctx->throttling =3D 0;
> -+	hctx->high_waterlevel =3D (off_t)p->conf.high_waterlevel * 1024;
> -+	hctx->low_waterlevel  =3D (off_t)p->conf.low_waterlevel  * 1024;
> -+	if (hctx->low_waterlevel >=3D hctx->high_waterlevel) {
> -+	    hctx->low_waterlevel =3D hctx->high_waterlevel * 3 / 4; /* =
75% */
> -+	}
> -+	hctx->bytes_in_buffer =3D 0;
> -+
> - 	return hctx;
> - }
> -
> --static void cgi_handler_ctx_free(handler_ctx *hctx) {
> -+static void cgi_handler_ctx_free(server *srv, handler_ctx *hctx) {
> - 	buffer_free(hctx->response);
> - 	buffer_free(hctx->response_header);
> -
> -+	/* to avoid confusion */
> -+	if (hctx->throttling) {
> -+	    log_error_write(srv, __FILE__, __LINE__, "s", =
"unthrottled");
> -+	}
> -+
> - 	free(hctx);
> - }
> -
> -@@ -154,6 +188,8 @@ SETDEFAULTS_FUNC(mod_fastcgi_set_defaults) {
> - 	config_values_t cv[] =3D {
> - 		{ "cgi.assign",                  NULL, T_CONFIG_ARRAY, =
T_CONFIG_SCOPE_CONNECTION },       /* 0 */
> - 		{ "cgi.execute-x-only",          NULL, T_CONFIG_BOOLEAN, =
T_CONFIG_SCOPE_CONNECTION },     /* 1 */
> -+		{ "cgi.high-waterlevel",         NULL, T_CONFIG_INT,   =
T_CONFIG_SCOPE_CONNECTION },       /* 2 */
> -+		{ "cgi.low-waterlevel",          NULL, T_CONFIG_INT,   =
T_CONFIG_SCOPE_CONNECTION },       /* 3 */
> - 		{ NULL,                          NULL, T_CONFIG_UNSET, =
T_CONFIG_SCOPE_UNSET}
> - 	};
> -
> -@@ -169,9 +205,13 @@ SETDEFAULTS_FUNC(mod_fastcgi_set_defaults) {
> -
> - 		s->cgi    =3D array_init();
> - 		s->execute_x_only =3D 0;
> -+		s->high_waterlevel =3D 0; /* 0 =3D=3D disabled */
> -+		s->low_waterlevel  =3D 0;
> -
> - 		cv[0].destination =3D s->cgi;
> - 		cv[1].destination =3D &(s->execute_x_only);
> -+		cv[2].destination =3D &(s->high_waterlevel);
> -+		cv[3].destination =3D &(s->low_waterlevel);
> -
> - 		p->config_storage[i] =3D s;
> -
> -@@ -184,6 +224,51 @@ SETDEFAULTS_FUNC(mod_fastcgi_set_defaults) {
> - }
> -
> -
> -+static void cgi_recount_bytes_in_buffer(handler_ctx *hctx)
> -+{
> -+	chunkqueue *cq =3D hctx->remote_conn->write_queue;
> -+	hctx->bytes_in_buffer =3D chunkqueue_length(cq) - =
chunkqueue_written(cq);
> -+}
> -+
> -+
> -+static void cgi_throttling_control(server *srv, handler_ctx *hctx)
> -+{
> -+	cgi_recount_bytes_in_buffer(hctx);
> -+
> -+#ifdef DEBUG
> -+	sprintf(msgbuf, "throttling=3D%d, chars=3D%llu, high=3D%llu, =
low=3D%llu",
> -+		hctx->throttling, hctx->bytes_in_buffer,
> -+		hctx->high_waterlevel, hctx->low_waterlevel);
> -+	log_error_write(srv, __FILE__, __LINE__, "ss",
> -+			"(debug) throttling control,", msgbuf);
> -+#endif
> -+
> -+	if (hctx->throttling) {
> -+		sprintf(msgbuf, "throttling; chars in queue=3D%llu,"
> -+			" low-waterlevel=3D%llu, high-waterlevel=3D%llu",
> -+			hctx->bytes_in_buffer,
> -+			hctx->low_waterlevel, hctx->high_waterlevel);
> -+		log_error_write(srv, __FILE__, __LINE__, "s", msgbuf);
> -+		if (hctx->bytes_in_buffer <=3D hctx->low_waterlevel) {
> -+			fdevent_event_set(srv->ev, &(hctx->fde_ndx), =
hctx->fd, FDEVENT_IN);
> -+			hctx->throttling =3D 0;
> -+			log_error_write(srv, __FILE__, __LINE__, "s", =
"unthrottled");
> -+		}
> -+	} else {
> -+		if (hctx->high_waterlevel !=3D 0 &&
> -+			hctx->high_waterlevel <=3D =
hctx->bytes_in_buffer) {
> -+			fdevent_event_del(srv->ev, &(hctx->fde_ndx), =
hctx->fd);
> -+			hctx->throttling =3D 1;
> -+			sprintf(msgbuf, "throttled; chars in =
queue=3D%llu,"
> -+				" low-waterlevel=3D%llu, =
high-waterlevel=3D%llu",
> -+				hctx->bytes_in_buffer,
> -+				hctx->low_waterlevel, =
hctx->high_waterlevel);
> -+			log_error_write(srv, __FILE__, __LINE__, "s", =
msgbuf);
> -+		}
> -+	}
> -+}
> -+
> -+
> - static int cgi_pid_add(server *srv, plugin_data *p, pid_t pid) {
> - 	int m =3D -1;
> - 	size_t i;
> -@@ -230,6 +315,39 @@ static int cgi_pid_del(server *srv, plugin_data =
*p, pid_t pid) {
> - 	return 0;
> - }
> -
> -+
> -+static void cgi_ctx_add(plugin_data *p, handler_ctx *hctx) {
> -+	buffer_ctx_t *r =3D &(p->cgi_ctx);
> -+
> -+	if (r->size =3D=3D 0) {
> -+		r->size =3D 16;
> -+		r->hctx =3D malloc(sizeof(*r->hctx) * r->size);
> -+	} else if (r->used =3D=3D r->size) {
> -+		r->size +=3D 16;
> -+		r->hctx =3D realloc(r->hctx, sizeof(*r->hctx) * =
r->size);
> -+	}
> -+
> -+	r->hctx[r->used++] =3D hctx;
> -+}
> -+
> -+static void cgi_ctx_del(plugin_data *p, handler_ctx *hctx) {
> -+	size_t i;
> -+	buffer_ctx_t *r =3D &(p->cgi_ctx);
> -+
> -+	for (i =3D 0; i < r->used; i++) {
> -+		if (r->hctx[i] =3D=3D hctx) break;
> -+	}
> -+
> -+	if (i !=3D r->used) {
> -+		/* found */
> -+
> -+		if (i !=3D r->used - 1) {
> -+			r->hctx[i] =3D r->hctx[r->used - 1];
> -+		}
> -+		r->used--;
> -+	}
> -+}
> -+
> - static int cgi_response_parse(server *srv, connection *con, =
plugin_data *p, buffer *in) {
> - 	char *ns;
> - 	const char *s;
> -@@ -380,6 +498,14 @@ static int cgi_demux_response(server *srv, =
handler_ctx *hctx) {
> -
> - 		buffer_commit(hctx->response, n);
> -
> -+#ifdef DEBUG
> -+		sprintf(msgbuf, "n=3D%d, bytes_out=3D%llu, =
bytes_in=3D%llu", n,
> -+			(unsigned long long)con->write_queue->bytes_out,
> -+			(unsigned long long)con->write_queue->bytes_in);
> -+		log_error_write(srv, __FILE__, __LINE__, "ss",
> -+				"(debug) read,", msgbuf);
> -+#endif
> -+
> - 		/* split header from body */
> -
> - 		if (con->file_started =3D=3D 0) {
> -@@ -503,7 +629,20 @@ static int cgi_demux_response(server *srv, =
handler_ctx *hctx) {
> - 			}
> - 		} else {
> - 			http_chunk_append_buffer(srv, con, =
hctx->response);
> -+#ifdef DEBUG
> -+			sprintf(msgbuf, "n=3D%d, bytes_out=3D%llu, =
bytes_in=3D%llu, limit=3D%llu", n,
> -+				(unsigned long =
long)con->write_queue->bytes_out,
> -+				(unsigned long =
long)con->write_queue->bytes_in,
> -+				(unsigned long =
long)hctx->high_waterlevel);
> -+			log_error_write(srv, __FILE__, __LINE__,
> -+					"ss", "(debug) append,", =
msgbuf);
> -+#endif
> - 			joblist_append(srv, con);
> -+
> -+			cgi_throttling_control(srv, hctx);
> -+			if (hctx->throttling) {
> -+				return FDEVENT_HANDLED_NOT_FINISHED;
> -+			}
> - 		}
> -
> - #if 0
> -@@ -553,8 +692,9 @@ static handler_t cgi_connection_close(server =
*srv, handler_ctx *hctx) {
> - 	con->plugin_ctx[p->id] =3D NULL;
> -
> - 	/* is this a good idea ? */
> --	cgi_handler_ctx_free(hctx);
> --
> -+	cgi_ctx_del(p, hctx);
> -+	cgi_handler_ctx_free(srv, hctx);
> -+
> - 	/* if waitpid hasn't been called by response.c yet, do it here =
*/
> - 	if (pid) {
> - 		/* check if the CGI-script is already gone */
> -@@ -1105,7 +1245,8 @@ static int cgi_create_env(server *srv, =
connection *con, plugin_data *p, buffer *
> - 		con->mode =3D p->id;
> - 		buffer_reset(con->physical.path);
> -
> --		hctx =3D cgi_handler_ctx_init();
> -+		hctx =3D cgi_handler_ctx_init(p);
> -+		cgi_ctx_add(p, hctx);
> -
> - 		hctx->remote_conn =3D con;
> - 		hctx->plugin_data =3D p;
> -@@ -1114,6 +1255,11 @@ static int cgi_create_env(server *srv, =
connection *con, plugin_data *p, buffer *
> - 		hctx->fde_ndx =3D -1;
> -
> - 		con->plugin_ctx[p->id] =3D hctx;
> -+#ifdef DEBUG
> -+		sprintf(msgbuf, "hctx=3D%p, con=3D%p", (void*)hctx, =
(void*)con);
> -+		log_error_write(srv, __FILE__, __LINE__, "ss",
> -+				"(debug) hctx generated, ", msgbuf);
> -+#endif
> -
> - 		fdevent_register(srv->ev, hctx->fd, cgi_handle_fdevent, =
hctx);
> - 		fdevent_event_set(srv->ev, &(hctx->fde_ndx), hctx->fd, =
FDEVENT_IN);
> -@@ -1128,7 +1274,8 @@ static int cgi_create_env(server *srv, =
connection *con, plugin_data *p, buffer *
> -
> - 			close(hctx->fd);
> -
> --			cgi_handler_ctx_free(hctx);
> -+			cgi_ctx_del(p, hctx);
> -+			cgi_handler_ctx_free(srv, hctx);
> -
> - 			con->plugin_ctx[p->id] =3D NULL;
> -
> -@@ -1153,6 +1300,8 @@ static int mod_cgi_patch_connection(server =
*srv, connection *con, plugin_data *p
> -
> - 	PATCH(cgi);
> - 	PATCH(execute_x_only);
> -+	PATCH(high_waterlevel);
> -+	PATCH(low_waterlevel);
> -
> - 	/* skip the first, the global context */
> - 	for (i =3D 1; i < srv->config_context->used; i++) {
> -@@ -1170,6 +1319,10 @@ static int mod_cgi_patch_connection(server =
*srv, connection *con, plugin_data *p
> - 				PATCH(cgi);
> - 			} else if (buffer_is_equal_string(du->key, =
CONST_STR_LEN("cgi.execute-x-only"))) {
> - 				PATCH(execute_x_only);
> -+			} else if (buffer_is_equal_string(du->key, =
CONST_STR_LEN("cgi.high-waterlevel"))) {
> -+				PATCH(high_waterlevel);
> -+			} else if (buffer_is_equal_string(du->key, =
CONST_STR_LEN("cgi.low-waterlevel"))) {
> -+				PATCH(low_waterlevel);
> - 			}
> - 		}
> - 	}
> -@@ -1222,6 +1375,21 @@ URIHANDLER_FUNC(cgi_is_handled) {
> - TRIGGER_FUNC(cgi_trigger) {
> - 	plugin_data *p =3D p_d;
> - 	size_t ndx;
> -+
> -+	for (ndx =3D 0; ndx < p->cgi_ctx.used; ndx++) {
> -+		handler_ctx *hctx =3D p->cgi_ctx.hctx[ndx];
> -+#ifdef DEBUG
> -+		connection *con =3D hctx->remote_conn;
> -+
> -+		sprintf(msgbuf, "hctx=3D%p, con=3D%p, =
bytes_in_buffer=3D%llu",
> -+			(void*)hctx, (void*)con,
> -+			(unsigned long long)hctx->bytes_in_buffer);
> -+		log_error_write(srv, __FILE__, __LINE__, "ss",
> -+				"(debug) found using ctx,", msgbuf);
> -+#endif
> -+		cgi_throttling_control(srv, hctx);
> -+	}
> -+
> - 	/* the trigger handle only cares about lonely PID which we have =
to wait for */
> - #ifndef __WIN32
> -
> -@@ -1330,7 +1498,8 @@ SUBREQUEST_FUNC(mod_cgi_handle_subrequest) {
> - 			log_error_write(srv, __FILE__, __LINE__, "sds", =
"cgi close failed ", hctx->fd, strerror(errno));
> - 		}
> -
> --		cgi_handler_ctx_free(hctx);
> -+		cgi_ctx_del(p, hctx);
> -+		cgi_handler_ctx_free(srv, hctx);
> -
> - 		con->plugin_ctx[p->id] =3D NULL;
> -
> -@@ -1362,7 +1531,8 @@ SUBREQUEST_FUNC(mod_cgi_handle_subrequest) {
> - 			log_error_write(srv, __FILE__, __LINE__, "sds", =
"cgi close failed ", hctx->fd, strerror(errno));
> - 		}
> -
> --		cgi_handler_ctx_free(hctx);
> -+		cgi_ctx_del(p, hctx);
> -+		cgi_handler_ctx_free(srv, hctx);
> -
> - 		con->plugin_ctx[p->id] =3D NULL;
> - 		return HANDLER_FINISHED;
> diff --git a/meta/recipes-extended/lighttpd/lighttpd_1.4.39.bb =
b/meta/recipes-extended/lighttpd/lighttpd_1.4.39.bb
> index a407d03..378accb 100644
> --- a/meta/recipes-extended/lighttpd/lighttpd_1.4.39.bb
> +++ b/meta/recipes-extended/lighttpd/lighttpd_1.4.39.bb
> @@ -21,7 +21,6 @@ SRC_URI =3D =
"http://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-${PV}.t
>         file://lighttpd \
>         file://lighttpd.service \
>         file://pkgconfig.patch \
> -        file://0001-mod_cgi-buffers-data-without-bound.patch \
>         "
>=20
> SRC_URI[md5sum] =3D "63c7563be1c7a7a9819a51f07f1af8b2"
> --
> 2.1.4
>=20
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--Apple-Mail=_B3A9093B-4027-4D38-8228-110E5EB71489
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlbq3EwACgkQuwUzVZGdMxSkaACfSyNjAWqpirIfD2dXffhIZFba
q6QAn1QpNTOuPAclPpaNl3D6bcRDJ3JB
=2BLa
-----END PGP SIGNATURE-----

--Apple-Mail=_B3A9093B-4027-4D38-8228-110E5EB71489--
