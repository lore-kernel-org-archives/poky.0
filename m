Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 457AA4C802F2
	for <poky@yoctoproject.org>; Wed, 23 Mar 2011 04:34:25 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Mar 2011 02:34:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,230,1299484800"; d="scan'208";a="616684909"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 23 Mar 2011 02:34:23 -0700
Date: Wed, 23 Mar 2011 17:40:41 +0800
From: Yu Ke <ke.yu@intel.com>
To: kubera samrat <kubera.samrat@gmail.com>
Message-ID: <20110323094041.GB26323@kyu3-hedt>
References: <AANLkTin_LpvXeF7K+Xp5KqwGWP=rALmt+DtdbgXUuuTB@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <AANLkTin_LpvXeF7K+Xp5KqwGWP=rALmt+DtdbgXUuuTB@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: Problem while pulling mesa
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
X-List-Received-Date: Wed, 23 Mar 2011 09:34:25 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mar 22, 19:05, kubera samrat wrote:
> Hi all,
>          I have included mesa in my recipe. I got all the .so files which I
> needed except GLES files. I am including my bb file in this mail below. So
> please tell me the modifications which has to be done such that those
> libraries get included. I have given extra conf according to the website
> given below
> http://mesa3d.sourceforge.net/
> http://mesa3d.sourceforge.net/egl.html

to enable GLES, the following configure options are required:
--enable-gles1          enable support for OpenGL ES 1.x API [default=no]
--enable-gles2          enable support for OpenGL ES 2.x API [default=no]

so you can try to add:

EXTRA_OECONF += "--enable-gles1"  or
EXTRA_OECONF += "--enable-gles2"

Regards
Ke

