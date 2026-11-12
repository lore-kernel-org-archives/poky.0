Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.116.1794497356454122758
 for <poky@lists.yoctoproject.org>;
 Thu, 12 Nov 2026 07:29:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Ms6WTh1N;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4a3517554f7so46680355e9.2
        for <poky@lists.yoctoproject.org>; Thu, 12 Nov 2026 07:29:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1794497354; x=1795102154; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=tpScfsvA5qgFIQ9uIE6MoXRhHQq+xklKZ2EMSRkgmEA=;
        b=Ms6WTh1NqMRKt30estMJgCSsJtxNtXqYTLMwNnQFslL+D7fZvJZSDCap3RGzh4VnVR
         wVGGMFWE8gqgcJkg8iZW1jJj0b4sXDLlNhW9aX1GbQhZ8RTgWsrmb/1j+ZgfLTwWB5/7
         dJKByufUVBW194TY38zBzrGa+uxvYdU7jemqg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794497354; x=1795102154;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=tpScfsvA5qgFIQ9uIE6MoXRhHQq+xklKZ2EMSRkgmEA=;
        b=r+UDuvjAzoURsFCvITiarMvY/aZ/DGjGTu0oG/wVlyNFsfieqp/lhS2YLdxXwv7u6C
         m6gqcPqdvFhXtMCcmOaxWomHjBPmWVd5DlwB6iYY0evi8lxZ9Qf0WXGncFdJIpGVygL4
         GSuyZsEvTFpB6co0wfmcjWc5cnB1aubKlbkGTs7uAeIVWeycMcAgDwY0bl2Wdd48KSvr
         J0etzB5S4VzpkwhlWH+ulBCrgTuHEmtEBxv5/1tiPo/4GAYDHj24XIzbXebsxExzF/UP
         Ce7dTyE1ReEBL3hoZL6A5WqFiLlPwMz9Euo/RjPapJibm9Qek0Ohnqbice7RbGVqJUjI
         xA+A==
X-Gm-Message-State: APuU4Z8cXADJkQL1TpnXGa69qD4d7O2amv2GO6M/qRpxYfH3p3WLoV2R
	sGRoDQ8wi4IpDXl2WW9hQsiJ9ps+lOeyEkSPEPEbSSx1l+N3PzZY/0NN9onW7ByJTxRvbzDWBcX
	V/uTZ7O8=
X-Gm-Gg: AYBFou2Y74a14Y5Xbqj67ArZ2LougmqqhzBhlnUfzCKiMcmazgQP5YncZwvU6L6f+rj
	GjTcqjTDx/qlWqdf1aQsoqxc1ktZhV+EIi/tSnDWiyhscRcJ90DkwYMH9QOzP9UajpDx2G7yf+/
	viMf8mTiaSlYuP4SU5hlEJZRAWcBK5gccNho8GjNBDmTtCQ7bETEkqDHpFpAsnjZPuCSYj6vRCx
	CO2JRjuJD1io9CANTYjilXt0bxtfCG4zxNqaj13blYrkAqsCuX5NoPIh2wrzLgJlB4NghXWswzR
	M/tDaAwgJ0H9ONcIwwqfM62pnOkXNM3J1XwKawDUGWklEhLsYo+L7Ecb4HpS6sZG13vd+hIK6fN
	DZ8vHapB2xvDQNnluGjV4Bctt2YkUdly/DuIfGDVcLMdI0fwtatoplLtpg46BP1iA3Vxb2B1TFd
	gSfSNtdKC8bDd4P4n5rLHvPYngqRjvsub+Iixcykfb3vmszJb9RIeoTiT4C1Ele9G+yB6W84EGv
	ooJADju/0ANfdDKqSSkVl8q5CxasWssrtcwYYalgAlPAh0XbIUoHdR8hT1j+OcE8kGqj6FCcjJc
	O1RubsdWdPRz31npB64Akv0tgAIaimDYW8wq9d9R/Sv5Hu+i0hM0G9QI1a+zeClE8S28WUjBy85
	2vqw=
X-Received: by 2002:a05:6000:230d:b0:48f:bc59:ab9c with SMTP id ffacd0b85a97d-499c898239amr13320855f8f.12.1794497354053;
        Thu, 12 Nov 2026 07:29:14 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:a049:45f3:9a6c:ad22])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-498362eb158sm16889650f8f.36.2026.11.12.07.29.12
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 07:29:13 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] meta-poky: Drop sanity class
Date: Thu, 12 Nov 2026 15:29:12 +0000
Message-ID: <20261112152912.34019-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Thu, 12 Nov 2026 15:29:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/14000
Content-Type: text/plain; charset="utf-8"

With bitbake-setup being adopted and now that the poky combo-layer repo is
not longer used, we don't really need this sanity/migration code. Remove
it.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/classes/poky-sanity.bbclass | 46 ---------------------------
 meta-poky/conf/distro/poky.conf       |  2 --
 meta-poky/conf/layer.conf             |  2 --
 3 files changed, 50 deletions(-)
 delete mode 100644 meta-poky/classes/poky-sanity.bbclass

diff --git a/meta-poky/classes/poky-sanity.bbclass b/meta-poky/classes/poky-sanity.bbclass
deleted file mode 100644
index a068c7368c1..00000000000
--- a/meta-poky/classes/poky-sanity.bbclass
+++ /dev/null
@@ -1,46 +0,0 @@
-# Provide some extensions to sanity.bbclass to handle poky-specific conf file upgrades
-
-python poky_update_bblayersconf() {
-    current_version = int(d.getVar('POKY_BBLAYERS_CONF_VERSION') or -1)
-    latest_version = int(d.getVar('REQUIRED_POKY_BBLAYERS_CONF_VERSION') or -1)
-    if current_version == -1 or latest_version == -1:
-        # one or the other missing => malformed configuration
-        raise NotImplementedError("You need to update bblayers.conf manually for this version transition")
-
-    success = True
-
-    # check for out of date templateconf.cfg file
-    lines = []
-    fn = os.path.join(d.getVar('TOPDIR'), 'conf/templateconf.cfg')
-
-    lines = sanity_conf_read(fn)
-    index, meta_yocto_line = sanity_conf_find_line(r'^meta-yocto/', lines)
-    if meta_yocto_line:
-        lines[index] = meta_yocto_line.replace('meta-yocto', 'meta-poky')
-        with open(fn, "w") as f:
-            f.write(''.join(lines))
-        bb.note("Your conf/templateconf.cfg file was updated from meta-yocto to meta-poky")
-
-    # add any additional layer checks/changes here
-
-    if success:
-        current_version = latest_version
-        bblayers_fn = bblayers_conf_file(d)
-        lines = sanity_conf_read(bblayers_fn)
-        # sanity_conf_update() will erroneously find a match when the var name
-        # is used in a comment, so do our own here. The code below can be
-        # removed when sanity_conf_update() is fixed in OE-Core.
-        #sanity_conf_update(bblayers_fn, lines, 'POKY_BBLAYERS_CONF_VERSION', current_version)
-        index, line = sanity_conf_find_line(r'^POKY_BBLAYERS_CONF_VERSION', lines)
-        lines[index] = 'POKY_BBLAYERS_CONF_VERSION = "%d"\n' % current_version
-        with open(bblayers_fn, "w") as f:
-            f.write(''.join(lines))
-        bb.note("Your conf/bblayers.conf has been automatically updated.")
-    if success:
-        return
-
-    raise NotImplementedError("You need to update bblayers.conf manually for this version transition")
-}
-
-# ensure our function runs after the OE-Core one
-BBLAYERS_CONF_UPDATE_FUNCS += "conf/bblayers.conf:POKY_BBLAYERS_CONF_VERSION:REQUIRED_POKY_BBLAYERS_CONF_VERSION:poky_update_bblayersconf"
diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 76808150677..59395b990f8 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -52,8 +52,6 @@ SANITY_TESTED_DISTROS ?= " \
             rocky-9 \n \
             rocky-10 \n \
             "
-# add poky sanity bbclass
-INHERIT += "poky-sanity"
 
 # QA check settings - a little stricter than the OE-Core defaults
 # (none currently necessary as we now match OE-Core)
diff --git a/meta-poky/conf/layer.conf b/meta-poky/conf/layer.conf
index 4a444d31046..a92e635f64c 100644
--- a/meta-poky/conf/layer.conf
+++ b/meta-poky/conf/layer.conf
@@ -16,5 +16,3 @@ LAYERSERIES_COMPAT_yocto = "blacksail"
 LAYERVERSION_yocto = "3"
 
 LAYERDEPENDS_yocto = "core"
-
-REQUIRED_POKY_BBLAYERS_CONF_VERSION = "2"
