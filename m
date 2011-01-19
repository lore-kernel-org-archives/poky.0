Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id E13014C81065
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 04:42:40 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0JAiRZD019657; Wed, 19 Jan 2011 10:44:27 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id KPb-Mgcbi5cQ; Wed, 19 Jan 2011 10:44:27 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0JAiHqO019633
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 19 Jan 2011 10:44:24 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Cui, Dexuan" <dexuan.cui@intel.com>
In-Reply-To: <1295432030.14388.21148.camel@rex>
References: <1865303E0DED764181A9D882DEF65FB685BC552DE0@shsmsx502.ccr.corp.intel.com>
	<1295432030.14388.21148.camel@rex>
Date: Wed, 19 Jan 2011 10:42:18 +0000
Message-ID: <1295433738.14388.21241.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: strange libgcc build failure in autobuilder
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
X-List-Received-Date: Wed, 19 Jan 2011 10:42:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-01-19 at 10:13 +0000, Richard Purdie wrote:
> On Wed, 2011-01-19 at 17:30 +0800, Cui, Dexuan wrote:
> > I saw some libgcc(the new recipe I added days ago) failure that I can't reproduce locally.
> > e.g.,  "qemux86 poky-image-sdk failed": http://autobuilder.pokylinux.org:8010/builders/nightly-internal-incremental/builds/16/steps/shell_5/logs/stdio
> > 
> > libgcc's do_package failed:
> > ERROR: Error executing a python function in /builds2/pokybuilds/nightly-internal/build/meta/recipes-devtools/gcc/libgcc_4.5.1.bb:
> > IOError: [Errno 2] No such file or directory: '/builds2/pokybuilds/nightly-internal/build/build/tmp/sysroots/i586-poky-linux/shlibs/cairo-perf-utils.list'
> > 
> > It's odd -- why cario-perf-utils.list is involved...
> 
> I've seen these errors before, they happen when one process
> moves/deletes files in the shlibs directory while another is accessing
> them.
> 
> In package_do_shlibs there is a lock to guard against it:
> 
> lf = bb.utils.lockfile(bb.data.expand("${PACKAGELOCK}", d))
> 
> so its as if something is failing with the lock, or accessing those
> files without holding the lock...

In particular, this build was an incremental, and there were do_setscene
calls which were uninstalling sstate data from the sysroots running at
the same time libgcc was packaging.

There is a missing lock in setscene's uninstall which probably needs to
take PACKAGELOCK. We could really do with some kind of read/write lock
here since multiple readers are desirable and its a potential
performance bottleneck...

Cheers,

Richard


