Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web12.55421.1584977628076774270
 for <poky@lists.yoctoproject.org>;
 Mon, 23 Mar 2020 08:33:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=QYtra0Hy;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: krzk@kernel.org)
Received: from kozik-lap.mshome.net (unknown [194.230.155.125])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9AAB220735;
	Mon, 23 Mar 2020 15:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584977627;
	bh=zVvMNo/61+FXoOtLLKfE+5f0PoLjiFmJeZNhq9OXCEo=;
	h=From:To:Cc:Subject:Date:From;
	b=QYtra0HyLeObhsY6M547sVAA2ZkdkdCy+WOL7ThRqce5r0q1P0yMpwFWJ0n+JMZny
	 mOwVH7uxI4wdgETEUQ1o3rY9QTzWkQqodt1raSu/ivjsWGDCn1llY9FaXo09WfKXDr
	 zhdcdK/8H4huATHcB3g5gT26N605RNEGL4Oc9frw=
From: "Krzysztof Kozlowski" <krzk@kernel.org>
To: poky@lists.yoctoproject.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [RFC] poky.conf: Drop CentOS 7 from supported distributions
Date: Mon, 23 Mar 2020 16:33:36 +0100
Message-Id: <20200323153336.15859-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1

Since Yocto v3.0, the extensible SDK cannot be built on CentOS 7 because
of old tar:

    $ bitbake xxx-image -c populate_sdk_ext
    Your version of tar is older than 1.28 and does not have the support
    needed to enable reproducible builds. Please install a newer version of
    tar (you could use the projects buildtools-tarball from our last
    release).

Drop it then from officially supported distributions.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 meta-poky/conf/distro/poky.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 8111f19caa58..9a26df1d525c 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -58,7 +58,6 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-28 \n \
             fedora-29 \n \
             fedora-30 \n \
-            centos-7 \n \
             debian-8 \n \
             debian-9 \n \
             debian-10 \n \
-- 
2.17.1

