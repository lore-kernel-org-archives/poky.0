Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C916EE00C1F; Wed, 23 Dec 2015 02:21:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6E52E0088C;
	Wed, 23 Dec 2015 02:21:36 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 23 Dec 2015 02:21:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,468,1444719600"; d="scan'208";a="868119859"
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
	by fmsmga001.fm.intel.com with ESMTP; 23 Dec 2015 02:21:19 -0800
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.163]) by
	IRSMSX109.ger.corp.intel.com ([169.254.13.96]) with mapi id
	14.03.0248.002; Wed, 23 Dec 2015 10:21:18 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Mirela Rabulea <mirela.rabulea@nxp.com>, Mirela Rabulea
	<Mirela.Rabulea@freescale.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [yocto] using Hob to run images on a custom simulator, other
	than qemu
Thread-Index: AQHRPWupPt0s0NRidUezI13lo+4V/Q==
Date: Wed, 23 Dec 2015 10:21:18 +0000
Message-ID: <D2A024CD.6DE42%belen.barros.pena@intel.com>
References: <CY1PR0301MB11809C718902C817370BAE6E85E10@CY1PR0301MB1180.namprd03.prod.outlook.com>
	<D29D8ACF.6DB8E%belen.barros.pena@intel.com>
	<DBXPR04MB41628675A843378D20C88978FE50@DBXPR04MB416.eurprd04.prod.outlook.com>
In-Reply-To: <DBXPR04MB41628675A843378D20C88978FE50@DBXPR04MB416.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.5.9.151119
x-originating-ip: [10.237.224.34]
MIME-Version: 1.0
Cc: Nicolae Manescu <nicu.manescu@nxp.com>
Subject: Re: [yocto] using Hob to run images on a custom simulator, other than qemu
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 Dec 2015 10:21:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="windows-1254"
Content-ID: <FAA55C288500A748B7293D849ACE8E63@intel.com>
Content-Transfer-Encoding: quoted-printable



On 22/12/2015 11:35, "Mirela Rabulea" <mirela.rabulea@nxp.com> wrote:

>Hi Bel=E9n,
>Thanks for the answer. Is there a set of tests that would ensure there
>are no regressions? Where can it be found?

These are the test cases I can find in Testopia:

https://bugzilla.yoctoproject.org/tr_list_cases.cgi?searchstr=3Dhob&current=
_t
ab=3Dcase&summary_type=3Danywordssubstr&summary=3Dhob&field-1-0-0=3Dsummary=
&type-1-
0-0=3Danywordssubstr&value-1-0-0=3Dhob

Hopefully someone from QA can provide more details on how to run them.

If you want any input on how to present the new options in the UI, let me
know. I'll be happy to help.

Cheers

Bel=E9n

>
>Thanks,
>Mirela
>
>-----Original Message-----
>From: Barros Pena, Belen [mailto:belen.barros.pena@intel.com]
>Sent: Monday, December 21, 2015 1:26 PM
>To: Mirela Rabulea <Mirela.Rabulea@freescale.com>;
>yocto@yoctoproject.org; poky@yoctoproject.org
>Cc: nicolae.manescu@nxp.com
>Subject: Re: [yocto] using Hob to run images on a custom simulator, other
>than qemu
>
>
>
>On 18/12/2015 16:05, "yocto-bounces@yoctoproject.org on behalf of Mirela
>Rabulea" <yocto-bounces@yoctoproject.org on behalf of
>Mirela.Rabulea@freescale.com> wrote:
>
>>
>>
>>Hello yocto world
>>J
>>
>>=20
>>
>>This is my first message on any yocto list, I=B9m not sure which list to
>>address, so I choose the ones which seemed the most generic and suited
>>to my purpose. Please redirect me if a more specific list is better
>>suited to ask this question.
>>
>>=20
>>
>>The problem I see at present is: there is one single button in Hob,
>>=B3Run Image=B2, which is active only for qemu images, and it is triggeri=
ng
>>the execution of the =B3poky\scripts\runqemu=B2 script. Please scroll dow=
n
>>to the picture at end of this email to see what I=B9m talking about.
>>
>>=20
>>
>>The question I want to ask is if it would be acceptable to add more
>>buttons to the =B3Image details=B2 dialog (or a new dialog to pop-up when
>>=B3Run Image=B2 is clicked), in order to allow the customization of the
>>simulator to be launched, basically to specify the location & command
>>line of such custom simulator. Who may advise in this matter? I am
>>willing to contribute with changes.
>
>Hi Mirela,
>
>I have asked a few people about this, because Hob is pretty much
>deprecated at this point (it's being replaced by a web interface called
>Toaster). They replied they would be willing to merge changes to Hob, as
>long as they can be sure they won't cause any regressions.
>
>I hope this helps.
>
>Cheers
>
>Bel=E9n
>
>>
>>=20
>>
>>The changes I anticipate would be necessary are:
>>
>>1.     =20
>>Changes in the GUI, somewhere in the python scripts from
>>=B3poky\bitbake\lib\bb\ui\crumbs\=B2, especially in imagedetailspage.py,
>>maybe in builder.py
>>
>>2.     =20
>>Be more permissive with the types of images that are allowed to run.
>>Currently, there are these restrictions related to the name and
>>extension of the image in =B3poky\meta\classes\ image_types.bbclass=B2,
>>these need to be extended/customized:
>>
>>RUNNABLE_IMAGE_TYPES ?=3D "ext2 ext3"
>>
>>RUNNABLE_MACHINE_PATTERNS ?=3D "qemu"
>>
>>
>>=20
>>
>>BTW, here is how Hob =B3Image details=B2 dialog currently looks like, see
>>attached picture, note that the highlighted =B3Run Image=B2 button shows =
up
>>only for qemu images.
>>=20
>>
>>Regards,
>>
>>Mirela
>>
>>=20
>>
>>
>


