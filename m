Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6B9C94C80039
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 01:01:06 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jan 2011 23:01:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,321,1291622400"; d="scan'208";a="877415106"
Received: from unknown (HELO [10.255.14.43]) ([10.255.14.43])
	by fmsmga001.fm.intel.com with ESMTP; 13 Jan 2011 23:00:05 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4D2F7062.9090507@linux.intel.com>
References: <cover.1294944942.git.tom.zanussi@intel.com>
	<53e1c664d18e7cbc04b76e7df1041fa615d84716.1294944942.git.tom.zanussi@intel.com>
	<4D2F7062.9090507@linux.intel.com>
Date: Fri, 14 Jan 2011 01:00:03 -0600
Message-ID: <1294988403.28996.21.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] systemtap: new package
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
X-List-Received-Date: Fri, 14 Jan 2011 07:01:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-13 at 13:36 -0800, Darren Hart wrote:
> On 01/13/2011 11:55 AM, Tom Zanussi wrote:
> > Add systemtap, a general-purpose script-directed dynamic tracing and
> > performance analysis tool for Linux.
> >
> > Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> > ---
> >   .../conf/distro/include/poky-default-revisions.inc |    1 +
> >   meta/recipes-core/tasks/task-poky-tools.bb         |    1 +
> >   meta/recipes-kernel/systemtap/systemtap_git.bb     |   28 ++++++++++++++++++++
> >   3 files changed, 30 insertions(+), 0 deletions(-)
> >   create mode 100644 meta/recipes-kernel/systemtap/systemtap_git.bb
> >
> > diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
> > index 6b98091..c07e2c7 100644
> > --- a/meta/conf/distro/include/poky-default-revisions.inc
> > +++ b/meta/conf/distro/include/poky-default-revisions.inc
> > @@ -165,6 +165,7 @@ SRCREV_pn-screenshot ??= "292"
> >   SRCREV_pn-settings-daemon ??= "2059"
> >   SRCREV_pn-swabber-native ??= "a0792390c5d6d5a5bade7ab155c80eef3f30fa52"
> >   SRCREV_pn-sysprof ??= "38a6af1f0a45e528fd2842983da71e0f23c70d6a"
> > +SRCREV_pn-systemtap ??= "4ab3a1863bf4f472acae7a809bf2b38d91658aa8"
> >   SRCREV_pn-table ??= "4b267533ce16656cba4104fc39dc12709c1bdddf"
> >   SRCREV_pn-tasks ??= "ea52d46d691c5fce4473ea4e24a35411381f3a65"
> >   TRACECMDREV ?= "6c696cec3f264a9399241b6e648f58bc97117d49"
> > diff --git a/meta/recipes-core/tasks/task-poky-tools.bb b/meta/recipes-core/tasks/task-poky-tools.bb
> > index 60a95f9..c23a3fe 100644
> > --- a/meta/recipes-core/tasks/task-poky-tools.bb
> > +++ b/meta/recipes-core/tasks/task-poky-tools.bb
> > @@ -51,6 +51,7 @@ RRECOMMENDS_task-poky-tools-profile = "\
> >       kernel-module-oprofile \
> >       blktrace \
> >       sysprof \
> > +    systemtap \
> >       "
> >
> >   #    exmap-console
> > diff --git a/meta/recipes-kernel/systemtap/systemtap_git.bb b/meta/recipes-kernel/systemtap/systemtap_git.bb
> > new file mode 100644
> > index 0000000..f28c946
> > --- /dev/null
> > +++ b/meta/recipes-kernel/systemtap/systemtap_git.bb
> > @@ -0,0 +1,28 @@
> > +DESCRIPTION = "SystemTap - script-directed dynamic tracing and performance analysis tool for Linux"
> > +LICENSE = "GPLv2"
> > +LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
> > +
> > +DEPENDS = "elfutils"
> 
> I remember (from a couple years ago) systemtap being very dependent on 
> the elfutils version. Do we need to have a way to indicate a specific 
> version - or minimum version - so that systemtap doesn't suddenly break 
> without a helpful warning?
> 

Yeah, if it's that fragile, we probably want to lock down a known good
version...

> Otherwise, looks good to me.
> 

Thanks for reviewing it!

Tom



