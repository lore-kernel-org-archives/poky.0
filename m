Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44817C7EE2E
	for <webhook@archiver.kernel.org>; Fri,  9 Jun 2023 07:31:07 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.43])
 by mx.groups.io with SMTP id smtpd.web10.7759.1686295857486521153
 for <poky@lists.yoctoproject.org>;
 Fri, 09 Jun 2023 00:30:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@navimatix.de header.s=selector1 header.b=PIR5V+H4;
 spf=pass (domain: navimatix.de, ip: 40.107.22.43, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WcXRrq6l7BQzw8t3937wjJ/1lhmEht4EA1rR5eb5MnDg08Mf7EztnPx/wBfpXdcrFjdWh1LcPb99yY4O2qPdLohaqQVP0lPNACcq7S8kF0WN/PHaUFzt9hKyfUqznL+gIU+HjRzl9i3bicD+j0rKkLFA0d72X/UmBtovQDIOlZWyCWfw9zGehU75liyU+TfNDzq22cHOiTNocWFJwCEmLDpKnVBgT8fcHzTb0ac9PSfyfBqNVhRK/gADXatVoo3/7DbhhNoeQWGxMzQrnP9zm713Q3rxc/eRvewzU8PRMOQWyrAsy6WUfis6nTEMY30YwcU/gxemN4FRLpz2LOM2GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PP6CPodEa2QXJFv/Z+rezD/SnMivPjcN3ZmDeJSi7xE=;
 b=EgLiVxFOtROcX2ePq1lvv4j7Yt6fHreFzboTBo3oz1X1fc688qCMivGnZEAyLOPlsfaaVBFwKOf01EZHlh77UuzucyFp3FP9d1692vZWbgp8XVxHNVNqtkW/mMMyy2lM0fuIkfnAyXawo77ajOlpX9LdWSX1/e+CJWOB/2pun/lU8kzuBGW89s3DRPdjFGdkEKpstyRUWuBW2jxZIfb3cyTTALhRyHFXEufryu3KYQxWLZgjQqmWWZD9yF9h3R7l+hRdo2Rhwph5+GN7O0kxJtjCdfyCKvPOcgtOlVkz3mc+GcRCTXdqAAU13akQllkfW/RmLwqRgvigUa0X3VucPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PP6CPodEa2QXJFv/Z+rezD/SnMivPjcN3ZmDeJSi7xE=;
 b=PIR5V+H4IZThtcKYY6G4xp4YMSS1RNLauG7aCsCs5kdeiMsQ+0bvy7OC1soAMOktnPy2FFnYIIDqhAeBtvALDPGLzp23zSAggMuZdT8TjodYCtLwMTsYpIMVjqD0pJWftvCrrN1F7hrJUdm5pVM/SR3MN5sCDFYzOF+kCS40ONk=
Received: from VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:5::26) by AS8PR01MB7512.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:288::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Fri, 9 Jun
 2023 07:30:53 +0000
Received: from VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
 ([fe80::1549:2f60:3152:7383]) by
 VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
 ([fe80::1549:2f60:3152:7383%6]) with mapi id 15.20.6455.030; Fri, 9 Jun 2023
 07:30:53 +0000
From: =?iso-8859-1?Q?J=F6rg_Sommer?= <joerg.sommer@navimatix.de>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [poky] [PATCH] runqemu-ifupdown: Add support for ip tuntap
Thread-Topic: [poky] [PATCH] runqemu-ifupdown: Add support for ip tuntap
Thread-Index: AQHZmgo+56awOkkXV0OJ+e17T0iB2q+BWKIAgAC1QQ4=
Date: Fri, 9 Jun 2023 07:30:52 +0000
Message-ID: 
 <VI1PR0102MB3136877E03064F5A6FB075DDFC51A@VI1PR0102MB3136.eurprd01.prod.exchangelabs.com>
References: 
 <cc9a474aa35bc29c00dc7ed216f697a8ccbb0f6e.1686229638.git.joerg.sommer@navimatix.de>
 <5968fd664354f0ef7a8f41e93ddb6ff211016f0d.camel@linuxfoundation.org>
In-Reply-To: 
 <5968fd664354f0ef7a8f41e93ddb6ff211016f0d.camel@linuxfoundation.org>
Accept-Language: en-DE, de-DE, en-US
Content-Language: aa
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR0102MB3136:EE_|AS8PR01MB7512:EE_
x-ms-office365-filtering-correlation-id: be394583-7587-478b-8873-08db68bb74bb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 vrWhnWowSaGs72p7uxjIkW6njSR7J1T+ssBDMUQpU5gXq1I5rqZFpJ1tjdiRYtQRK3t2LM5ZUN8NxeFOcTHu/KlSXaC7bE8i6SNhN3e4BrhjaYec15SHM/eE+J53pHATkY1wQHz8K4GYNMPC5B1KyPTTIA+onZpMzEYuUi+TldjiZCigBJrIbWQmWDT9kc0nWUMs++B0nsQilY21UQm/a17CV57WDRFJ+4CjhgyG6f491Tbr6mrvGNgMP3vwMM/E0wD+1wdV/4XJQoORmIoJXXv1bT7ksCZv+EFeroVb1DbKNfPa5xKZn7FIRLlEIGcwW+REjRHgs9n+MkIyNCit88gPXtCX0UjiUx0jsJhcSQdzAecNWXY/PBvicPobcnxNMqeHaMnkYdPTEczyhwDMJd5xWSG4i0le+MtKEDrZVCmdpcRqbNypd6AbWEyQSrWNVBHnYKjyvKxrv0xCYb66bKoEKHF5unTg4GcAn6dBfAowUeuR/LioW6mNkDkJyQz4xS1iRppRgvtGHnHjGbk9Ju97zGwKznLXSdQhbkySiD/A16/Z0hsiB6OJHt0Mtr/eFf12FJWC1LNxNVXao1zksV9ohgXOfQ9DR9weUgkqldU=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0102MB3136.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(346002)(376002)(39840400004)(396003)(366004)(451199021)(66446008)(91956017)(186003)(38100700002)(38070700005)(53546011)(9686003)(6506007)(122000001)(83380400001)(26005)(52536014)(508600001)(966005)(5660300002)(316002)(86362001)(110136005)(7696005)(41300700001)(8936002)(55016003)(71200400001)(8676002)(66476007)(64756008)(19627405001)(66556008)(66946007)(76116006)(33656002)(2906002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?5+Pya/xGSBqlmXEpPfIoZ9vvsTmqYrrTocrAF3hszeVr0RGUVYQOFfMnKJ?=
 =?iso-8859-1?Q?IudyRc8jjHLlTnQJvxoqv61YkhXqqLIz0bwsr0CpZJp0YPpyMO19dfq/cf?=
 =?iso-8859-1?Q?5Eg+sxwthRelpgLQWM/Tk4eYaZKGa/Cpe8Zqy4SrfaegnYRMIFiJKj4gin?=
 =?iso-8859-1?Q?lXdY8NxUMu2o+7NTF6lnp1A+pu+P3I6o7fkML/EUOdjfcEjXefM5k4vT5n?=
 =?iso-8859-1?Q?CXFlw14GL/WqJ5Ons8/3w2wAoa9vgD85N+YgL/ceLpwNtv/9VmgCoDa6zS?=
 =?iso-8859-1?Q?t028OB4Z8i8cypAb6GNcLokHqZUHK6qAuyoAEXyuArSgFloI/DEQwvUmvY?=
 =?iso-8859-1?Q?/+U9/RUv+bAgkxsQxCquo3Z4IJmleGFuKMODzGf0I3RIBssbI5CnDwXa9p?=
 =?iso-8859-1?Q?7NPR1XwnRTyncfBz/dd6QelF+kPzs4yfUqHsOkXJtCMcAheqkWnW9G4E6l?=
 =?iso-8859-1?Q?LVriI4towml2Qmr/4v5X6IS2VZ0R/0ye7+wMwccmbNCd29k8ekDBumG1Ex?=
 =?iso-8859-1?Q?bwLxiF++AjVEcjutRrJUarL7Ooi1TfLA87gwViORUtz2ZP5wLm0Jo7B8Fa?=
 =?iso-8859-1?Q?wJg5S36bSVeS8PbdWcRShI9ltiMbxKHcBx+VICiRtRgE5blihH9wobiAB6?=
 =?iso-8859-1?Q?iJNeU//0CJ6ZagfafjFaVbfYV/OArxA2ndRS1s2klzeF5A7T46dhSqi1A/?=
 =?iso-8859-1?Q?KtwsrviJJp8VKUizbbJqm2PJWmy3SKFJ9Byuf+s4QVQFe1Gr0YaN3LU1wt?=
 =?iso-8859-1?Q?rfqJpgFG5tZV/9bbTzGuZoOQ9QtcQyetGNo3td6zESB8OZ9dERvNJ5v3dr?=
 =?iso-8859-1?Q?F/NtQhWkURUqED1LgZfV/VC2Egw7Cjd4lJ8rZiX0aqvdSA3GJA91DCkd08?=
 =?iso-8859-1?Q?hxmf45XQozJIvxpVkjHYOB4Dvm4vszHvLMdJdFTpyxRq1U44Aa99VNHy9k?=
 =?iso-8859-1?Q?//PDgk9jSEr3axs8qC3ZKIbY7o3NIyYlI3ul3/4J1HK7ngejFXCOiu+Zwu?=
 =?iso-8859-1?Q?cdxZcyS+jbktIF7+xJVvUo1HNJSdsbxsG9RzV7p5xcj1g2GJ64IZ4B+LJy?=
 =?iso-8859-1?Q?DxEvDqIl46z2mcXGQa0ldnMicA6EENpxkMepW8fTBFE0+s/Som0Y7N6nz9?=
 =?iso-8859-1?Q?80sn21JInuoQwPd+yzcsUsGvsHymasMxyJDYNsb8cIo7jPpGdff2gvw4Wd?=
 =?iso-8859-1?Q?3JeRf6/TipnGMGeOoc8IVSD8YrcQExEWNyj7MLYsZDpUfVbvQEESEyp3B5?=
 =?iso-8859-1?Q?7zRewyP5qQIX5XKLekT8hDiv7LK6RqbNiGQDY2XoaETqiUSZ1NVumki1TW?=
 =?iso-8859-1?Q?46jeqzQtA7fTXf9V/6pY8xiRg7BbT6fGBR6lmVyUHeddd3ziVO9H9YNMWK?=
 =?iso-8859-1?Q?s21DhPWhCbfT/W2wu1HLQLASTckBnFY19w/qEFFPksprGCv/A2a7ARUL0x?=
 =?iso-8859-1?Q?r5R4gAQVix4mG1zfBYGvBKrIHsw4oXr0b9PWIPNeC6zZQIgjHKy1KMVqio?=
 =?iso-8859-1?Q?TOQe4ijfL5t4jodQ3TNAQLuzvs4JOFDaU7cx3tV+KeDGA+zjIaNcfaPOKA?=
 =?iso-8859-1?Q?kaUnXo4V1/yp6gPXm+RIRKTLhkgOtaspwxHO+TlD0zhMdQHo0+nNhZ0vQH?=
 =?iso-8859-1?Q?86UNA0/boAhQS9WI5emNquAYQeISZM6s4D?=
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0102MB3136877E03064F5A6FB075DDFC51AVI1PR0102MB3136_"
MIME-Version: 1.0
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be394583-7587-478b-8873-08db68bb74bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2023 07:30:52.9062
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YVC+44Svw+UYRm7DY35nK3OG8p/QkOWn4lzNs4ub2bPYiSO16qaGXMSr8M0xrle7RthWWSntfU/7BzcVzp/jL05HdmspaPvoDahb/DZ+Fcc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR01MB7512
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 09 Jun 2023 07:31:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13079

--_000_VI1PR0102MB3136877E03064F5A6FB075DDFC51AVI1PR0102MB3136_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

@openembedded: I have proposed a patch to runqemu-ifup/down to use `ip tunt=
ap` as an alternative to tunctl for setting up the tap interface. Now the q=
uestion came up if tunctl could be fully dropped.

On 8 June 2023 22:18, Richard Purdie wrote:
> On Thu, 2023-06-08 at 15:07 +0200, J=F6rg Sommer via
> lists.yoctoproject.org wrote:
> > The *ip* command supports the creation and destruction of TAP devices s=
ince
> > 2009 and might be more likely installed on systems then *tunctl*. There=
fore
> > it should be tried to setup or teardown the TAP interface with *ip* bef=
ore
> > falling back to *tunctl*.
> >
> > https://git.kernel.org/pub/scm/network/iproute2/iproute2.git/commit/?id=
=3D580fbd88f75cc9eea0d28a48c025b090eb9419a7
> >
> > Signed-off-by: J=F6rg Sommer <joerg.sommer@navimatix.de>
> > ---
> >  scripts/runqemu-ifdown | 14 ++++++++------
> >  scripts/runqemu-ifup   | 31 +++++++++++++++++++------------
> >  2 files changed, 27 insertions(+), 18 deletions(-)
>
> This does make me wonder if we could just drop tunctl now?

I think so. But do all systems support ip, now? If so, the part for ifconfi=
g could be dropped.

> We originally had this as ifconfig couldn't do what we needed and ip
> was comparatively rare on systems. Things have changed and moved on!
>
> Did the gen-tap-devs script also need updating?

Yeah, you're right. I forgot about it.

> Also, this patch does need to go to the openembedded-core list as it is
> changing that repository which poky is built from.

Thanks for the pointing.

Mit freundlichen Gr=FC=DFen


J=F6rg Sommer

Software Developer / Programmierer



--

Navimatix GmbH

Tatzendpromenade 2

07745 Jena


T: 03641 - 327 99 0

F: 03641 - 526 306

M: joerg.sommer@navimatix.de

www.navimatix.de






Gesch=E4ftsf=FChrer: Steffen Sp=E4the, Jan Rommeley

Registergericht: Amtsgericht Jena, HRB 501480



--_000_VI1PR0102MB3136877E03064F5A6FB075DDFC51AVI1PR0102MB3136_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
@openembedded: I have proposed a patch to runqemu-ifup/down to use `ip tunt=
ap` as an alternative to tunctl for setting up the tap interface. Now the q=
uestion came up if tunctl could be fully dropped.<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof">On 8 June 2023 22:18, Richard Purdie wrote:</=
div>
<div class=3D"elementToProof">&gt; On Thu, 2023-06-08 at 15:07 +0200, J=F6r=
g Sommer via</div>
<div class=3D"elementToProof">&gt; lists.yoctoproject.org wrote:</div>
<div>&gt; &gt; The *ip* command supports the creation and destruction of TA=
P devices since</div>
<div>&gt; &gt; 2009 and might be more likely installed on systems then *tun=
ctl*. Therefore</div>
<div>&gt; &gt; it should be tried to setup or teardown the TAP interface wi=
th *ip* before</div>
<div>&gt; &gt; falling back to *tunctl*.</div>
<div class=3D"elementToProof">&gt; &gt;</div>
<div>&gt; &gt; https://git.kernel.org/pub/scm/network/iproute2/iproute2.git=
/commit/?id=3D580fbd88f75cc9eea0d28a48c025b090eb9419a7</div>
<div>&gt; &gt;</div>
<div class=3D"elementToProof">&gt; &gt; Signed-off-by: J=F6rg Sommer &lt;jo=
erg.sommer@navimatix.de&gt;</div>
<div>&gt; &gt; ---</div>
<div>&gt; &gt; &nbsp;scripts/runqemu-ifdown | 14 ++++++++------</div>
<div class=3D"elementToProof">&gt; &gt; &nbsp;scripts/runqemu-ifup &nbsp; |=
 31 +++++++++++++++++++------------</div>
<div>&gt; &gt; &nbsp;2 files changed, 27 insertions(+), 18 deletions(-)</di=
v>
<div>&gt; </div>
<div>&gt; This does make me wonder if we could just drop tunctl now?</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I think so. But do all systems support ip, now? If so, the part for ifconfi=
g could be dropped.<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
&gt; We originally had this as ifconfig couldn't do what we needed and ip
<div>&gt; was comparatively rare on systems. Things have changed and moved =
on!</div>
<div class=3D"elementToProof">&gt; </div>
<div class=3D"elementToProof">&gt; Did the gen-tap-devs script also need up=
dating?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Yeah, you're right. I forgot about it.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
&gt; Also, this patch does need to go to the openembedded-core list as it i=
s
<div class=3D"elementToProof">&gt; changing that repository which poky is b=
uilt from.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">Thanks for the
</span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; f=
ont-size: 12pt; color: rgb(0, 0, 0);"><span class=3D"b5 ContentPasted0">p</=
span></span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-ser=
if; font-size: 12pt; color: rgb(0, 0, 0);"><span class=3D"b4 ContentPasted0=
">oin</span></span><span style=3D"font-family: Calibri, Arial, Helvetica, s=
ans-serif; font-size: 12pt; color: rgb(0, 0, 0);"><span class=3D"b3 Content=
Pasted0">ting.</span></span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div>Mit freundlichen Gr=FC=DFen</div>
<div><br>
</div>
<div><br>
</div>
<div class=3D"elementToProof">J=F6rg Sommer</div>
<div><br>
</div>
<div>Software Developer / Programmierer</div>
<div><br>
</div>
<div class=3D"elementToProof"><br>
</div>
<div><br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
--&nbsp;<br>
</div>
<div class=3D"elementToProof"><br>
</div>
<div>Navimatix GmbH</div>
<div><br>
</div>
<div>Tatzendpromenade 2</div>
<div><br>
</div>
<div>07745 Jena</div>
<div><br>
</div>
<div><br>
</div>
<div>T: 03641 - 327 99 0</div>
<div><br>
</div>
<div>F: 03641 - 526 306</div>
<div><br>
</div>
<div>M: joerg.sommer@navimatix.de</div>
<div><br>
</div>
<div>www.navimatix.de</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>Gesch=E4ftsf=FChrer: Steffen Sp=E4the, Jan Rommeley</div>
<div><br>
</div>
<div>Registergericht: Amtsgericht Jena, HRB 501480</div>
<div><br>
</div>
<div><br>
</div>
</body>
</html>

--_000_VI1PR0102MB3136877E03064F5A6FB075DDFC51AVI1PR0102MB3136_--

