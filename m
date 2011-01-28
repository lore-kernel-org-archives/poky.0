Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 06DE24C811FB
	for <poky@pokylinux.org>; Thu, 27 Jan 2011 18:07:56 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Jan 2011 16:07:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="701474933"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2011 16:07:56 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 28 Jan 2011 08:07:49 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 28 Jan 2011 08:07:50 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 28 Jan 2011 08:07:48 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
Date: Fri, 28 Jan 2011 08:07:47 +0800
Thread-Topic: [poky] [PATCH 2/5] cronie: enable multi-user crontab usage and
	make	cron environment complete
Thread-Index: Acu+TCOM3E2Ze7qdSqWBibaI2gqwmAAMvFjw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504DB5E056FB@shsmsx502.ccr.corp.intel.com>
References: <b7da2f$q8ksnl@fmsmga001.fm.intel.com> <4D41B2B1.2050206@intel.com>
In-Reply-To: <4D41B2B1.2050206@intel.com>
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
X-List-Received-Date: Fri, 28 Jan 2011 00:07:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Wold, Saul
> Sent: Friday, January 28, 2011 2:00 AM
> > +
> > +pkg_postinst_${PN} () {
> > +	if [ "x$D" !=3D "x" ] ; then
> > +		exit 1
> > +	fi
> > +
> > +	# below setting is necessary to allow normal user using crontab
> > +
> > +	# add 'crontab' group and setgid for crontab binary
> > +	grep crontab /etc/group || addgroup crontab
> > +	chown root:crontab /usr/bin/crontab
> > +	chmod 2755 /usr/bin/crontab
> > +
> > +	# allow 'crontab' group write to /var/spool/cron
> > +	chown root:crontab /var/spool/cron
> > +	chmod 770 /var/spool/cron
> > +
> > +	chmod 600 /etc/crontab
> >   }
> Kevin,
>=20
> I am going to hold off pulling this and the at changes.
>=20
> Is there a specific reason that you are creating this as a post install
> operation for the permission management, both this and the at recipes
> are doing this.  Please remember that adding additional items that run
> at first boot slow things down.
>=20
> Is it possible to run these permission changes at actual install time,
> instead of on the target.
>=20

I thought about this when baking the patch, and finally went to this way be=
cause
there's chown operation and new group needs to be created. This has to be d=
one
on the target, as you'll see in other similar recipes like dbus, hal, ...

Thanks
Kevin

