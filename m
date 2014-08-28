Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8159DE00798; Thu, 28 Aug 2014 15:00:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0696BE00507
	for <poky@yoctoproject.org>; Thu, 28 Aug 2014 14:59:59 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Aug 2014 14:59:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,420,1406617200"; d="scan'208";a="565027196"
Received: from mmckenna-mobl2.ger.corp.intel.com (HELO [10.255.12.242])
	([10.255.12.242])
	by orsmga001.jf.intel.com with ESMTP; 28 Aug 2014 14:59:58 -0700
Message-ID: <53FFA65E.70700@linux.intel.com>
Date: Thu, 28 Aug 2014 14:59:58 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.7.0
MIME-Version: 1.0
To: "poky >> \"poky@yoctoproject.org\"" <poky@yoctoproject.org>
References: <1408449451-8566-1-git-send-email-otavio@ossystems.com.br>
In-Reply-To: <1408449451-8566-1-git-send-email-otavio@ossystems.com.br>
X-Forwarded-Message-Id: <1408449451-8566-1-git-send-email-otavio@ossystems.com.br>
Subject: [yocto] [PATCH] distro/poky: Add Debian 7.5 and 7.6 version as validated
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
X-List-Received-Date: Thu, 28 Aug 2014 22:00:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit




-------- Original Message --------
Subject: [yocto] [PATCH] distro/poky: Add Debian 7.5 and 7.6 version as 
validated
Date: Tue, 19 Aug 2014 08:57:31 -0300
From: Otavio Salvador <otavio@ossystems.com.br>
Organization: O.S. Systems Software LTDA.
To: yocto@lists.yoctoproject.org
CC: Otavio Salvador <otavio@ossystems.com.br>

Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
---
  meta-yocto/conf/distro/poky.conf | 2 ++
  1 file changed, 2 insertions(+)

diff --git a/meta-yocto/conf/distro/poky.conf 
b/meta-yocto/conf/distro/poky.conf
index ec251f9..34ce8ec 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -88,6 +88,8 @@ SANITY_TESTED_DISTROS ?= " \
              Debian-7.2 \n \
              Debian-7.3 \n \
              Debian-7.4 \n \
+            Debian-7.5 \n \
+            Debian-7.6 \n \
              SUSE-LINUX-12.2 \n \
              openSUSE-project-12.3 \n \
              openSUSE-project-13.1 \n \
-- 
2.1.0.rc1

-- 
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto





