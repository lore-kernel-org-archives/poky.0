Return-Path: <bogdan.purcareata@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 393F6E0080C; Thu, 23 Oct 2014 04:26:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [207.46.100.116 listed in list.dnswl.org]
X-Greylist: delayed 5598 seconds by postgrey-1.32 at yocto-www;
	Thu, 23 Oct 2014 04:26:19 PDT
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0116.outbound.protection.outlook.com [207.46.100.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3BF4E00799
	for <poky@yoctoproject.org>; Thu, 23 Oct 2014 04:26:19 -0700 (PDT)
Received: from BY2PR03MB189.namprd03.prod.outlook.com (10.242.36.140) by
	BY2PR03MB191.namprd03.prod.outlook.com (10.242.36.143) with Microsoft
	SMTP Server (TLS) id 15.0.1054.13; Thu, 23 Oct 2014 11:26:15 +0000
Received: from BY2PR03MB189.namprd03.prod.outlook.com ([169.254.6.90]) by
	BY2PR03MB189.namprd03.prod.outlook.com ([169.254.6.90]) with mapi id
	15.00.1054.004; Thu, 23 Oct 2014 11:26:15 +0000
From: "bogdan.purcareata@freescale.com" <bogdan.purcareata@freescale.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [poky] [PATCH] shadow: enable support for subordinate IDs
Thread-Index: AQHP7qUjadsVpj/HCEWtzsx0AcW27pw9hNwAgAAGAeA=
Date: Thu, 23 Oct 2014 11:26:15 +0000
Message-ID: <bd8379c405364af48546718ceaaac022@BY2PR03MB189.namprd03.prod.outlook.com>
References: <1414082196-15045-1-git-send-email-bogdan.purcareata@freescale.com>
	<7860875.0C67ZVcTkJ@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <7860875.0C67ZVcTkJ@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.88.166.1]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:BY2PR03MB191;
x-forefront-prvs: 0373D94D15
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(13464003)(52604005)(51704005)(199003)(24454002)(189002)(377454003)(54356999)(101416001)(80022003)(46102003)(31966008)(97736003)(76576001)(76176999)(74316001)(95666004)(50986999)(99286002)(106116001)(4396001)(107046002)(19580395003)(92566001)(19580405001)(85306004)(66066001)(110136001)(105586002)(77096002)(21056001)(99396003)(85852003)(86362001)(33646002)(108616004)(64706001)(2656002)(106356001)(120916001)(76482002)(87936001)(40100003)(122556002)(20776003)(24736002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BY2PR03MB191;
	H:BY2PR03MB189.namprd03.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] shadow: enable support for subordinate IDs
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
X-List-Received-Date: Thu, 23 Oct 2014 11:26:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Thursday, October 23, 2014 2:04 PM
> To: Purcareata Bogdan-B43198
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] [PATCH] shadow: enable support for subordinate IDs
>=20
> Hi Bogdan,
>=20
> On Thursday 23 October 2014 12:36:36 Bogdan Purcareata wrote:
> > Subordinate IDs support is required in order to enable creation of
> > unprivileged containers. Pull a required change from upstream in order =
to
> > make shadow cross-compile with subordinate IDs support. Enable flag in
> > recipe.
> >
> > Signed-off-by: Bogdan Purcareata <bogdan.purcareata@freescale.com>
> > ---
> >  ..._of_uid_t_and_gid_t_using_AC_CHECK_SIZEOF.patch |   41
> > ++++++++++++++++++++ meta/recipes-extended/shadow/shadow.inc           =
 |
>=20
> This patch modifies files that are part of OE-Core and thus should be sen=
t to
> the OE-Core list. Could you please re-send it there?

Yes, thanks for pointing that out!

Best regards,
Bogdan P.

