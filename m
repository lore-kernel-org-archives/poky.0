Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B358B4C80050
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 02:33:28 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Dec 2010 00:33:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="581277915"
Received: from unknown (HELO [10.255.13.6]) ([10.255.13.6])
	by orsmga002.jf.intel.com with ESMTP; 07 Dec 2010 00:33:27 -0800
Message-ID: <4CFDF157.1060902@intel.com>
Date: Tue, 07 Dec 2010 00:33:27 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Zhai, Edwin" <edwin.zhai@intel.com>
References: <cover.1290654095.git.edwin.zhai@intel.com>	<ad58f341ec8de6843eec858afd09cf42ec63c0f0.1290654095.git.edwin.zhai@intel.com>
	<4CF5639C.70308@intel.com> <4CFC3E27.4090305@intel.com>
In-Reply-To: <4CFC3E27.4090305@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 4/4] eds-dbus: Update to 2.32.1
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
X-List-Received-Date: Tue, 07 Dec 2010 08:33:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/05/2010 05:36 PM, Zhai, Edwin wrote:
> The reason is that a new change set was added to handle raw and ssl
> stream in a consistent way, that means some ssl headers(from nspr) are
> required even with "--disable-ssl". This is okay for normal linux
> distribution, as they usually enable ssl by default.
>
Is it possible to fix the code to not use the ssl headers at all?  This 
maybe a bug in the code and should be fixed properly in the upstream.

> I can revert this commit with other related one, but it's not clean and
> introduce extra efforts in future upgrade.
>
We can check with the maintainer of this code to ensure future upstreams 
are handled correctly.

Sau!


>
> Thanks,
> edwin
>
> Saul Wold wrote:
>> On 11/21/2010 10:26 PM, Zhai Edwin wrote:
>>
>>> Rebase nossl.patch&   new-contact-fix.patch, remove
>>> optional_imapx_provider.patch, add depends on nspr (its headers are
>>> required for common ssl/tcp support after 9a0d409d5005) and nss (for
>>> some function support).
>>>
>>>
>> Edwin,
>>
>> We are going to hold off on this patch since you seem to have re-enabled
>> the SSL code, and we would like to understand why you needed to do that,
>> it is possible to build with the --disable-ssl set?
>>
>> Also, did you need to pull in the nspr and nss packages for the SSL changes?
>>
>> If you need some help, let Richard and I know, we can connect you with
>> an Intel expert on this stuff.
>>
>> Sau!
>>
>>
>>
>>> Signed-off-by: Zhai Edwin<edwin.zhai@intel.com>
>>> ---
>>>    .../conf/distro/include/poky-default-revisions.inc |    2 +-
>>>    .../recipes-sato/eds/eds-dbus/compatible_api.patch |  109 ++++++++++++++++++++
>>>    .../eds/eds-dbus/new-contact-fix.patch             |   14 ++--
>>>    meta/recipes-sato/eds/eds-dbus/nossl.patch         |   56 +---------
>>>    .../eds/eds-dbus/optional_imapx_provider.patch     |   62 -----------
>>>    meta/recipes-sato/eds/eds-dbus_git.bb              |   17 ++--
>>>    6 files changed, 132 insertions(+), 128 deletions(-)
>>>    create mode 100644 meta/recipes-sato/eds/eds-dbus/compatible_api.patch
>>>    delete mode 100644 meta/recipes-sato/eds/eds-dbus/optional_imapx_provider.patch
>>>
>>> diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
>>> index c5a0c7f..d7639d0 100644
>>> --- a/meta/conf/distro/include/poky-default-revisions.inc
>>> +++ b/meta/conf/distro/include/poky-default-revisions.inc
>>> @@ -33,7 +33,7 @@ SRCREV_pn-devicekit ??= "014d168ba4bf40c9bae487bacff8bf2aa054b5f6"
>>>    SRCREV_pn-dri2proto ??= "66c56ab10d917e3f47f93178d7eac6430970d3c4"
>>>    SRCREV_pn-dtc ??= "73dca9ae0b9abe6924ba640164ecce9f8df69c5a"
>>>    SRCREV_pn-dtc-native ??= "73dca9ae0b9abe6924ba640164ecce9f8df69c5a"
>>> -SRCREV_pn-eds-dbus ??= "7337d11aed576e7caaa12b4e881ad8d33668799f"
>>> +SRCREV_pn-eds-dbus ??= "3c9933541d722c0b17a95a23d5f518745d4aad27"
>>>    SRCREV_pn-eee-acpi-scripts ??= "df785afdacedf869b20fb88a793c13b539819270"
>>>    EGLIBCREV = "11982"
>>>    SRCREV_pn-eglibc ??= "${EGLIBCREV}"
>>> diff --git a/meta/recipes-sato/eds/eds-dbus/compatible_api.patch b/meta/recipes-sato/eds/eds-dbus/compatible_api.patch
>>> new file mode 100644
>>> index 0000000..d5ed507
>>> --- /dev/null
>>> +++ b/meta/recipes-sato/eds/eds-dbus/compatible_api.patch
>>> @@ -0,0 +1,109 @@
>>> +Partly revert 93f4709 to bring back old API for compatibility, which avoid
>>> +dates build failure. When future version of dates turn to new API, this patch
>>> +can be removed.
>>> +
>>> +Signed-off-by: Zhai Edwin<edwin.zhai@intel.com>
>>> +
>>> +Index: git/libedataserver/e-source.c
>>> +===================================================================
>>> +--- git.orig/libedataserver/e-source.c 2010-11-19 11:16:11.000000000 +0800
>>> ++++ git/libedataserver/e-source.c      2010-11-25 09:07:50.000000000 +0800
>>> +@@ -563,6 +563,28 @@
>>> +
>>> + }
>>> +
>>> ++#ifndef EDS_DISABLE_DEPRECATED
>>> ++void
>>> ++e_source_set_color (ESource *source,
>>> ++                  guint32 color)
>>> ++{
>>> ++      gchar color_spec[8];
>>> ++
>>> ++      g_return_if_fail (E_IS_SOURCE (source));
>>> ++
>>> ++      g_snprintf (color_spec, sizeof (color_spec), "#%06x", color);
>>> ++      e_source_set_color_spec (source, color_spec);
>>> ++}
>>> ++
>>> ++void
>>> ++e_source_unset_color (ESource *source)
>>> ++{
>>> ++      g_return_if_fail (E_IS_SOURCE (source));
>>> ++
>>> ++      e_source_set_color_spec (source, NULL);
>>> ++}
>>> ++#endif
>>> ++
>>> + /**
>>> +  * e_source_set_color_spec:
>>> +  * @source: an ESource
>>> +@@ -651,6 +673,42 @@
>>> +       return source->priv->readonly;
>>> + }
>>> +
>>> ++#ifndef EDS_DISABLE_DEPRECATED
>>> ++/**
>>> ++ * e_source_get_color:
>>> ++ * @source: An ESource
>>> ++ * @color_return: Pointer to a variable where the returned color will be
>>> ++ * stored.
>>> ++ *
>>> ++ * If @source has an associated color, return it in *@color_return.
>>> ++ *
>>> ++ * Returns: %TRUE if the @source has a defined color (and hence
>>> ++ * *@color_return was set), %FALSE otherwise.
>>> ++ **/
>>> ++gboolean
>>> ++e_source_get_color (ESource *source,
>>> ++                  guint32 *color_return)
>>> ++{
>>> ++      const gchar *color_spec;
>>> ++      guint32 color;
>>> ++
>>> ++      g_return_val_if_fail (E_IS_SOURCE (source), FALSE);
>>> ++
>>> ++      color_spec = e_source_peek_color_spec (source);
>>> ++
>>> ++      if (color_spec == NULL)
>>> ++              return FALSE;
>>> ++
>>> ++      if (sscanf (color_spec, "#%06x",&color) != 1)
>>> ++              return FALSE;
>>> ++
>>> ++      if (color_return != NULL)
>>> ++              *color_return = color;
>>> ++
>>> ++      return TRUE;
>>> ++}
>>> ++#endif
>>> ++
>>> + gchar *
>>> + e_source_get_uri (ESource *source)
>>> + {
>>> +Index: git/libedataserver/e-source.h
>>> +===================================================================
>>> +--- git.orig/libedataserver/e-source.h 2010-11-19 11:16:11.000000000 +0800
>>> ++++ git/libedataserver/e-source.h      2010-11-25 09:07:50.000000000 +0800
>>> +@@ -82,6 +82,11 @@
>>> +                                 const gchar  *color_spec);
>>> + void  e_source_set_readonly      (ESource      *source,
>>> +                                 gboolean      readonly);
>>> ++#ifndef EDS_DISABLE_DEPRECATED
>>> ++void  e_source_set_color         (ESource      *source,
>>> ++                                guint32       color);
>>> ++void  e_source_unset_color       (ESource      *source);
>>> ++#endif
>>> +
>>> + ESourceGroup *e_source_peek_group         (ESource *source);
>>> + const gchar   *e_source_peek_uid           (ESource *source);
>>> +@@ -90,6 +95,10 @@
>>> + const gchar   *e_source_peek_absolute_uri  (ESource *source);
>>> + const gchar   *e_source_peek_color_spec    (ESource *source);
>>> + gboolean      e_source_get_readonly       (ESource *source);
>>> ++#ifndef EDS_DISABLE_DEPRECATED
>>> ++gboolean      e_source_get_color          (ESource *source,
>>> ++                                         guint32 *color_return);
>>> ++#endif
>>> +
>>> + gchar *e_source_get_uri  (ESource *source);
>>> +
>>> diff --git a/meta/recipes-sato/eds/eds-dbus/new-contact-fix.patch b/meta/recipes-sato/eds/eds-dbus/new-contact-fix.patch
>>> index d34cc55..c9c8aaa 100644
>>> --- a/meta/recipes-sato/eds/eds-dbus/new-contact-fix.patch
>>> +++ b/meta/recipes-sato/eds/eds-dbus/new-contact-fix.patch
>>> @@ -8,14 +8,14 @@ This patch fix it.
>>>    Signed-off-by: Edwin Zhai<edwin.zhai@intel.com>
>>>    Index: git/addressbook/backends/file/e-book-backend-file.c
>>>    ===================================================================
>>> ---- git.orig/addressbook/backends/file/e-book-backend-file.c   2010-10-20 16:14:31.000000000 +0800
>>> -+++ git/addressbook/backends/file/e-book-backend-file.c        2010-10-22 14:11:47.000000000 +0800
>>> -@@ -1217,6 +1217,8 @@
>>> +--- git.orig/addressbook/backends/file/e-book-backend-file.c   2010-11-19 11:16:11.000000000 +0800
>>> ++++ git/addressbook/backends/file/e-book-backend-file.c        2010-11-22 16:15:37.000000000 +0800
>>> +@@ -1247,6 +1247,8 @@
>>> + #ifdef CREATE_DEFAULT_VCARD
>>>                                   EContact *contact = NULL;
>>> -                               EBookBackendSyncStatus status;
>>>
>>>    +                              /* Initialize file_db, or else following do_create cause seg fault */
>>>    +                              bf->priv->file_db = db;
>>> -                               status = do_create (bf, XIMIAN_VCARD,&contact);
>>> -                               if (status != GNOME_Evolution_Addressbook_Success)
>>> -                                       g_warning ("Cannot create default contact: %d", status);
>>> +                               if (!do_create (bf, XIMIAN_VCARD,&contact, NULL))
>>> +                                       g_warning ("Cannot create default contact");
>>> +                               if (contact)
>>> diff --git a/meta/recipes-sato/eds/eds-dbus/nossl.patch b/meta/recipes-sato/eds/eds-dbus/nossl.patch
>>> index 30568ff..86941d1 100644
>>> --- a/meta/recipes-sato/eds/eds-dbus/nossl.patch
>>> +++ b/meta/recipes-sato/eds/eds-dbus/nossl.patch
>>> @@ -1,52 +1,8 @@
>>> -Index: git/camel/Makefile.am
>>> -===================================================================
>>> ---- git.orig/camel/Makefile.am 2010-02-05 15:25:09.000000000 +0000
>>> -+++ git/camel/Makefile.am      2010-02-05 15:25:20.000000000 +0000
>>> -@@ -80,7 +80,6 @@
>>> -       camel-store-summary.c                   \
>>> -       camel-store.c                           \
>>> -       camel-tcp-stream-raw.c                  \
>>> --      camel-tcp-stream-ssl.c                  \
>>> -       camel-tcp-stream.c                      \
>>> -       camel-transport.c                       \
>>> -       camel-uid-cache.c                       \
>>> -@@ -133,7 +132,6 @@
>>> -       camel-store-summary.h                   \
>>> -       camel-store.h                           \
>>> -       camel-tcp-stream-raw.h                  \
>>> --      camel-tcp-stream-ssl.h                  \
>>> -       camel-tcp-stream.h                      \
>>> -       camel-transport.h                       \
>>> -       camel-uid-cache.h                       \
>>> -Index: git/camel/camel.h
>>> -===================================================================
>>> ---- git.orig/camel/camel.h     2010-02-05 15:26:30.000000000 +0000
>>> -+++ git/camel/camel.h  2010-02-05 15:26:52.000000000 +0000
>>> -@@ -122,7 +122,6 @@
>>> - #include<camel/camel-string-utils.h>
>>> - #include<camel/camel-tcp-stream.h>
>>> - #include<camel/camel-tcp-stream-raw.h>
>>> --#include<camel/camel-tcp-stream-ssl.h>
>>> - #include<camel/camel-text-index.h>
>>> - #include<camel/camel-transport.h>
>>> - #include<camel/camel-trie.h>
>>> -Index: git/camel/providers/imap/camel-imap-store.c
>>> -===================================================================
>>> ---- git.orig/camel/providers/imap/camel-imap-store.c   2010-02-05 15:28:19.000000000 +0000
>>> -+++ git/camel/providers/imap/camel-imap-store.c        2010-02-05 15:28:38.000000000 +0000
>>> -@@ -51,7 +51,6 @@
>>> - #include "camel/camel-stream.h"
>>> - #include "camel/camel-string-utils.h"
>>> - #include "camel/camel-tcp-stream-raw.h"
>>> --#include "camel/camel-tcp-stream-ssl.h"
>>> - #include "camel/camel-url.h"
>>> - #include "camel/camel-utf8.h"
>>> -
>>>    Index: git/configure.ac
>>>    ===================================================================
>>> ---- git.orig/configure.ac      2010-02-05 15:31:59.000000000 +0000
>>> -+++ git/configure.ac   2010-02-05 15:33:00.000000000 +0000
>>> -@@ -1272,7 +1272,8 @@
>>> +--- git.orig/configure.ac      2010-11-19 11:16:11.000000000 +0800
>>> ++++ git/configure.ac   2010-11-22 14:47:14.000000000 +0800
>>> +@@ -1240,7 +1240,8 @@
>>>     dnl We have fixed all our instances to use<libical/ical.h>. Until the .pc from
>>>     dnl libical is fixed, we have to work-around the buggy CFlags.
>>>     dnl *****
>>> @@ -58,11 +14,11 @@ Index: git/configure.ac
>>>           AC_SUBST(LIBICAL_EXTRA_LIBS)
>>>    Index: git/calendar/libecal/libecal.pc.in
>>>    ===================================================================
>>> ---- git.orig/calendar/libecal/libecal.pc.in    2010-02-05 15:39:41.000000000 +0000
>>> -+++ git/calendar/libecal/libecal.pc.in 2010-02-05 15:39:55.000000000 +0000
>>> +--- git.orig/calendar/libecal/libecal.pc.in    2010-11-19 11:16:11.000000000 +0800
>>> ++++ git/calendar/libecal/libecal.pc.in 2010-11-22 14:47:14.000000000 +0800
>>>    @@ -12,4 +12,4 @@
>>>     Version: @VERSION@
>>> - Requires: libical>= @LIBICAL_REQUIRED@ libedataserver-1.2 dbus-glib-1
>>> + Requires: libical>= @LIBICAL_REQUIRED@ libedataserver-1.2 gio-2.0
>>>     Libs: -L${libdir} -lecal-1.2
>>>    -Cflags: -I${privincludedir} @LIBICAL_EXTRA_CFLAGS@
>>>    +Cflags: -I${privincludedir}
>>> diff --git a/meta/recipes-sato/eds/eds-dbus/optional_imapx_provider.patch b/meta/recipes-sato/eds/eds-dbus/optional_imapx_provider.patch
>>> deleted file mode 100644
>>> index 128307a..0000000
>>> --- a/meta/recipes-sato/eds/eds-dbus/optional_imapx_provider.patch
>>> +++ /dev/null
>>> @@ -1,62 +0,0 @@
>>> -Index: git/camel/providers/Makefile.am
>>> -===================================================================
>>> ---- git.orig/camel/providers/Makefile.am       2010-07-06 18:49:34.000000000 +0800
>>> -+++ git/camel/providers/Makefile.am    2010-07-08 17:23:56.000000000 +0800
>>> -@@ -6,6 +6,10 @@
>>> - IMAP4_DIR=imap4
>>> - endif
>>> -
>>> -+if ENABLE_IMAPX
>>> -+IMAPX_DIR=imapx
>>> -+endif
>>> -+
>>> - if ENABLE_HULA
>>> - HULA_DIR=hula
>>> - endif
>>> -@@ -15,6 +19,6 @@
>>> - SENDMAIL_DIR=sendmail
>>> - endif
>>> -
>>> --SUBDIRS = pop3 $(SENDMAIL_DIR) smtp imap imapx $(IMAP4_DIR) $(NNTP_DIR) local groupwise $(HULA_DIR)
>>> -+SUBDIRS = pop3 $(SENDMAIL_DIR) smtp imap $(IMAPX_DIR) $(IMAP4_DIR) $(NNTP_DIR) local groupwise $(HULA_DIR)
>>> -
>>> - -include $(top_srcdir)/git.mk
>>> -Index: git/configure.ac
>>> -===================================================================
>>> ---- git.orig/configure.ac      2010-07-08 17:24:36.000000000 +0800
>>> -+++ git/configure.ac   2010-07-08 17:32:06.000000000 +0800
>>> -@@ -1002,6 +1002,26 @@
>>> - AM_CONDITIONAL(ENABLE_IMAP4, [test x$enable_imap4 = xyes])
>>> -
>>> - dnl ******************************
>>> -+dnl IMAPX code support.
>>> -+dnl ******************************
>>> -+AC_ARG_ENABLE(imapx,
>>> -+      AS_HELP_STRING([--enable-imapx=no/yes],
>>> -+      [Attempt to compile yet another, incomplete, very unsupported IMAPv4r1 implementation]),
>>> -+      [],[enable_imapx=no])
>>> -+
>>> -+if test "x$enable_imapx" = "xyes"; then
>>> -+      AC_DEFINE(ENABLE_IMAPX,1,[Really don't try this at home])
>>> -+      AC_PATH_PROG(GPERF, gperf)
>>> -+      if test -z "$GPERF" ; then
>>> -+      AC_MSG_ERROR([You need gperf to compile imapx provider])
>>> -+      fi
>>> -+      msg_imapx=yes
>>> -+else
>>> -+      msg_imapx=no
>>> -+fi
>>> -+AM_CONDITIONAL(ENABLE_IMAPX, [test x$enable_imapx = xyes])
>>> -+
>>> -+dnl ******************************
>>> - dnl Hula support
>>> - dnl ******************************
>>> - AC_ARG_ENABLE([hula],
>>> -@@ -1541,3 +1561,7 @@
>>> - if test "x$msg_hula" = "xyes"; then
>>> -       echo "Hula support:     $msg_hula"
>>> - fi
>>> -+
>>> -+if test "x$msg_imapx" = "xyes"; then
>>> -+      echo "IMAPX support:    $msg_imapx"
>>> -+fi
>>> diff --git a/meta/recipes-sato/eds/eds-dbus_git.bb b/meta/recipes-sato/eds/eds-dbus_git.bb
>>> index e5b7e15..8461787 100644
>>> --- a/meta/recipes-sato/eds/eds-dbus_git.bb
>>> +++ b/meta/recipes-sato/eds/eds-dbus_git.bb
>>> @@ -5,19 +5,19 @@ BUGTRACKER = "https://bugzilla.gnome.org/"
>>>    LICENSE = "LGPLv2&   LGPLv2+"
>>>    LIC_FILES_CHKSUM = "file://COPYING;md5=6a6e689d19255cf0557f3fe7d7068212 \
>>>                        file://camel/camel.h;endline=24;md5=b02175c88f821224746b347a89731a2b \
>>> -                    file://libedataserver/e-data-server-util.h;endline=23;md5=9df8127bd8cfdc5469e938fc710d1f40 \
>>> +                    file://libedataserver/e-data-server-util.h;endline=23;md5=3c81c81dfb211fb53e97f5c5ba7284a5 \
>>>                        file://calendar/libecal/e-cal.h;endline=24;md5=5d496b9b6fd2a4fdbbfc31ef9455c9d0"
>>>
>>> -DEPENDS = "intltool-native glib-2.0 gtk+ gconf dbus db gnome-common virtual/libiconv zlib libsoup-2.4 libglade libical gnome-keyring gperf-native"
>>> +DEPENDS = "intltool-native glib-2.0 gtk+ gconf dbus db gnome-common virtual/libiconv zlib libsoup-2.4 libglade libical libgdata gnome-keyring gperf-native nspr nss"
>>>
>>> -PV = "2.30+git${SRCPV}"
>>> -PR = "r1"
>>> +PV = "2.32+git${SRCPV}"
>>> +PR = "r0"
>>>
>>>    SRC_URI = "git://git.gnome.org/evolution-data-server;protocol=git \
>>>               file://oh-contact.patch;patch=1;pnum=0 \
>>>               file://nossl.patch;patch=1 \
>>> -           file://optional_imapx_provider.patch;patch=1 \
>>>               file://new-contact-fix.patch;patch=1 \
>>> +           file://compatible_api.patch;patch=1 \
>>>               file://iconv-detect.h"
>>>
>>>    S = "${WORKDIR}/git"
>>> @@ -40,9 +40,10 @@ do_configure_append () {
>>>            cp ${WORKDIR}/iconv-detect.h ${S}
>>>    }
>>>
>>> -EXTRA_OECONF = "--without-openldap --with-dbus --without-bug-buddy \
>>> -                --with-soup --with-libdb=${STAGING_DIR_HOST}${prefix} \
>>> -                --disable-smime --disable-ssl --disable-nntp --disable-gtk-doc --without-weather"
>>> +EXTRA_OECONF = "--without-openldap --with-libdb=${STAGING_DIR_HOST}${prefix} \
>>> +                --disable-smime --disable-nntp --disable-gtk-doc --without-weather \
>>> +                --enable-ssl --with-nspr-includes=${STAGING_INCDIR}/mozilla/nspr \
>>> +                --with-nss-includes=${STAGING_INCDIR}/mozilla/nss"
>>>
>>>    PACKAGES =+ "libcamel libcamel-dev libebook libebook-dev libecal libecal-dev \
>>>                 libedata-book libedata-book-dev libedata-cal libedata-cal-dev \
>>> --
>>> 1.7.0.4
>>>
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>>
>>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>>
>


