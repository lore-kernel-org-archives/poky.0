Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BECCC36000
	for <webhook@archiver.kernel.org>; Fri, 21 Mar 2025 13:36:50 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.21306.1742564206875127922
 for <poky@lists.yoctoproject.org>;
 Fri, 21 Mar 2025 06:36:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=XpnaxKDf;
 spf=pass (domain: linaro.org, ip: 209.85.208.175, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-30bf8f5dde5so18258151fa.2
        for <poky@lists.yoctoproject.org>; Fri, 21 Mar 2025 06:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742564205; x=1743169005; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LrPRIYfGUDQ7ZjVY+VhkwnAaMgX6/brWIdLLNvoK174=;
        b=XpnaxKDf3gWs/hh7v2YQdexN+8BXaYY5mrPccHWygaJu7FdPn3fIyeKyLeq8dC4P4y
         lIb8m2aqDJIERTD7W0GTouKGAPjt/R4dsBbWLJ7mjlHG2IiDoyYzLOSMYobyE+jnLPs3
         A6+/jGp4MX/E9uuTUmTMuD/8D+jBcjctSS/EsKJNZUMGwVvtu0ZRraYD7xJfXrdk16tx
         f8AzhxOyC0iR6dpczUtkGaJcw9A+ke0qj9uYKMXNmUosdEWYmnHUlQ5o1Xmxvj7G4qR3
         dRAjCv8dxNyjldAi0qalah4RuxDL3P5ql8kzjVrn0nrtLtI3IOhAQB+u4tVdBDsTaZjo
         lBJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742564205; x=1743169005;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LrPRIYfGUDQ7ZjVY+VhkwnAaMgX6/brWIdLLNvoK174=;
        b=LcX217cH+PtPXCXAcmqYXMS4VCFMHfRmtXqWkFaHFIGKwtL1pkpIJ+Yv8N/8F1i5hr
         IR1dEkXr2W0Kq4BYfpiUWVTDGco33irLxrTJSPIed8x82tW0mZCG/tDuJtxDp4mvfI5u
         8wP0ODaJx4kGOzOnYZBpxzRukqSQ+CFfJJlyZOko6njknAmm8S2ivKaTLAdkKyqMx0uk
         tptLv8UhdHGDjY2mHlJmJtOAbzzctfB/yvg0vRw78rvtPqHQoF6+ysDzL0CPvbnF9/vP
         eCSgKIyWAy/Tn8iN8ugXp9T7MusJOLyOwu+0p8k93tc+7S8qq54pDJcdWHIwbGhptN+L
         yr0g==
X-Gm-Message-State: AOJu0Yw/SWcT7KCgKX7uNr+nVkw0bbVTlYEMS1WY09jxY5/YErhzeQOw
	rBSefarIkBOKqUrJrWt2ROJuC5YnIPuu9LQ9scEJYvec0aD3KFRrZLYiwESB+dOdI4kMqeBvTwe
	JjLs=
X-Gm-Gg: ASbGnctp066TdCJVP7Augh9zH0EBaE73a4cXJUfqj44xhhdUgn6Vx+LCZFzs9VGgrKP
	7DCJxiaKUeM1WRgggXwX/zj42NHNs/BhcY8iPzpF80NPN64k3c5vPqTVfvJgilfdgS7lKnIgXCi
	MvJnf2QC9EM99R7+s8h0aCPP49gQP0/a9xDLNaohWJnkk7CvNfwH/dpPaCCCtzo7JxZgqG81baE
	cQr2SYv7BbW/N4dWi7XzfqUXb9kDLAKFzF6yJX9/P2+8G5D/b+b/Hett9DHCXVJfAN6vwSiL6tX
	BfnZ6mwnU5IwbYxg5ffsU8qu+nic3rpI25N+WTi9yiljwuln06IiqPKQ2/0vjAWsme0KBdn6Mf7
	vDIBdNg3ll/199FI+q39pOji03fgGvAlO
X-Google-Smtp-Source: AGHT+IHAc6kAmOlT7lBG/2tKcdYPddywQUEaqiQ92iSyZMfqgyBqeKHGyWu5yhEtnX3zHmCkgO5erw==
X-Received: by 2002:a05:651c:b0d:b0:30b:d44d:e756 with SMTP id 38308e7fff4ca-30d7e2a2256mr11555671fa.29.1742564204953;
        Fri, 21 Mar 2025 06:36:44 -0700 (PDT)
Received: from localhost.localdomain (87-100-218-141.bb.dnainternet.fi. [87.100.218.141])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30d7d7fe7cbsm2464501fa.55.2025.03.21.06.36.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 06:36:44 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v3] systemd: use serial-getty-generator on genericarm64
Date: Fri, 21 Mar 2025 15:36:32 +0200
Message-ID: <20250321133632.671208-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 21 Mar 2025 13:36:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13575

systemd-serialgetty recipe sets serial consoles based
on SERIAL_CONSOLES build time variable. These fail to
be detected on multiple devices including qemu and the
resulting failures delay boot to systemd "running" state
by one minute on an example aarch64 build machine and qemu.
Serial console login works with both since udev will
trigger agetty on correct devices. Using systemd side
serial-getty-generator disables systemd-serialgetty.

qemu-system-aarch64 core-image-base boot time with
systemd-serialgetty before this patch:

$ systemd-analyze
Startup finished in 8.314s (firmware) + 9.805s (loader) + 14.338s (kernel) + 1min 34.392s (userspace) = 2min 6.851s
multi-user.target reached after 1min 34.387s in userspace.

with this patch:

Startup finished in 8.312s (firmware) + 9.804s (loader) + 14.295s (kernel) + 29.808s (userspace) = 1min 2.220s
multi-user.target reached after 29.802s in userspace.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend

diff --git a/meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend b/meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend
new file mode 100644
index 0000000000..f23852a351
--- /dev/null
+++ b/meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend
@@ -0,0 +1,3 @@
+# auto detection instead of build time configured via SERIAL_CONSOLES
+# to support multiple devices
+PACKAGECONFIG:append:genericarm64 = " serial-getty-generator"
-- 
2.43.0


