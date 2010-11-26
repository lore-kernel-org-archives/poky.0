Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 454814C81001
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 02:12:41 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Nov 2010 00:12:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="630463124"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by fmsmga002.fm.intel.com with ESMTP; 26 Nov 2010 00:12:40 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PLtLM-00014p-Pc; Fri, 26 Nov 2010 16:07:44 +0800
Date: Fri, 26 Nov 2010 16:07:44 +0800
From: Qing He <qing.he@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Message-ID: <20101126080744.GA3770@qhe2-db>
References: <cover.1289969353.git.dongxiao.xu@intel.com>
	<fa09979bfc38e15dc4b9ab199c11302284583a18.1289969353.git.dongxiao.xu@intel.com>
	<1290162452.1272.12090.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1290162452.1272.12090.camel@rex>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] bitbake: optimize file parsing speed
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
X-List-Received-Date: Fri, 26 Nov 2010 08:12:41 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, 2010-11-19 at 18:27 +0800, Richard Purdie wrote:
> I'm afraid this isn't going to be quite this simple although this does
> prove those lines of code are a big hotspot in parsing.
> 
> Why? You're creating the key and export lists for the base configuration
> data whereas the original code creates these lists for the *total*
> parsed metadata. There will therefore be differences in the values held
> by the two caches :(.

Is it possible to maintain a list during variable changes? say, tag
several method like setVar, setVarFlag, etc., add something like
d["_conanicalkeys"] and d["_exportkeys"] and when this info is required,
recursively get every "_conanicalkeys" from d and d["_data"].

It has like 13% speed improvement in my experiment, but is quite tricky
and ugly, possibly not worth the trouble.

Btw, looks like much of the performance downgrade of the parsing is due
to moving python/shell code parsing/compilation to parse time? That way,
the performance of parse is OK?

Thanks,
Qing

