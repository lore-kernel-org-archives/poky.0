Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id F09A44C800BA
	for <poky@yoctoproject.org>; Wed, 23 Mar 2011 21:16:20 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Mar 2011 19:16:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,234,1299484800"; d="scan'208";a="723737025"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 23 Mar 2011 19:16:19 -0700
Date: Thu, 24 Mar 2011 10:22:39 +0800
From: Yu Ke <ke.yu@intel.com>
To: kubera samrat <kubera.samrat@gmail.com>
Message-ID: <20110324022239.GC26323@kyu3-hedt>
References: <AANLkTin_LpvXeF7K+Xp5KqwGWP=rALmt+DtdbgXUuuTB@mail.gmail.com>
	<20110323094041.GB26323@kyu3-hedt>
	<AANLkTi=kwHSYcSss8rQyGHY7N+9cg2CZ2H4XA=Dt5mbJ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <AANLkTi=kwHSYcSss8rQyGHY7N+9cg2CZ2H4XA=Dt5mbJ@mail.gmail.com>
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
X-List-Received-Date: Thu, 24 Mar 2011 02:16:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mar 23, 15:43, kubera samrat wrote:
> Hi Yu ke,
>            I have changed my extra conf. Now I am getting an error stated
> below.
> 
> ******************************************
> EXTRA_OECONF += "--with-driver=dri --enable-egl --enable-gallium *
> --enable-gallium-eg*l --enable-glx-tls --enable-gl-osmesa --enable-glu
> --enable-glw --enable-gallium-swrast --enable-xcbi --enable-egl *--enable-gles2
> --with-state-trackers=glx,egl,es --enable-gallium-swrast
> --with-egl-driver-dir=${D}${libdir}/egl --with-egl-platforms=x11,drm
> --enable-gles-overlay*"
> *************************************************
> ERROR LOG
> *******************************************
> | Traceback (most recent call last):
> |   File "main/es_generator.py", line 174, in <module>
> |     keys = apiutil.GetAllFunctions(functionList, version)
> |   File
> "/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspecutil.py",
> line 87, in GetAllFunctions
> |     _ParseXML(filename, api)
> |   File
> "/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspecutil.py",
> line 52, in _ParseXML
> |     impl = spec.get_impl()
> |   File
> "/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py",
> line 65, in get_impl
> |     return API(self, self.impl_node)
> |   File
> "/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py",
> line 101, in __init__
> |     self.categories)
> |   File
> "/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py",
> line 175, in __init__
> |     self._init_params(param_nodes)
> |   File
> "/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es/main/APIspec.py",
> line 194, in _init_params
> |     if not size or size > param_node.lsCountNode():
> |   File
> "/home/kuberasamrat/poky-chrome/build/tmp/sysroots/x86_64-linux/usr/lib/python2.6/site-packages/libxml2.py",
> line 2983, in lsCountNode
> |     ret = libxml2mod.xmlLsCountNode(self._o)
> |* AttributeError: 'module' object has no attribute 'xmlLsCountNode'*
> *| make[2]: *** No rule to make target `depend', needed by `default'.  Stop.
> *
> *| make[2]: Leaving directory
> `/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src/mesa/es'
> *
> *| make[1]: *** [subdirs] Error 1*
> *| make[1]: Leaving directory
> `/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/mesa-dri-7.8.2-r2/Mesa-7.8.2/src'
> *
> *| make: *** [default] Error 1*
> *| FATAL: oe_runmake failed*
> ****************************************************************************************************************************************************

This is a libxml2 issue. mesa requires libxml2 debug module (default is on), which is however disabled by "--without-debug" option. so you can try to remove this option in the libxml2 to fix this issue.

This issue is already addressed in poky upstream  before. see commit http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=032553036dcd0a4b977ab0e4e78b4af4a23e4ad6 for detail.

Regards
Ke



