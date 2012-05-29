Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91631E011D1
	for <poky@yoctoproject.org>; Tue, 29 May 2012 02:57:48 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 May 2012 02:57:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="148890910"
Received: from unknown (HELO helios.localnet) ([10.252.120.40])
	by azsmga001.ch.intel.com with ESMTP; 29 May 2012 02:57:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 29 May 2012 10:57:46 +0100
Message-ID: <1860364.RiBI5vjcRR@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.2.0-24-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <4FC3B862.7040305@mlbassoc.com>
References: <4FC3B862.7040305@mlbassoc.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Unexpected bugzilla behaviour
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
X-List-Received-Date: Tue, 29 May 2012 09:57:48 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 28 May 2012 11:39:46 Gary Thomas wrote:
> I was making a reply to bug #1570 and the next thing I know I had
> a full-up page for bug #1587 where I errantly added an attachment.
> 
> My recall was that bugzilla would stay with the bug you're working
> on - I could make a comment and then add an attachment without leaving
> the same bug report.  That doesn't seem to be the case now and it
> left me not only confused but putting comments and attachments in
> the wrong place.
> 
> Did this change with the bugzilla "upgrade"?

AFAIK Bugzilla has always had this mis-feature. The worst thing is it's not 
consistent - if you didn't have a bug "list" (previous search results) then it 
will stay on the current bug.

I've even heard of a Firefox add-on that will override this behaviour, but I 
never looked into it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

