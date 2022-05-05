Received: from IND01-MA1-obe.outbound.protection.outlook.com (IND01-MA1-obe.outbound.protection.outlook.com [40.107.138.83])
 by mx.groups.io with SMTP id smtpd.web08.11114.1651758130216526607
 for <poky@lists.yoctoproject.org>;
 Thu, 05 May 2022 06:42:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kpit.com header.s=selector1 header.b=NzMX+SLQ;
 spf=pass (domain: kpit.com, ip: 40.107.138.83, mailfrom: pawan.badganchi@kpit.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LRtfYPI9WEiOcagYIEOXK16HnpZDFBV1GooSO9dq0OdRUUaobMmNAmGxrtyx0y0leQR+aHhMbOK1ieClUe/MIfKltnNuG+Vf2Vsyo4oq0bYSdzFns1BOAN7uPfV+Xm2Ihjdp31UYTukIzg4BlsgEKVq+8JufXSu45VJKWGWsWQH1G9SBBSYhaEH+7UReD2tBEbdqh1TKYP/yLxRjevpkivDh5BWtl0FhOz/EXCpc0j0xf5LGh+XNQqzBtxA8vZNBZVoTBgmOJBZ1A9ew9Wa5Eb9dU/Y0EpQVpsWbCq/LN6+aU1WogkmytSzY0Zp6tSkGQB1mvKaZjz6aveCRISQeAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0avsyv8EmLwP8gSSZhLj90Jc+9oUhhYqI3f8xq03sPk=;
 b=m4yRLQVZzilz8aNTQZostwqWbnkIfNAw7o7z02+XGCvj1LhBrwmsGLgX4vCkHmnIKzpfZqQ+LkehPM13/pQVuOAq+GM8PytbXXvf01JsMv85opOHg0zVRS4nPo/+EoTIkg2VmOYe6Zy7uv9vKV0ceHkTwFIlsQBHmLZFxwstfgN1qoAFN75mz3OYEBCqoGgZOICmvVFHjuwSCAs5MFGRO2nMv6DRowIkIMUeVYXLTJ9skZ+DC9/kDCL2LDS79D8bjwfjqGfO74Kq2CCR60tztHqJ4ntCbQzIXQ6hEzfGPMTpnZkfEBkK8h0Xf3i0BVliV84HRuxc1CrYy2qqBf0WRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kpit.com; dmarc=pass action=none header.from=kpit.com;
 dkim=pass header.d=kpit.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0avsyv8EmLwP8gSSZhLj90Jc+9oUhhYqI3f8xq03sPk=;
 b=NzMX+SLQioZVIE0E+ZBAdZQntmsQyglm/jJw6rC4OaCqpL4kJ8GhtNuLXpZtBp0xwnUQog76cxYELqPcEGvTLJ2JcASvxis3B2TxqFkiFM/ssEfgbGEYhAepxjmg5dzTvMydG/Q4jbHbgBRDjI7IPrC1GqD5JN3XUaZ9hhIiohQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kpit.com;
Received: from MA1PR0101MB1462.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:28::11) by MAZPR01MB7071.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:55::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.14; Thu, 5 May
 2022 13:42:01 +0000
Received: from MA1PR0101MB1462.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::6c6a:548b:35fa:55e4]) by MA1PR0101MB1462.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::6c6a:548b:35fa:55e4%4]) with mapi id 15.20.5206.013; Thu, 5 May 2022
 13:42:01 +0000
From: "Pawan" <pawan.badganchi@kpit.com>
To: poky@lists.yoctoproject.org,
	pawan.badganchi@gmail.com
Cc: akash.hadke@kpit.com,
	Pawan Badganchi <pawan.badganchi@kpit.com>,
	Pawan Badganchi <Pawan.Badganchi@kpit.com>
Subject: [poky][dunfell][PATCH] libinput: Add fix for CVE-2022-1215
Date: Thu,  5 May 2022 19:11:44 +0530
Message-Id: <20220505134144.32691-1-pawan.badganchi@kpit.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: PN2PR01CA0163.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::18) To MA1PR0101MB1462.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:28::11)
Return-Path: Pawan.Badganchi@kpit.com
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0b0f82f8-4bbb-49fd-2b30-08da2e9d0809
X-MS-TrafficTypeDiagnostic: MAZPR01MB7071:EE_
X-Microsoft-Antispam-PRVS: 
	<MAZPR01MB7071D895284F4A66A458C81B99C29@MAZPR01MB7071.INDPRD01.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+g2bmnl3F9XOf+6lthIXSm0SRtfV+o1QVO1rriNzFiMVh/4EDmt+ZmV3rcfd8e01gRfIXYCNMFYIv/HDsO8lpL/NetJcTPXT3nkRrLm8lO+QZ9DSpFUYov2NUUBAua8H/Mlua2o4oLtVi1nH2yYiFUBrQOsZSL2KSGdk2ISIZcHplcesPyUDkaPgYnr5yfPQHeu/OHh8YLzPtdomOA8CEibQHswLw+BSM+a79McTY9MIa1Rqxbk6QPibI8zvv2Dv33/I4tCNoGMsowBGfgO9rYlPSjpeu05rfeiahBFLwByTLXAQpy7NoVzjoEHOiFIN2rD7o33AE+FhT092uTiEcf5mUw0Lk2rVkY/F07JYCWmRGjBbDLvvH02CKKonElw9uUoRCABmovIef6ZcuIYvvLq+Ad2exwryael5m8fbF0EGBY1NZy2IXSZ73SkCIILyVf37NY/QJCk0JPkKKwB7axexbRHGEFmAlP/o7HWhkU5VCYov6roj+aYCz6NiICRUTTtTLH+cFu9UfcvSOFZkLUVk7ZY/jIQuaNmkHIL62Sw5O7umCxOjp2wGBLSA7MdhKfoCCZcklkRI7tSv/VkoZupRjJwxTovrr+ot/xhIAuyctPTKPj5ocqj9mJqM/CzHpvmGizJNCzmxzDFre3qWSg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MA1PR0101MB1462.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(2616005)(6506007)(107886003)(6666004)(52116002)(2906002)(1076003)(6512007)(86362001)(5660300002)(66574015)(83380400001)(30864003)(8936002)(186003)(6486002)(966005)(316002)(38100700002)(508600001)(54906003)(36756003)(8676002)(4326008)(66476007)(66556008)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?cOz6ibU/rwDQ/pAmuu2pgKcpY8brSDEdO0ZFTNoXEVQM0YrN29EmquCfAU5O?=
 =?us-ascii?Q?wdw2cCNSpG4Y3l5+thwzWxKbwV7crQLyDQb0K1pdfYNZ+sk37wbmdjsZku2r?=
 =?us-ascii?Q?jgfI5TShcNikRa8Z/VBAEJ0LFaOSUTAfMyGbI8Faj0T3hoSJ3N1+4SydlEuP?=
 =?us-ascii?Q?uIdQc/A7ClLqrTPevYYGR8m9dMhebhlvIjur3VZ3pwGwixo/3/bWj2BDbYne?=
 =?us-ascii?Q?2VwqyvMwNEb8nVpSttzJs7IKJ9mJGrlpR0jqlIVoupJ7wklBsfvQyY1kHF4u?=
 =?us-ascii?Q?vUOMNRK9LVhLuDmYvldEuBIOY+ZYjbWC45ns142R8WfAuLtlKRwd8obHxJ3v?=
 =?us-ascii?Q?t7U0Lmgc2LUk+i/Fc4vQhrIyDvKMkk6qV6PZ+I4AslF8BRghqNvK5bQecrxr?=
 =?us-ascii?Q?4xGUS1YyTW+aoUoo0VN8NGm6tPG3P/wfb0dEKGGvWmMPgGlejp0t979Mh3zT?=
 =?us-ascii?Q?nThtMmJZctBozZxXTvU0FAcS1C0JF/vyDbCshj7l4OxhT1GM4qfZ/ZG+YV3c?=
 =?us-ascii?Q?hsW7Ov/N9F+S9VEVigLBYJBwXa8lkAtXQjQpq8UpCR5ydkFLMSnR2jnXuZou?=
 =?us-ascii?Q?tv5Vpll/C73y5SVmgqmwKxwPZfO4dayAupPHjSptGo0s1Wtqvl6kvu8tgs17?=
 =?us-ascii?Q?2xEJe/N2r7Cvm9RLd0u77Lg9lPdWpiLFNEq9599aYa6WSwnDT/OrkNHM++Mj?=
 =?us-ascii?Q?gJUEG09Su5AE+oKjBrVvkGGGc/WyXCm2sjtqAM8aS+ieSCz2Xb+D7w3WDFv0?=
 =?us-ascii?Q?oNtXiiNRGZWZ9iowNshyyRuzarhVdZvrFyhwAZYaxYA/akLgkdn/DpRoZBsh?=
 =?us-ascii?Q?P62tXOqtOdCRx0k9O/Eh13am8hWv8CMBjJfr6dYkP7qH0Iom2wkQW7V/+4PE?=
 =?us-ascii?Q?gUAYxGLxLZUG9I/bJlK0t+z+/VWO78h7WBzaRH+YY2GKScqt3yUYi5yh99sv?=
 =?us-ascii?Q?jOvtQQWkmwSKBnMnquEwOawCCELRMGCTCPGlIOSXkRx9T40Nfl9PglVgVzcO?=
 =?us-ascii?Q?PrGuCP3olHZScnTcvJrad19KIz0zJfdJySexx5hINM+HucxT1kGjUT7l/9HC?=
 =?us-ascii?Q?7U6gaFQsLMf7adUXQRFOsgFFXoBQl6SRYgVE6ypc0ieHXcvKM4FKbKxaTeRg?=
 =?us-ascii?Q?5dByiz+DgeEtjfVu/IeAAXuhnfmebhoVvEep733Co6aVAdIY92Dhyxu4TUOk?=
 =?us-ascii?Q?bYAbt4y0jVi2NW59r3TM6bglyp8i21vmabFp0pkJCBqC0UsxtSKhuw6x/w90?=
 =?us-ascii?Q?9bPimJ50tCNzfDjLtcN+NzDAInvGE7iMZwSgcbK47vuzd/WAN0m9L1PkNkNR?=
 =?us-ascii?Q?amPs0ZHqwspyQ8tO+qBWYkbogLzrmFNWt32iFIQb/bQOTW29fuWRANeQJou/?=
 =?us-ascii?Q?Ycfu4eJMzF6PWwespoZl7hRBpc//n09ZbRtP0hVNkIuZJjNusQfEqBqE48z3?=
 =?us-ascii?Q?SbTOsFLlit72tZWuSNjjlgrQ/HA75ueemsfL72m7hfPcf0/ZLJROF3RczFnu?=
 =?us-ascii?Q?aIW1CXNglFB6OmHYjOtXJivkYv5Xu8NXsQRqdQ58gc1bbkudtGHFN6NThkyg?=
 =?us-ascii?Q?wjXmzHftAJKJ1aT0O02hpfqUW8YQU8qvYCbkmQJ+iNkrdbEueuEILV5siuw8?=
 =?us-ascii?Q?AhnpwTOFJZ//jikC7NQHzfH5zSGW91V24jDkMpwHzPqmgPW5q/lZeJefSHKB?=
 =?us-ascii?Q?OkCNrBVWe4m6Lh0DywwZXl/e9pjkJxdDh+a2yjjiVJJ8RKH+ZW9mIVji/U2L?=
 =?us-ascii?Q?NXAlpIneMXmtXyfoRRbfFIRoOttSKpho1tFFZ9mSVbajHldMsiQ1rQ4oQheZ?=
X-MS-Exchange-AntiSpam-MessageData-1: VGnr33L2UvXS0g==
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b0f82f8-4bbb-49fd-2b30-08da2e9d0809
X-MS-Exchange-CrossTenant-AuthSource: MA1PR0101MB1462.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2022 13:42:00.9970
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bEvGGpDrZXDE3bXGGWaSaA0zJw9MaFE9i/A6QCxyFvkX7fxzRjtckgXiAj9MQ7LlcRd0sQF6J0epDdEBQlkpzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAZPR01MB7071
Content-Type: text/plain; charset=yes
Content-Transfer-Encoding: quoted-printable

From: Pawan Badganchi <pawan.badganchi@kpit.com>

Add below patch to fix CVE-2022-1215

CVE-2022-1215.patch
Link: https://gitlab.freedesktop.org/libinput/libinput/-/commit/2a8b8fde90d=
63d48ce09ddae44142674bbca1c28

Signed-off-by: Pawan Badganchi <Pawan.Badganchi@kpit.com>
---
 .../wayland/libinput/CVE-2022-1215.patch      | 361 ++++++++++++++++++
 .../wayland/libinput_1.15.2.bb                |   1 +
 2 files changed, 362 insertions(+)
 create mode 100644 meta/recipes-graphics/wayland/libinput/CVE-2022-1215.pa=
tch

diff --git a/meta/recipes-graphics/wayland/libinput/CVE-2022-1215.patch b/m=
eta/recipes-graphics/wayland/libinput/CVE-2022-1215.patch
new file mode 100644
index 0000000000..5f8f7a9894
--- /dev/null
+++ b/meta/recipes-graphics/wayland/libinput/CVE-2022-1215.patch
@@ -0,0 +1,361 @@
+From 2a8b8fde90d63d48ce09ddae44142674bbca1c28 Mon Sep 17 00:00:00 2001
+From: Peter Hutterer <peter.hutterer@who-t.net>
+Date: Wed, 30 Mar 2022 09:25:22 +1000
+Subject: [PATCH] evdev: strip the device name of format directives
+MIME-Version: 1.0
+Content-Type: text/plain; charset=3DUTF-8
+Content-Transfer-Encoding: 8bit
+
+This fixes a format string vulnerabilty.
+
+evdev_log_message() composes a format string consisting of a fixed
+prefix (including the rendered device name) and the passed-in format
+buffer. This format string is then passed with the arguments to the
+actual log handler, which usually and eventually ends up being printf.
+
+If the device name contains a printf-style format directive, these ended
+up in the format string and thus get interpreted correctly, e.g. for a
+device "Foo%sBar" the log message vs printf invocation ends up being:
+  evdev_log_message(device, "some message %s", "some argument");
+  printf("event9 - Foo%sBar: some message %s", "some argument");
+
+This can enable an attacker to execute malicious code with the
+privileges of the process using libinput.
+
+To exploit this, an attacker needs to be able to create a kernel device
+with a malicious name, e.g. through /dev/uinput or a Bluetooth device.
+
+To fix this, convert any potential format directives in the device name
+by duplicating percentages.
+
+Pre-rendering the device to avoid the issue altogether would be nicer
+but the current log level hooks do not easily allow for this. The device
+name is the only user-controlled part of the format string.
+
+A second potential issue is the sysname of the device which is also
+sanitized.
+
+This issue was found by Albin Eldst=C3=A5l-Ahrens and Benjamin Svensson fr=
om
+Assured AB, and independently by Lukas Lamster.
+
+Fixes #752
+
+Signed-off-by: Peter Hutterer <peter.hutterer@who-t.net>
+(cherry picked from commit a423d7d3269dc32a87384f79e29bb5ac021c83d1)
+
+CVE: CVE-2022-1215
+Upstream Status: Backport [https://gitlab.freedesktop.org/libinput/libinpu=
t/-/commit/2a8b8fde90d63d48ce09ddae44142674bbca1c28]
+Signed-off-by: Pawan Badganchi <Pawan.Badganchi@kpit.com>
+
+---
+ meson.build                        |  1 +
+ src/evdev.c                        | 31 +++++++++++------
+ src/evdev.h                        |  6 ++--
+ src/util-strings.h                 | 30 ++++++++++++++++
+ test/litest-device-format-string.c | 56 ++++++++++++++++++++++++++++++
+ test/litest.h                      |  1 +
+ test/test-utils.c                  | 26 ++++++++++++++
+ 7 files changed, 139 insertions(+), 12 deletions(-)
+ create mode 100644 test/litest-device-format-string.c
+
+diff --git a/meson.build b/meson.build
+index 90f528e6..1f6159e7 100644
+--- a/meson.build
++++ b/meson.build
+@@ -787,6 +787,7 @@
+               'test/litest-device-dell-canvas-totem-touch.c',
+               'test/litest-device-elantech-touchpad.c',
+               'test/litest-device-elan-tablet.c',
++              'test/litest-device-format-string.c',
+               'test/litest-device-generic-singletouch.c',
+               'test/litest-device-gpio-keys.c',
+               'test/litest-device-huion-pentablet.c',
+diff --git a/src/evdev.c b/src/evdev.c
+index 6d81f58f..d1c35c07 100644
+--- a/src/evdev.c
++++ b/src/evdev.c
+@@ -2356,19 +2356,19 @@ evdev_device_create(struct libinput_seat *seat,
+       struct libinput *libinput =3D seat->libinput;
+       struct evdev_device *device =3D NULL;
+       int rc;
+-      int fd;
++      int fd =3D -1;
+       int unhandled_device =3D 0;
+       const char *devnode =3D udev_device_get_devnode(udev_device);
+-      const char *sysname =3D udev_device_get_sysname(udev_device);
++      char *sysname =3D str_sanitize(udev_device_get_sysname(udev_device)=
);
+
+       if (!devnode) {
+               log_info(libinput, "%s: no device node associated\n", sysna=
me);
+-              return NULL;
++              goto err;
+       }
+
+       if (udev_device_should_be_ignored(udev_device)) {
+               log_debug(libinput, "%s: device is ignored\n", sysname);
+-              return NULL;
++              goto err;
+       }
+
+       /* Use non-blocking mode so that we can loop on read on
+@@ -2382,13 +2382,15 @@ evdev_device_create(struct libinput_seat *seat,
+                        sysname,
+                        devnode,
+                        strerror(-fd));
+-              return NULL;
++              goto err;
+       }
+
+       if (!evdev_device_have_same_syspath(udev_device, fd))
+               goto err;
+
+       device =3D zalloc(sizeof *device);
++      device->sysname =3D sysname;
++      sysname =3D NULL;
+
+       libinput_device_init(&device->base, seat);
+       libinput_seat_ref(seat);
+@@ -2411,6 +2413,9 @@ evdev_device_create(struct libinput_seat *seat,
+       device->dispatch =3D NULL;
+       device->fd =3D fd;
+       device->devname =3D libevdev_get_name(device->evdev);
++      /* the log_prefix_name is used as part of a printf format string an=
d
++       * must not contain % directives, see evdev_log_msg */
++      device->log_prefix_name =3D str_sanitize(device->devname);
+       device->scroll.threshold =3D 5.0; /* Default may be overridden */
+       device->scroll.direction_lock_threshold =3D 5.0; /* Default may be =
overridden */
+       device->scroll.direction =3D 0;
+@@ -2238,9 +2238,14 @@
+       return device;
+
+ err:
+-      close_restricted(libinput, fd);
+-      if (device)
+-              evdev_device_destroy(device);
++      if (fd >=3D 0) {
++              close_restricted(libinput, fd);
++              if (device) {
++                      unhandled_device =3D device->seat_caps =3D=3D 0;
++                      evdev_device_destroy(device);
++              }
++            }
++        free(sysname);
+
+       return unhandled_device ? EVDEV_UNHANDLED_DEVICE :  NULL;
+ }
+
+@@ -2469,7 +2478,7 @@ evdev_device_get_output(struct evdev_device *device)
+ const char *
+ evdev_device_get_sysname(struct evdev_device *device)
+ {
+-      return udev_device_get_sysname(device->udev_device);
++      return device->sysname;
+ }
+
+ const char *
+@@ -3066,6 +3075,8 @@ evdev_device_destroy(struct evdev_device *device)
+       if (device->base.group)
+               libinput_device_group_unref(device->base.group);
+
++      free(device->log_prefix_name);
++      free(device->sysname);
+       free(device->output_name);
+       filter_destroy(device->pointer.filter);
+       libinput_timer_destroy(&device->scroll.timer);
+diff --git a/src/evdev.h b/src/evdev.h
+index c7d130f8..980c5943 100644
+--- a/src/evdev.h
++++ b/src/evdev.h
+@@ -169,6 +169,8 @@ struct evdev_device {
+       struct udev_device *udev_device;
+       char *output_name;
+       const char *devname;
++      char *log_prefix_name;
++      char *sysname;
+       bool was_removed;
+       int fd;
+       enum evdev_device_seat_capability seat_caps;
+@@ -786,7 +788,7 @@ evdev_log_msg(struct evdev_device *device,
+                sizeof(buf),
+                "%-7s - %s%s%s",
+                evdev_device_get_sysname(device),
+-               (priority > LIBINPUT_LOG_PRIORITY_DEBUG) ?  device->devnam=
e : "",
++               (priority > LIBINPUT_LOG_PRIORITY_DEBUG) ?  device->log_pr=
efix_name : "",
+                (priority > LIBINPUT_LOG_PRIORITY_DEBUG) ?  ": " : "",
+                format);
+
+@@ -824,7 +826,7 @@ evdev_log_msg_ratelimit(struct evdev_device *device,
+                sizeof(buf),
+                "%-7s - %s%s%s",
+                evdev_device_get_sysname(device),
+-               (priority > LIBINPUT_LOG_PRIORITY_DEBUG) ?  device->devnam=
e : "",
++               (priority > LIBINPUT_LOG_PRIORITY_DEBUG) ?  device->log_pr=
efix_name : "",
+                (priority > LIBINPUT_LOG_PRIORITY_DEBUG) ?  ": " : "",
+                format);
+
+diff --git a/src/util-strings.h b/src/util-strings.h
+index 2a15fab3..d5a84146 100644
+--- a/src/util-strings.h
++++ b/src/util-strings.h
+@@ -42,6 +42,7 @@
+ #ifdef HAVE_XLOCALE_H
+ #include <xlocale.h>
+ #endif
++#include "util-macros.h"
+
+ #define streq(s1, s2) (strcmp((s1), (s2)) =3D=3D 0)
+ #define strneq(s1, s2, n) (strncmp((s1), (s2), (n)) =3D=3D 0)
+@@ -312,3 +313,31 @@
+       free(result);
+       return -1;
+ }
++
++/**
++ * Return a copy of str with all % converted to %% to make the string
++ * acceptable as printf format.
++ */
++static inline char *
++str_sanitize(const char *str)
++{
++      if (!str)
++              return NULL;
++
++      if (!strchr(str, '%'))
++              return strdup(str);
++
++      size_t slen =3D min(strlen(str), 512);
++      char *sanitized =3D zalloc(2 * slen + 1);
++      const char *src =3D str;
++      char *dst =3D sanitized;
++
++      for (size_t i =3D 0; i < slen; i++) {
++              if (*src =3D=3D '%')
++                      *dst++ =3D '%';
++              *dst++ =3D *src++;
++      }
++      *dst =3D '\0';
++
++      return sanitized;
++}
+diff --git a/test/litest-device-format-string.c b/test/litest-device-forma=
t-string.c
+new file mode 100644
+index 00000000..aed15db4
+--- /dev/null
++++ b/test/litest-device-format-string.c
+@@ -0,0 +1,56 @@
++
++/*
++ * Copyright =C2=A9 2013 Red Hat, Inc.
++ *
++ * Permission is hereby granted, free of charge, to any person obtaining =
a
++ * copy of this software and associated documentation files (the "Softwar=
e"),
++ * to deal in the Software without restriction, including without limitat=
ion
++ * the rights to use, copy, modify, merge, publish, distribute, sublicens=
e,
++ * and/or sell copies of the Software, and to permit persons to whom the
++ * Software is furnished to do so, subject to the following conditions:
++ *
++ * The above copyright notice and this permission notice (including the n=
ext
++ * paragraph) shall be included in all copies or substantial portions of =
the
++ * Software.
++ *
++ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRES=
S OR
++ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILIT=
Y,
++ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHA=
LL
++ * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR O=
THER
++ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISIN=
G
++ * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
++ * DEALINGS IN THE SOFTWARE.
++ */
++
++#include "config.h"
++
++#include "litest.h"
++#include "litest-int.h"
++
++static struct input_id input_id =3D {
++      .bustype =3D 0x3,
++      .vendor =3D 0x0123,
++      .product =3D 0x0456,
++};
++
++static int events[] =3D {
++      EV_KEY, BTN_LEFT,
++      EV_KEY, BTN_RIGHT,
++      EV_KEY, BTN_MIDDLE,
++      EV_REL, REL_X,
++      EV_REL, REL_Y,
++      EV_REL, REL_WHEEL,
++      EV_REL, REL_WHEEL_HI_RES,
++      -1 , -1,
++};
++
++TEST_DEVICE("mouse-format-string",
++      .type =3D LITEST_MOUSE_FORMAT_STRING,
++      .features =3D LITEST_RELATIVE | LITEST_BUTTON | LITEST_WHEEL,
++      .interface =3D NULL,
++
++      .name =3D "Evil %s %d %x Mouse %p %",
++      .id =3D &input_id,
++      .absinfo =3D NULL,
++      .events =3D events,
++)
+diff --git a/test/litest.h b/test/litest.h
+index 4982e516..1b1daa90 100644
+--- a/test/litest.h
++++ b/test/litest.h
+@@ -303,6 +303,7 @@
+       LITEST_ALPS_3FG,
+       LITEST_ELAN_TABLET,
+       LITEST_ABSINFO_OVERRIDE,
++        LITEST_MOUSE_FORMAT_STRING,
+ };
+
+ #define LITEST_DEVICELESS     -2
+diff --git a/test/test-utils.c b/test/test-utils.c
+index 989adecd..e80754be 100644
+--- a/test/test-utils.c
++++ b/test/test-utils.c
+@@ -1267,6 +1267,31 @@ START_TEST(strstartswith_test)
+ }
+ END_TEST
+
++START_TEST(strsanitize_test)
++{
++      struct strsanitize_test {
++              const char *string;
++              const char *expected;
++      } tests[] =3D {
++              { "foobar", "foobar" },
++              { "", "" },
++              { "%", "%%" },
++              { "%%%%", "%%%%%%%%" },
++              { "x %s", "x %%s" },
++              { "x %", "x %%" },
++              { "%sx", "%%sx" },
++              { "%s%s", "%%s%%s" },
++              { NULL, NULL },
++      };
++
++      for (struct strsanitize_test *t =3D tests; t->string; t++) {
++              char *sanitized =3D str_sanitize(t->string);
++              ck_assert_str_eq(sanitized, t->expected);
++              free(sanitized);
++      }
++}
++END_TEST
++
+ START_TEST(list_test_insert)
+ {
+       struct list_test {
+@@ -1138,6 +1138,7 @@
+       tcase_add_test(tc, strsplit_test);
+       tcase_add_test(tc, kvsplit_double_test);
+       tcase_add_test(tc, strjoin_test);
++      tcase_add_test(tc, strsanitize_test);
+       tcase_add_test(tc, time_conversion);
+
+       tcase_add_test(tc, list_test_insert);
+
+--
+GitLab
+
diff --git a/meta/recipes-graphics/wayland/libinput_1.15.2.bb b/meta/recipe=
s-graphics/wayland/libinput_1.15.2.bb
index 810532774e..d7927d132a 100644
--- a/meta/recipes-graphics/wayland/libinput_1.15.2.bb
+++ b/meta/recipes-graphics/wayland/libinput_1.15.2.bb
@@ -14,6 +14,7 @@ DEPENDS =3D "libevdev udev mtdev"

 SRC_URI =3D "http://www.freedesktop.org/software/${BPN}/${BP}.tar.xz \
            file://determinism.patch \
+           file://CVE-2022-1215.patch \
            "
 SRC_URI[md5sum] =3D "eb6bd2907ad33d53954d70dfb881a643"
 SRC_URI[sha256sum] =3D "971c3fbfb624f95c911adeb2803c372e4e3647d1b98f278f66=
0051f834597747"
--
2.17.1

This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.
