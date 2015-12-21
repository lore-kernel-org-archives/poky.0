Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1796EE00C33; Mon, 21 Dec 2015 03:25:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27B23E00CAF;
	Mon, 21 Dec 2015 03:25:38 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Dec 2015 03:25:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,459,1444719600"; d="scan'208";a="845702623"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga001.jf.intel.com with ESMTP; 21 Dec 2015 03:25:38 -0800
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.163]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.13]) with mapi id
	14.03.0248.002; Mon, 21 Dec 2015 11:25:36 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Mirela Rabulea <Mirela.Rabulea@freescale.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [yocto] using Hob to run images on a custom simulator, other
	than qemu
Thread-Index: AQHRO+JQkjs3VfaAnke6FvA1yts7QA==
Date: Mon, 21 Dec 2015 11:25:36 +0000
Message-ID: <D29D8ACF.6DB8E%belen.barros.pena@intel.com>
References: <CY1PR0301MB11809C718902C817370BAE6E85E10@CY1PR0301MB1180.namprd03.prod.outlook.com>
In-Reply-To: <CY1PR0301MB11809C718902C817370BAE6E85E10@CY1PR0301MB1180.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.5.9.151119
x-originating-ip: [10.237.224.30]
MIME-Version: 1.0
Cc: "nicolae.manescu@nxp.com" <nicolae.manescu@nxp.com>
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
X-List-Received-Date: Mon, 21 Dec 2015 11:25:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <B4B141968E944744A5E5CE07E495153C@intel.com>
Content-Transfer-Encoding: quoted-printable



On 18/12/2015 16:05, "yocto-bounces@yoctoproject.org on behalf of Mirela
Rabulea" <yocto-bounces@yoctoproject.org on behalf of
Mirela.Rabulea@freescale.com> wrote:

>
>
>Hello yocto world=20
>J
>
>=20
>
>This is my first message on any yocto list, I=B9m not sure which list to
>address, so I choose the ones which seemed the most generic and suited to
>my purpose. Please redirect me if a more specific list is better
> suited to ask this question.
>
>=20
>
>The problem I see at present is: there is one single button in Hob, =B3Run
>Image=B2, which is active only for qemu images, and it is triggering the
>execution of the =B3poky\scripts\runqemu=B2 script. Please scroll down
> to the picture at end of this email to see what I=B9m talking about.
>
>=20
>
>The question I want to ask is if it would be acceptable to add more
>buttons to the =B3Image details=B2 dialog (or a new dialog to pop-up when
>=B3Run Image=B2 is clicked), in order to allow the customization of the
> simulator to be launched, basically to specify the location & command
>line of such custom simulator. Who may advise in this matter? I am
>willing to contribute with changes.

Hi Mirela,

I have asked a few people about this, because Hob is pretty much
deprecated at this point (it's being replaced by a web interface called
Toaster). They replied they would be willing to merge changes to Hob, as
long as they can be sure they won't cause any regressions.

I hope this helps.

Cheers

Bel=E9n

>
>=20
>
>The changes I anticipate would be necessary are:
>
>1.     =20
>Changes in the GUI, somewhere in the python scripts from
>=B3poky\bitbake\lib\bb\ui\crumbs\=B2, especially in imagedetailspage.py,
>maybe in builder.py
>
>2.     =20
>Be more permissive with the types of images that are allowed to run.
>Currently, there are these restrictions related to the name and extension
>of the image in =B3poky\meta\classes\ image_types.bbclass=B2, these need t=
o
>be extended/customized:
>
>RUNNABLE_IMAGE_TYPES ?=3D "ext2 ext3"
>
>RUNNABLE_MACHINE_PATTERNS ?=3D "qemu"
>
>
>=20
>
>BTW, here is how Hob =B3Image details=B2 dialog currently looks like, see
>attached picture, note that the highlighted =B3Run Image=B2 button shows u=
p
>only for qemu images.
>=20
>
>Regards,
>
>Mirela
>
>=20
>
>


