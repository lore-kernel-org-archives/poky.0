Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 078944C8123C
	for <poky@pokylinux.org>; Thu, 27 Jan 2011 19:13:32 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 Jan 2011 17:13:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="380986623"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 27 Jan 2011 17:13:31 -0800
Date: Fri, 28 Jan 2011 09:16:56 +0800
From: Yu Ke <ke.yu@intel.com>
To: Saul Wold <saul.wold@intel.com>
Message-ID: <20110128011656.GC31432@kyu3-hedt>
References: <b7da2f$q8ksnl@fmsmga001.fm.intel.com> <4D41B2B1.2050206@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504DB5E056FB@shsmsx502.ccr.corp.intel.com>
	<4D420F02.8050306@intel.com>
MIME-Version: 1.0
In-Reply-To: <4D420F02.8050306@intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PATCH 2/5] cronie: enable multi-user crontab usage and make	cron environment complete
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
X-List-Received-Date: Fri, 28 Jan 2011 01:13:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Jan 27, 16:34, Saul Wold wrote:
> On 01/27/2011 04:07 PM, Tian, Kevin wrote:
> >>From: Wold, Saul
> >>Sent: Friday, January 28, 2011 2:00 AM
> >>>+
> >>>+pkg_postinst_${PN} () {
> >>>+	if [ "x$D" != "x" ] ; then
> >>>+		exit 1
> >>>+	fi
> >>>+
> >>>+	# below setting is necessary to allow normal user using crontab
> >>>+
> >>>+	# add 'crontab' group and setgid for crontab binary
> >>>+	grep crontab /etc/group || addgroup crontab
> >>>+	chown root:crontab /usr/bin/crontab
> >>>+	chmod 2755 /usr/bin/crontab
> >>>+
> >>>+	# allow 'crontab' group write to /var/spool/cron
> >>>+	chown root:crontab /var/spool/cron
> >>>+	chmod 770 /var/spool/cron
> >>>+
> >>>+	chmod 600 /etc/crontab
> >>>   }
> >>Kevin,
> >>
> >>I am going to hold off pulling this and the at changes.
> >>
> >>Is there a specific reason that you are creating this as a post install
> >>operation for the permission management, both this and the at recipes
> >>are doing this.  Please remember that adding additional items that run
> >>at first boot slow things down.
> >>
> >>Is it possible to run these permission changes at actual install time,
> >>instead of on the target.
> >>
> >
> >I thought about this when baking the patch, and finally went to this way because
> >there's chown operation and new group needs to be created. This has to be done
> >on the target, as you'll see in other similar recipes like dbus, hal, ...
> >
> Since this is a similar theme, is there a bbclass or method that
> could be written in order to handle adding users/groups to the
> passwd/group file during sysroot creation time, prior to packaging?
> 
> Will pseudo handle this correctly?
> 
> Maybe for 1.0 we go this route, but we should think more about this,
> in order to create the users and groups we need.
> 
> I think Ke may run into this also for the rootless X work he is doing.

Yes, rootless X also do similar things to create X user in post-inst. I will work with Kevin to see if it is possible to generialized it as one bbclass.

Regards
Ke

> 
> Sau!
> 
> 
> >Thanks
> >Kevin
> >
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

