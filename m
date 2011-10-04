Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DB45E006B4
	for <poky@yoctoproject.org>; Tue,  4 Oct 2011 08:37:57 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Oct 2011 08:37:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="58902711"
Received: from unknown (HELO [10.255.14.210]) ([10.255.14.210])
	by orsmga001.jf.intel.com with ESMTP; 04 Oct 2011 08:37:57 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 04 Oct 2011 08:37:51 -0700
In-Reply-To: <1317712610.92069.YahooMailNeo@web94711.mail.in2.yahoo.com>
References: <1317712610.92069.YahooMailNeo@web94711.mail.in2.yahoo.com>
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1317742677.2229.11.camel@scimitar>
Mime-Version: 1.0
Subject: Re: : XBMC PACKAGE (package libsdl-mixer-1.2.11-r5: task do_compile: Failed)
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
X-List-Received-Date: Tue, 04 Oct 2011 15:37:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-10-04 at 12:46 +0530, sonu vishwakarma wrote:
> | ./libtool: line 6399: cd: =/usr/lib: No such file or directory

Here's the problem! Somewhere you're passing =/usr/lib which isn't a
real path.

Please don't start new threads to continue existing discussion.

Please share the recipes you're trying to build so that we can try and
help.

Thanks,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


