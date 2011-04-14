Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 155F34C80AC6
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 16:43:37 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Apr 2011 14:43:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,213,1301900400"; d="scan'208";a="733518161"
Received: from scimitar.jf.intel.com (HELO [10.7.199.78]) ([10.7.199.78])
	by orsmga001.jf.intel.com with ESMTP; 14 Apr 2011 14:43:36 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 14 Apr 2011 14:43:37 -0700
In-Reply-To: <20110414194445.9BCC5151F83@gemini.denx.de>
References: <20110414194445.9BCC5151F83@gemini.denx.de>
X-Mailer: Evolution 3.0.0 (3.0.0-1.fc15) 
Message-ID: <1302817417.8711.2.camel@scimitar>
Mime-Version: 1.0
Subject: Re: Distro policy ?
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
X-List-Received-Date: Thu, 14 Apr 2011 21:43:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-04-14 at 21:44 +0200, Wolfgang Denk wrote:
> HI,
> 
> we're trying to build our own distribution based on Yocto 1.0.  We
> would like to push all modifications / extensions and our distro stuff
> upstream into the mainline repository, but we are not sure what is the
> best way to do this:
> 
> So far we have put our distro-related changes into a separate layer
> but it seems that it was not so good idea: it looks like bitbake
> can't include files from one layer to another and we have to copy
> includes even if we don't want to change them.

You can you just have to use a path from the top of the BBPATH entry for
the layer you're using, so in our meta-demo layer I've used entries
like:

require recipes-graphics/clutter/clutter.inc

to use an inc file from meta in Poky.

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


