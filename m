Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E2B9D4C80053
	for <poky@lists.pokylinux.org>; Fri, 11 Feb 2011 15:50:50 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Feb 2011 13:50:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,458,1291622400"; d="scan'208";a="656880979"
Received: from unknown (HELO [10.255.14.239]) ([10.255.14.239])
	by fmsmga002.fm.intel.com with ESMTP; 11 Feb 2011 13:50:26 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D55A061.8040901@mlbassoc.com>
References: <4D55A061.8040901@mlbassoc.com>
Date: Fri, 11 Feb 2011 15:50:09 -0600
Message-ID: <1297461009.3188.4.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Useless syslogd
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
X-List-Received-Date: Fri, 11 Feb 2011 21:50:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-02-11 at 12:47 -0800, Gary Thomas wrote:
> ... at least out of the box.
> 
> It seems that syslog is configured to store its messages in
> a buffer (memory only?) by default:
> 
> $ cat meta/recipes-core/busybox/files/syslog.conf
> DESTINATION="buffer"            # log destinations (buffer file remote)
>    ...
> 
> This doesn't seem very useful to me.  I know I can override this
> in my platform recipes, but I was just wondering what's the
> rationale?  Would it not make more sense to chose DESTINATION="file"?
> Otherwise, where do the messages go?  How can I see them?
> 

I think 'logread' is hooked up to read from the buffer, but it seems to
be broken at the moment...

Tom


 


