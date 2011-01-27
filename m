Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 81A7D4C8122A
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 09:36:41 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 07:36:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,386,1291622400"; d="scan'208";a="701302041"
Received: from unknown (HELO [10.255.16.153]) ([10.255.16.153])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2011 07:36:40 -0800
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
In-Reply-To: <1296142137.27814.7848.camel@rex>
References: <cover.1296133552.git.josh@linux.intel.com>
	<1296142137.27814.7848.camel@rex>
Date: Thu, 27 Jan 2011 15:36:34 +0000
Message-ID: <1296142594.2711.16.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 0/1] Make external-python-tarball useful again
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
X-List-Received-Date: Thu, 27 Jan 2011 15:36:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-27 at 15:28 +0000, Richard Purdie wrote:
> On Thu, 2011-01-27 at 13:09 +0000, Joshua Lock wrote:
> > From: Joshua Lock <josh@linux.intel.com>
> > 
> > The attached patch adds the multiprocessing module to the external Python
> > tarball. This is quite useful as we use multiprocessing at recipe parse time
> > now.
> 
> Merged into master, thanks!
> 
> > This raises two questions:
> > 1) Should we do some testing around the use of multiprocessing?
> 
> In what way?

Sorry, what a vague comment. I meant to suggest an exception around the
import and alternative code paths if the module can't be imported. 
Or is it safe to assume it exists if you have Python 2.6? - in which
case we just need to improve out Python 2.6 tests so that people can't
run this code on older versions.

> 
> > 2) Who can update a new external-python-tarball to the public download?
> 
> Beth+me should both have access.

Cool, I'm debugging an issue with package resolution at tarball
generation time, but once that works I'll request a build and upload.

Thanks,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


