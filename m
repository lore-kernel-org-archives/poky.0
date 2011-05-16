Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7CA384C80852
	for <poky@yoctoproject.org>; Mon, 16 May 2011 14:41:07 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 May 2011 12:41:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,221,1304319600"; d="scan'208";a="643424375"
Received: from vorpal.jf.intel.com (HELO [10.7.199.57]) ([10.7.199.57])
	by orsmga002.jf.intel.com with ESMTP; 16 May 2011 12:41:05 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 16 May 2011 12:44:39 -0700
In-Reply-To: <cover.1305143302.git.josh@linux.intel.com>
References: <cover.1305143302.git.josh@linux.intel.com>
X-Mailer: Evolution 3.0.1 (3.0.1-1.fc15) 
Message-ID: <1305575079.1757.11.camel@vorpal.jf.intel.com>
Mime-Version: 1.0
Subject: Re: [PATCH 0/1] Fix GUI's
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
X-List-Received-Date: Mon, 16 May 2011 19:41:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-05-11 at 13:02 -0700, Joshua Lock wrote:
> From: Joshua Lock <josh@linux.intel.com>
> 
> A recent sysnc with upstream BitBake changed the behaviour of cache
> loading such that we need to handle the ParseStarted event not having
> a useful total value.
> 
> This patch ensures that our three Gtk+ GUI's will continue to work as
> expected.

Ping? Does this need to go to upstream BitBake first?

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project Build Monkey
        Intel Open Source Technology Centre


