Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3363D4C806DA
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 06:35:28 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Jan 2011 04:35:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,373,1291622400"; d="scan'208";a="650891115"
Received: from unknown (HELO [10.255.16.153]) ([10.255.16.153])
	by fmsmga002.fm.intel.com with ESMTP; 25 Jan 2011 04:35:22 -0800
From: Joshua Lock <josh@linux.intel.com>
To: poky <poky@yoctoproject.org>
Date: Tue, 25 Jan 2011 12:35:16 +0000
Message-ID: <1295958916.5641.8.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Please ensure you are using layout variables in recipes
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
X-List-Received-Date: Tue, 25 Jan 2011 12:35:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi all,

When creating/editing recipes can we please ensure consistent use of
layout variables, rather than absolute paths.

For example use:

${bindir}/foo
${datadir}/bar
and
${base_sbindir}/baz

rather than:

/usr/bin/foo
/usr/share/bar
and
/sbin/baz

The layout variables are defined in bitbake.conf and we should have
pretty much everything we need there, if you feel some are missing
please submit a patch (we've recently added some for cross and nativesdk
use, for example).

Thanks,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


