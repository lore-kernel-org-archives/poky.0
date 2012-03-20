Return-Path: <shane.wang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D4DFE013C2
	for <poky@yoctoproject.org>; Tue, 20 Mar 2012 06:18:30 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 20 Mar 2012 06:18:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="79578174"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Mar 2012 06:18:09 -0700
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 20 Mar 2012 06:18:09 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.36]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.91]) with mapi id
	14.01.0355.002; Tue, 20 Mar 2012 21:18:07 +0800
From: "Wang, Shane" <shane.wang@intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>, Gary Thomas <gary@mlbassoc.com>
Thread-Topic: [poky] Can't run HOB
Thread-Index: AQHNBmKf6P8ErAwKO0OIqSnroiHBVpZzKowQ
Date: Tue, 20 Mar 2012 13:18:06 +0000
Message-ID: <3AB6CE7F274E534CAFD089D127A8A1FC23AF2513@SHSMSX102.ccr.corp.intel.com>
References: <4F67E970.2020708@mlbassoc.com>
	<1332224739.1848.26.camel@dongxiao-osel>
In-Reply-To: <1332224739.1848.26.camel@dongxiao-osel>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Can't run HOB
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
X-List-Received-Date: Tue, 20 Mar 2012 13:18:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I suspect msg =3D "".

Can you add print(msg) at the beginning of the function? That's:

=3D=3D=3D=3D=3D=3D=3D=3D=3D
     def handler_command_failed_cb(self, handler, msg):
         print(msg)
         if msg:
             lbl =3D "<b>Error</b>\n" lbl =3D lbl + "%s\n\n" % msg dialog =
=3D
=3D=3D=3D=3D=3D=3D=3D=3D=3D

--
Shane

Xu, Dongxiao wrote on=A02012-03-20:

> On Mon, 2012-03-19 at 20:20 -0600, Gary Thomas wrote:
>> When I try HOB on my tree, it parses the metadata to around 57%
>> and then brings up what I guess is a warning (sadly, it only shows
>> an empty dialogue with an "OK" button).  This seems to happen because
>> I have meta-ti in my bblayers.conf.  I also have this statement in
>> my local.conf:
>>    # Ignore troublesome TI recipes
>>    BBMASK =3D ".*/meta-ti/recipes-misc/"
>> Maybe HOB is not honouring the BBMASK?
>=20
> Variables are still handled in bitbake server side, Hob only acts as a
> bridge between user and bitbake server.
>=20
> The phenomenon is strange since the code piece will detect if the error
> msg is None or not. If it is None, it will not pop up the error dialog.
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D
>     def handler_command_failed_cb(self, handler, msg):
>         if msg:
>             lbl =3D "<b>Error</b>\n" lbl =3D lbl + "%s\n\n" % msg dialog =
=3D
>             CrumbsMessageDialog(self, lbl, gtk.STOCK_DIALOG_WARNING)
>             dialog.add_button(gtk.STOCK_OK, gtk.RESPONSE_OK) response =3D
>             dialog.run() dialog.destroy()
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D =3D
>=20
> What's does it do if you click the "OK" button?
>=20
> Thanks,
> Dongxiao
>=20
>>=20
>=20
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



