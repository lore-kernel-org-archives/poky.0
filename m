Return-Path: <kevin.tian@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1A4D04C8007E
	for <poky@pokylinux.org>; Mon, 31 Jan 2011 19:03:59 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 31 Jan 2011 17:03:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,406,1291622400"; d="scan'208";a="382430652"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 31 Jan 2011 17:03:56 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 1 Feb 2011 09:03:55 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Tue, 1 Feb 2011
	09:03:54 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
Date: Tue, 1 Feb 2011 09:03:49 +0800
Thread-Topic: [poky] [PATCH 2/5] cronie: enable multi-user crontab usage and
	make	cron environment complete
Thread-Index: AcvBp23J77EwfOJZTIKZVvo8Il9HrgABA3Tg
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504E6294E468@shsmsx502.ccr.corp.intel.com>
References: <b7da2f$q8ksnl@fmsmga001.fm.intel.com> <4D41B2B1.2050206@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504DB5E056FB@shsmsx502.ccr.corp.intel.com>
	<4D420F02.8050306@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504DB5E05758@shsmsx502.ccr.corp.intel.com>
	<4D47545F.7010809@intel.com>
In-Reply-To: <4D47545F.7010809@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
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
X-List-Received-Date: Tue, 01 Feb 2011 01:03:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Wold, Saul
> Sent: Tuesday, February 01, 2011 8:31 AM
>=20
> On 01/27/2011 05:18 PM, Tian, Kevin wrote:
> >> From: Wold, Saul
> >> Sent: Friday, January 28, 2011 8:34 AM
> >>
> >> On 01/27/2011 04:07 PM, Tian, Kevin wrote:
> >>>> From: Wold, Saul
> >>>> Sent: Friday, January 28, 2011 2:00 AM
> >>>>> +
> >>>>> +pkg_postinst_${PN} () {
> >>>>> +	if [ "x$D" !=3D "x" ] ; then
> >>>>> +		exit 1
> >>>>> +	fi
> >>>>> +
> >>>>> +	# below setting is necessary to allow normal user using crontab
> >>>>> +
> >>>>> +	# add 'crontab' group and setgid for crontab binary
> >>>>> +	grep crontab /etc/group || addgroup crontab
> >>>>> +	chown root:crontab /usr/bin/crontab
> >>>>> +	chmod 2755 /usr/bin/crontab
> >>>>> +
> >>>>> +	# allow 'crontab' group write to /var/spool/cron
> >>>>> +	chown root:crontab /var/spool/cron
> >>>>> +	chmod 770 /var/spool/cron
> >>>>> +
> >>>>> +	chmod 600 /etc/crontab
> >>>>>     }
> >>>> Kevin,
> >>>>
> >>>> I am going to hold off pulling this and the at changes.
> >>>>
> >>>> Is there a specific reason that you are creating this as a post inst=
all
> >>>> operation for the permission management, both this and the at recipe=
s
> >>>> are doing this.  Please remember that adding additional items that r=
un
> >>>> at first boot slow things down.
> >>>>
> >>>> Is it possible to run these permission changes at actual install tim=
e,
> >>>> instead of on the target.
> >>>>
> >>>
> >>> I thought about this when baking the patch, and finally went to this =
way
> >> because
> >>> there's chown operation and new group needs to be created. This has t=
o
> be
> >> done
> >>> on the target, as you'll see in other similar recipes like dbus, hal,=
 ...
> >>>
> >> Since this is a similar theme, is there a bbclass or method that could
> >> be written in order to handle adding users/groups to the passwd/group
> >> file during sysroot creation time, prior to packaging?
> >>
> >> Will pseudo handle this correctly?
> >>
> >> Maybe for 1.0 we go this route, but we should think more about this, i=
n
> >> order to create the users and groups we need.
> >
> > Yes, we can think more about it. The less postinst works, the better.
> >
> > But generally speaking, group/permission operations in my observation a=
re
> > quick in the 1st boot. There're other postinst being heavy. :-)
> >
> The more you add to 1st boot that could be done during rootfs creation
> will always add more time, it's better to do it at rootfs time if possibl=
e.
>=20
> Will you be-able to modify this for 1.0 M3?  If not will there be a plan
> for M4 or 1.1?
>=20

Not for 1.0 M3. I would think 1.1 is better given that this task aims to im=
prove
a long-standing issue (but I'll start it in M4 window). So would you accept=
 this
patch (and also at) first since they are trying to fix functional issues? :=
-)

Thanks
Kevin

