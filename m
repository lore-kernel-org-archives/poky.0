Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web10.204.1651772542309944616
 for <poky@lists.yoctoproject.org>;
 Thu, 05 May 2022 10:42:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=zadCGILd;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.52, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f52.google.com with SMTP id gh6so10157822ejb.0
        for <poky@lists.yoctoproject.org>; Thu, 05 May 2022 10:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=qIWLioVvbpRtrOBV9CmdEwHoIfsxyHemDTMtq3ffSII=;
        b=zadCGILd4sTjz/KF6LuH2P8JhHsgNlwofe7ZLhF92L6yBDIISFRpYvCWZKfN2AawI1
         2SXNa/jJREuPvC4SHxMZWqWojOj7E6L16eSsnvPnaKGTmNijHpkhMvtmF1DNX4uYxqCB
         YzoeEuUFsdAGcZ43SYabiSNr/aSHl/lRPnBAYww1aqsLHY6tOZcYXo7+kji/MdA+SWTQ
         2alOpz0TnwHmw/dS5AnKoXDLAa5aDbvt5lG+Y4xjftVHyDa9sTxvKJ2JmcS5AhiqfXES
         +ef7S4jTgn1ZkbQ5CY4rCjY3w03KpOGvBFULuCgMqVRC4gIEY1Pm7MGHF99Vv3oy2eL6
         D31w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=qIWLioVvbpRtrOBV9CmdEwHoIfsxyHemDTMtq3ffSII=;
        b=L5cZsT1ROa/aDptRwhRwU34BL6KvZwpjJKQ9RWWOMwj26NBlVK3wG9Udme9bjGvheW
         bGcKxbA/QjSdcd4l2enVhlw+1Zri/y463cLgHPjIqRCKD0wEC0tSdKjNabWXaBu+ftR3
         olT5TiBrzoWRGppSUh/jYWq8rdXDJ5mQOC634Qktbi7XcWlDb8Ypl6xanQvJdATCabL0
         EUqwF21Ju6qiU5ji/b2UPPeTxi9CENAXwfcesb5eXqjZJh95XYA9wPgpSVAnUwiypynP
         jFtSDd8Dlq9KdHc/nCcTJdxa4IdUSHp8VtK/fKlCthvtQAD4RXibxVtqsmXkk4bjkcIo
         /vWg==
X-Gm-Message-State: AOAM530RHGFj+BwQiO28j/C/phzu64gbzlIszP3z0eR+IyP+EOrrMgSG
	wubDszi97TqlC0NMQi0EBvEavqgfK8FqbqzvQe6FcmqRUXH1zx4hKqI=
X-Google-Smtp-Source: ABdhPJwpkiTxzr7Q8xZMeuYTdE835o8Puf6npWMwrz2hBfUKHxQOE+uVZlQeGs5mQZOuk8ziZIbtVGkB7l8zQ+Ycnqg=
X-Received: by 2002:a17:907:868e:b0:6f3:9ae7:6d6c with SMTP id
 qa14-20020a170907868e00b006f39ae76d6cmr27032036ejc.456.1651772540582; Thu, 05
 May 2022 10:42:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220505134144.32691-1-pawan.badganchi@kpit.com> <16EC4370F70ADEAF.32238@lists.yoctoproject.org>
In-Reply-To: <16EC4370F70ADEAF.32238@lists.yoctoproject.org>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Thu, 5 May 2022 07:42:08 -1000
Message-ID: <CAOSpxdb8X7AePsgkoczwNR5CB4YZODxvDbbcvmBhZEugnkXA4A@mail.gmail.com>
Subject: Re: [poky][dunfell][PATCH] libinput: Add fix for CVE-2022-1215
To: steve@sakoman.com
Cc: pawan.badganchi@kpit.com, poky@lists.yoctoproject.org, 
	pawan.badganchi@gmail.com, akash.hadke@kpit.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 5, 2022 at 6:48 AM Steve Sakoman via
lists.yoctoproject.org <steve=3Dsakoman.com@lists.yoctoproject.org>
wrote:
>
> Another issue to keep in mind for future patches: this was sent with
> Content-Type: text/plain; charset=3Dyes
>
> I suspect you answered yes when git send-mail was asking about what
> charset to use! I've corrected this by hand.

As with your other CVE submission, the CVE patches for libinput also
don't apply:

ERROR: libinput-1.15.2-r0 do_patch: Applying patch
'CVE-2022-1215.patch' on target directory
'/home/steve/builds/poky-contrib/build/tmp/work/core2-64-poky-linux/libinpu=
t/1.15.2-r0/libinput-1.15.2'
Command Error: 'quilt --quiltrc
/home/steve/builds/poky-contrib/build/tmp/work/core2-64-poky-linux/libinput=
/1.15.2-r0/recipe-sysroot-native/etc/quiltrc
push' exited with 0  Output:
Applying patch CVE-2022-1215.patch
patching file meson.build
Hunk #1 FAILED at 787.
1 out of 1 hunk FAILED -- rejects in file meson.build
patching file src/evdev.c
Hunk #1 FAILED at 2356.
Hunk #2 FAILED at 2382.
Hunk #3 FAILED at 2411.
Hunk #4 FAILED at 2238.
4 out of 4 hunks FAILED -- rejects in file src/evdev.c
patching file src/evdev.h
Hunk #1 FAILED at 169.
Hunk #2 FAILED at 786.
Hunk #3 FAILED at 824.
3 out of 3 hunks FAILED -- rejects in file src/evdev.h
patching file src/util-strings.h
Hunk #2 succeeded at 313 with fuzz 2.
patching file test/litest-device-format-string.c
patching file test/litest.h
Hunk #1 FAILED at 303.
1 out of 1 hunk FAILED -- rejects in file test/litest.h
patching file test/test-utils.c
Hunk #1 succeeded at 1033 with fuzz 1 (offset -234 lines).
Hunk #2 FAILED at 1163.
1 out of 2 hunks FAILED -- rejects in file test/test-utils.c
Patch CVE-2022-1215.patch does not apply (enforce with -f)

Steve
> On Thu, May 5, 2022 at 3:42 AM Pawan via lists.yoctoproject.org
> <pawan.badganchi=3Dkpit.com@lists.yoctoproject.org> wrote:
> >
> > From: Pawan Badganchi <pawan.badganchi@kpit.com>
> >
> > Add below patch to fix CVE-2022-1215
> >
> > CVE-2022-1215.patch
> > Link: https://gitlab.freedesktop.org/libinput/libinput/-/commit/2a8b8fd=
e90d63d48ce09ddae44142674bbca1c28
> >
> > Signed-off-by: Pawan Badganchi <Pawan.Badganchi@kpit.com>
> > ---
> >  .../wayland/libinput/CVE-2022-1215.patch      | 361 ++++++++++++++++++
> >  .../wayland/libinput_1.15.2.bb                |   1 +
> >  2 files changed, 362 insertions(+)
> >  create mode 100644 meta/recipes-graphics/wayland/libinput/CVE-2022-121=
5.patch
> >
> > diff --git a/meta/recipes-graphics/wayland/libinput/CVE-2022-1215.patch=
 b/meta/recipes-graphics/wayland/libinput/CVE-2022-1215.patch
> > new file mode 100644
> > index 0000000000..5f8f7a9894
> > --- /dev/null
> > +++ b/meta/recipes-graphics/wayland/libinput/CVE-2022-1215.patch
> > @@ -0,0 +1,361 @@
> > +From 2a8b8fde90d63d48ce09ddae44142674bbca1c28 Mon Sep 17 00:00:00 2001
> > +From: Peter Hutterer <peter.hutterer@who-t.net>
> > +Date: Wed, 30 Mar 2022 09:25:22 +1000
> > +Subject: [PATCH] evdev: strip the device name of format directives
> > +MIME-Version: 1.0
> > +Content-Type: text/plain; charset=3DUTF-8
> > +Content-Transfer-Encoding: 8bit
> > +
> > +This fixes a format string vulnerabilty.
> > +
> > +evdev_log_message() composes a format string consisting of a fixed
> > +prefix (including the rendered device name) and the passed-in format
> > +buffer. This format string is then passed with the arguments to the
> > +actual log handler, which usually and eventually ends up being printf.
> > +
> > +If the device name contains a printf-style format directive, these end=
ed
> > +up in the format string and thus get interpreted correctly, e.g. for a
> > +device "Foo%sBar" the log message vs printf invocation ends up being:
> > +  evdev_log_message(device, "some message %s", "some argument");
> > +  printf("event9 - Foo%sBar: some message %s", "some argument");
> > +
> > +This can enable an attacker to execute malicious code with the
> > +privileges of the process using libinput.
> > +
> > +To exploit this, an attacker needs to be able to create a kernel devic=
e
> > +with a malicious name, e.g. through /dev/uinput or a Bluetooth device.
> > +
> > +To fix this, convert any potential format directives in the device nam=
e
> > +by duplicating percentages.
> > +
> > +Pre-rendering the device to avoid the issue altogether would be nicer
> > +but the current log level hooks do not easily allow for this. The devi=
ce
> > +name is the only user-controlled part of the format string.
> > +
> > +A second potential issue is the sysname of the device which is also
> > +sanitized.
> > +
> > +This issue was found by Albin Eldst=C3=A5l-Ahrens and Benjamin Svensso=
n from
> > +Assured AB, and independently by Lukas Lamster.
> > +
> > +Fixes #752
> > +
> > +Signed-off-by: Peter Hutterer <peter.hutterer@who-t.net>
> > +(cherry picked from commit a423d7d3269dc32a87384f79e29bb5ac021c83d1)
> > +
> > +CVE: CVE-2022-1215
> > +Upstream Status: Backport [https://gitlab.freedesktop.org/libinput/lib=
input/-/commit/2a8b8fde90d63d48ce09ddae44142674bbca1c28]
> > +Signed-off-by: Pawan Badganchi <Pawan.Badganchi@kpit.com>
> > +
> > +---
> > + meson.build                        |  1 +
> > + src/evdev.c                        | 31 +++++++++++------
> > + src/evdev.h                        |  6 ++--
> > + src/util-strings.h                 | 30 ++++++++++++++++
> > + test/litest-device-format-string.c | 56 +++++++++++++++++++++++++++++=
+
> > + test/litest.h                      |  1 +
> > + test/test-utils.c                  | 26 ++++++++++++++
> > + 7 files changed, 139 insertions(+), 12 deletions(-)
> > + create mode 100644 test/litest-device-format-string.c
> > +
> > +diff --git a/meson.build b/meson.build
> > +index 90f528e6..1f6159e7 100644
> > +--- a/meson.build
> > ++++ b/meson.build
> > +@@ -787,6 +787,7 @@
> > +               'test/litest-device-dell-canvas-totem-touch.c',
> > +               'test/litest-device-elantech-touchpad.c',
> > +               'test/litest-device-elan-tablet.c',
> > ++              'test/litest-device-format-string.c',
> > +               'test/litest-device-generic-singletouch.c',
> > +               'test/litest-device-gpio-keys.c',
> > +               'test/litest-device-huion-pentablet.c',
> > +diff --git a/src/evdev.c b/src/evdev.c
> > +index 6d81f58f..d1c35c07 100644
> > +--- a/src/evdev.c
> > ++++ b/src/evdev.c
> > +@@ -2356,19 +2356,19 @@ evdev_device_create(struct libinput_seat *seat=
,
> > +       struct libinput *libinput =3D seat->libinput;
> > +       struct evdev_device *device =3D NULL;
> > +       int rc;
> > +-      int fd;
> > ++      int fd =3D -1;
> > +       int unhandled_device =3D 0;
> > +       const char *devnode =3D udev_device_get_devnode(udev_device);
> > +-      const char *sysname =3D udev_device_get_sysname(udev_device);
> > ++      char *sysname =3D str_sanitize(udev_device_get_sysname(udev_dev=
ice));
> > +
> > +       if (!devnode) {
> > +               log_info(libinput, "%s: no device node associated\n", s=
ysname);
> > +-              return NULL;
> > ++              goto err;
> > +       }
> > +
> > +       if (udev_device_should_be_ignored(udev_device)) {
> > +               log_debug(libinput, "%s: device is ignored\n", sysname)=
;
> > +-              return NULL;
> > ++              goto err;
> > +       }
> > +
> > +       /* Use non-blocking mode so that we can loop on read on
> > +@@ -2382,13 +2382,15 @@ evdev_device_create(struct libinput_seat *seat=
,
> > +                        sysname,
> > +                        devnode,
> > +                        strerror(-fd));
> > +-              return NULL;
> > ++              goto err;
> > +       }
> > +
> > +       if (!evdev_device_have_same_syspath(udev_device, fd))
> > +               goto err;
> > +
> > +       device =3D zalloc(sizeof *device);
> > ++      device->sysname =3D sysname;
> > ++      sysname =3D NULL;
> > +
> > +       libinput_device_init(&device->base, seat);
> > +       libinput_seat_ref(seat);
> > +@@ -2411,6 +2413,9 @@ evdev_device_create(struct libinput_seat *seat,
> > +       device->dispatch =3D NULL;
> > +       device->fd =3D fd;
> > +       device->devname =3D libevdev_get_name(device->evdev);
> > ++      /* the log_prefix_name is used as part of a printf format strin=
g and
> > ++       * must not contain % directives, see evdev_log_msg */
> > ++      device->log_prefix_name =3D str_sanitize(device->devname);
> > +       device->scroll.threshold =3D 5.0; /* Default may be overridden =
*/
> > +       device->scroll.direction_lock_threshold =3D 5.0; /* Default may=
 be overridden */
> > +       device->scroll.direction =3D 0;
> > +@@ -2238,9 +2238,14 @@
> > +       return device;
> > +
> > + err:
> > +-      close_restricted(libinput, fd);
> > +-      if (device)
> > +-              evdev_device_destroy(device);
> > ++      if (fd >=3D 0) {
> > ++              close_restricted(libinput, fd);
> > ++              if (device) {
> > ++                      unhandled_device =3D device->seat_caps =3D=3D 0=
;
> > ++                      evdev_device_destroy(device);
> > ++              }
> > ++            }
> > ++        free(sysname);
> > +
> > +       return unhandled_device ? EVDEV_UNHANDLED_DEVICE :  NULL;
> > + }
> > +
> > +@@ -2469,7 +2478,7 @@ evdev_device_get_output(struct evdev_device *dev=
ice)
> > + const char *
> > + evdev_device_get_sysname(struct evdev_device *device)
> > + {
> > +-      return udev_device_get_sysname(device->udev_device);
> > ++      return device->sysname;
> > + }
> > +
> > + const char *
> > +@@ -3066,6 +3075,8 @@ evdev_device_destroy(struct evdev_device *device=
)
> > +       if (device->base.group)
> > +               libinput_device_group_unref(device->base.group);
> > +
> > ++      free(device->log_prefix_name);
> > ++      free(device->sysname);
> > +       free(device->output_name);
> > +       filter_destroy(device->pointer.filter);
> > +       libinput_timer_destroy(&device->scroll.timer);
> > +diff --git a/src/evdev.h b/src/evdev.h
> > +index c7d130f8..980c5943 100644
> > +--- a/src/evdev.h
> > ++++ b/src/evdev.h
> > +@@ -169,6 +169,8 @@ struct evdev_device {
> > +       struct udev_device *udev_device;
> > +       char *output_name;
> > +       const char *devname;
> > ++      char *log_prefix_name;
> > ++      char *sysname;
> > +       bool was_removed;
> > +       int fd;
> > +       enum evdev_device_seat_capability seat_caps;
> > +@@ -786,7 +788,7 @@ evdev_log_msg(struct evdev_device *device,
> > +                sizeof(buf),
> > +                "%-7s - %s%s%s",
> > +                evdev_device_get_sysname(device),
> > +-               (priority > LIBINPUT_LOG_PRIORITY_DEBUG) ?  device->de=
vname : "",
> > ++               (priority > LIBINPUT_LOG_PRIORITY_DEBUG) ?  device->lo=
g_prefix_name : "",
> > +                (priority > LIBINPUT_LOG_PRIORITY_DEBUG) ?  ": " : "",
> > +                format);
> > +
> > +@@ -824,7 +826,7 @@ evdev_log_msg_ratelimit(struct evdev_device *devic=
e,
> > +                sizeof(buf),
> > +                "%-7s - %s%s%s",
> > +                evdev_device_get_sysname(device),
> > +-               (priority > LIBINPUT_LOG_PRIORITY_DEBUG) ?  device->de=
vname : "",
> > ++               (priority > LIBINPUT_LOG_PRIORITY_DEBUG) ?  device->lo=
g_prefix_name : "",
> > +                (priority > LIBINPUT_LOG_PRIORITY_DEBUG) ?  ": " : "",
> > +                format);
> > +
> > +diff --git a/src/util-strings.h b/src/util-strings.h
> > +index 2a15fab3..d5a84146 100644
> > +--- a/src/util-strings.h
> > ++++ b/src/util-strings.h
> > +@@ -42,6 +42,7 @@
> > + #ifdef HAVE_XLOCALE_H
> > + #include <xlocale.h>
> > + #endif
> > ++#include "util-macros.h"
> > +
> > + #define streq(s1, s2) (strcmp((s1), (s2)) =3D=3D 0)
> > + #define strneq(s1, s2, n) (strncmp((s1), (s2), (n)) =3D=3D 0)
> > +@@ -312,3 +313,31 @@
> > +       free(result);
> > +       return -1;
> > + }
> > ++
> > ++/**
> > ++ * Return a copy of str with all % converted to %% to make the string
> > ++ * acceptable as printf format.
> > ++ */
> > ++static inline char *
> > ++str_sanitize(const char *str)
> > ++{
> > ++      if (!str)
> > ++              return NULL;
> > ++
> > ++      if (!strchr(str, '%'))
> > ++              return strdup(str);
> > ++
> > ++      size_t slen =3D min(strlen(str), 512);
> > ++      char *sanitized =3D zalloc(2 * slen + 1);
> > ++      const char *src =3D str;
> > ++      char *dst =3D sanitized;
> > ++
> > ++      for (size_t i =3D 0; i < slen; i++) {
> > ++              if (*src =3D=3D '%')
> > ++                      *dst++ =3D '%';
> > ++              *dst++ =3D *src++;
> > ++      }
> > ++      *dst =3D '\0';
> > ++
> > ++      return sanitized;
> > ++}
> > +diff --git a/test/litest-device-format-string.c b/test/litest-device-f=
ormat-string.c
> > +new file mode 100644
> > +index 00000000..aed15db4
> > +--- /dev/null
> > ++++ b/test/litest-device-format-string.c
> > +@@ -0,0 +1,56 @@
> > ++
> > ++/*
> > ++ * Copyright =C2=A9 2013 Red Hat, Inc.
> > ++ *
> > ++ * Permission is hereby granted, free of charge, to any person obtain=
ing a
> > ++ * copy of this software and associated documentation files (the "Sof=
tware"),
> > ++ * to deal in the Software without restriction, including without lim=
itation
> > ++ * the rights to use, copy, modify, merge, publish, distribute, subli=
cense,
> > ++ * and/or sell copies of the Software, and to permit persons to whom =
the
> > ++ * Software is furnished to do so, subject to the following condition=
s:
> > ++ *
> > ++ * The above copyright notice and this permission notice (including t=
he next
> > ++ * paragraph) shall be included in all copies or substantial portions=
 of the
> > ++ * Software.
> > ++ *
> > ++ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EX=
PRESS OR
> > ++ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTAB=
ILITY,
> > ++ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT=
 SHALL
> > ++ * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES =
OR OTHER
> > ++ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, AR=
ISING
> > ++ * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHE=
R
> > ++ * DEALINGS IN THE SOFTWARE.
> > ++ */
> > ++
> > ++#include "config.h"
> > ++
> > ++#include "litest.h"
> > ++#include "litest-int.h"
> > ++
> > ++static struct input_id input_id =3D {
> > ++      .bustype =3D 0x3,
> > ++      .vendor =3D 0x0123,
> > ++      .product =3D 0x0456,
> > ++};
> > ++
> > ++static int events[] =3D {
> > ++      EV_KEY, BTN_LEFT,
> > ++      EV_KEY, BTN_RIGHT,
> > ++      EV_KEY, BTN_MIDDLE,
> > ++      EV_REL, REL_X,
> > ++      EV_REL, REL_Y,
> > ++      EV_REL, REL_WHEEL,
> > ++      EV_REL, REL_WHEEL_HI_RES,
> > ++      -1 , -1,
> > ++};
> > ++
> > ++TEST_DEVICE("mouse-format-string",
> > ++      .type =3D LITEST_MOUSE_FORMAT_STRING,
> > ++      .features =3D LITEST_RELATIVE | LITEST_BUTTON | LITEST_WHEEL,
> > ++      .interface =3D NULL,
> > ++
> > ++      .name =3D "Evil %s %d %x Mouse %p %",
> > ++      .id =3D &input_id,
> > ++      .absinfo =3D NULL,
> > ++      .events =3D events,
> > ++)
> > +diff --git a/test/litest.h b/test/litest.h
> > +index 4982e516..1b1daa90 100644
> > +--- a/test/litest.h
> > ++++ b/test/litest.h
> > +@@ -303,6 +303,7 @@
> > +       LITEST_ALPS_3FG,
> > +       LITEST_ELAN_TABLET,
> > +       LITEST_ABSINFO_OVERRIDE,
> > ++        LITEST_MOUSE_FORMAT_STRING,
> > + };
> > +
> > + #define LITEST_DEVICELESS     -2
> > +diff --git a/test/test-utils.c b/test/test-utils.c
> > +index 989adecd..e80754be 100644
> > +--- a/test/test-utils.c
> > ++++ b/test/test-utils.c
> > +@@ -1267,6 +1267,31 @@ START_TEST(strstartswith_test)
> > + }
> > + END_TEST
> > +
> > ++START_TEST(strsanitize_test)
> > ++{
> > ++      struct strsanitize_test {
> > ++              const char *string;
> > ++              const char *expected;
> > ++      } tests[] =3D {
> > ++              { "foobar", "foobar" },
> > ++              { "", "" },
> > ++              { "%", "%%" },
> > ++              { "%%%%", "%%%%%%%%" },
> > ++              { "x %s", "x %%s" },
> > ++              { "x %", "x %%" },
> > ++              { "%sx", "%%sx" },
> > ++              { "%s%s", "%%s%%s" },
> > ++              { NULL, NULL },
> > ++      };
> > ++
> > ++      for (struct strsanitize_test *t =3D tests; t->string; t++) {
> > ++              char *sanitized =3D str_sanitize(t->string);
> > ++              ck_assert_str_eq(sanitized, t->expected);
> > ++              free(sanitized);
> > ++      }
> > ++}
> > ++END_TEST
> > ++
> > + START_TEST(list_test_insert)
> > + {
> > +       struct list_test {
> > +@@ -1138,6 +1138,7 @@
> > +       tcase_add_test(tc, strsplit_test);
> > +       tcase_add_test(tc, kvsplit_double_test);
> > +       tcase_add_test(tc, strjoin_test);
> > ++      tcase_add_test(tc, strsanitize_test);
> > +       tcase_add_test(tc, time_conversion);
> > +
> > +       tcase_add_test(tc, list_test_insert);
> > +
> > +--
> > +GitLab
> > +
> > diff --git a/meta/recipes-graphics/wayland/libinput_1.15.2.bb b/meta/re=
cipes-graphics/wayland/libinput_1.15.2.bb
> > index 810532774e..d7927d132a 100644
> > --- a/meta/recipes-graphics/wayland/libinput_1.15.2.bb
> > +++ b/meta/recipes-graphics/wayland/libinput_1.15.2.bb
> > @@ -14,6 +14,7 @@ DEPENDS =3D "libevdev udev mtdev"
> >
> >  SRC_URI =3D "http://www.freedesktop.org/software/${BPN}/${BP}.tar.xz \
> >             file://determinism.patch \
> > +           file://CVE-2022-1215.patch \
> >             "
> >  SRC_URI[md5sum] =3D "eb6bd2907ad33d53954d70dfb881a643"
> >  SRC_URI[sha256sum] =3D "971c3fbfb624f95c911adeb2803c372e4e3647d1b98f27=
8f660051f834597747"
> > --
> > 2.17.1
> >
> > This message contains information that may be privileged or confidentia=
l and is the property of the KPIT Technologies Ltd. It is intended only for=
 the person to whom it is addressed. If you are not the intended recipient,=
 you are not authorized to read, print, retain copy, disseminate, distribut=
e, or use this message or any part thereof. If you receive this message in =
error, please notify the sender immediately and delete all copies of this m=
essage. KPIT Technologies Ltd. does not accept any liability for virus infe=
cted mails.
> >
> >
> >
>
>=20
>
