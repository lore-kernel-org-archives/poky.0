Received: from NAM10-MW2-obe.outbound.protection.outlook.com (NAM10-MW2-obe.outbound.protection.outlook.com [52.100.157.210])
 by mx.groups.io with SMTP id smtpd.web10.14122.1582128155088252904
 for <poky@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 08:02:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=lCooy0VP;
 spf=pass (domain: windriver.com, ip: 52.100.157.210, mailfrom: mark.asselstine@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g/6e6yOHGlCXKBD7vEeVHLDK1b3XPb6nnnptxa8H/vxVGZuqyYWiXnD3xFmdZuZ6codvDCM90L1q8EiLhj6i8kbQN3kvWJ+aMfBeyyFq54rToZIhEglZIxAxvClE3a8VAq9BIbsxl4h99kemqKgRDm3fu30B9ShuEiJ+zX8IBVISmK8/oE5bKiYfZucn9aafv8ZbPN2GwkPRlqsEOUPbQCBP2BfCDiGQvr2j4hItLV6aust47ebJP8VpMwtwIiGOvZvdwwwYqf/QkiJ8gcpjsqliYTmSoqa3RWmwOAXEOeKlAFZ1JSJUjoxXyaCANiUzO6BKmt4KMWVEZRpOrchXfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gKTjbhQb+TbJHFo5lVAWSonu0GupekLPGyuw+1Dzki4=;
 b=fzfCK2N/VTbYkh8R2OrIAWzJFXaEzn+ui/LKpKZ4Zn0WPzHJnRqgTgTrtnJFOPP5CIXVkwJCToyizDPV7F3c9QlGx/ImNIRm7s5Y7371tdakAxUoM45/eLCMRMfmrOO36QfPmzMHGh4RC2lBXzlCtVOhGaQV9kfPF62L7/M0vwTeAzHP5eQecdicR8YquKQVRqYNwgWyD7Z7LYtZ/Xmu3AVVtvedErMxBLqg4rJzKt0/EsxGQFnaRYgenRYDJRSdTsM+3/+uj6zDTCvDzVlRwW3MwQfOznJjaZzDYL9oiFhl77CSYZansd7xIJYaKSb9zeAY+Dkx6uhTO9NjLUVSCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gKTjbhQb+TbJHFo5lVAWSonu0GupekLPGyuw+1Dzki4=;
 b=lCooy0VPhMTU4ieRSIJ3ct9XDTavQMjhpO8f1gkv8VzJ7hShgwLzfI32IS1m08TY25POWWqccTbLXpOm3iMV6A7eD3TkWIbqUHk9W5KJEUNa0AzYM+J+pH0lA0+khsFY7jMrRn0BYPyCY09LERKnaiaqZ4rqm2McVNGfvBsbb/c=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Mark.Asselstine@windriver.com; 
Received: from DM6PR11MB2553.namprd11.prod.outlook.com (20.176.95.160) by
 DM6PR11MB2939.namprd11.prod.outlook.com (20.177.220.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 16:02:32 +0000
Received: from DM6PR11MB2553.namprd11.prod.outlook.com
 ([fe80::181d:5b82:121c:770a]) by DM6PR11MB2553.namprd11.prod.outlook.com
 ([fe80::181d:5b82:121c:770a%7]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 16:02:32 +0000
From: "Mark Asselstine" <mark.asselstine@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, akuster@mvista.com
Subject: Re: [poky] [PATCH] meta-poky: update to new mailing lists
Date: Wed, 19 Feb 2020 11:02:30 -0500
Message-ID: <12997872.empP6d0ieN@yow-masselst-lx1>
Organization: Wind River
In-Reply-To: <646b4cf895beb106cf3a140eeae7ff0f1eec3ad4.camel@linuxfoundation.org>
References: <20200218221301.28292-1-mark.asselstine@windriver.com> <646b4cf895beb106cf3a140eeae7ff0f1eec3ad4.camel@linuxfoundation.org>
X-ClientProxiedBy: YTOPR0101CA0007.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:15::20) To DM6PR11MB2553.namprd11.prod.outlook.com
 (2603:10b6:5:bf::32)
Return-Path: mark.asselstine@windriver.com
MIME-Version: 1.0
Received: from yow-masselst-lx1.localnet (128.224.252.2) by YTOPR0101CA0007.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b00:15::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 16:02:32 +0000
X-Originating-IP: [128.224.252.2]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bdd930a5-ec44-4065-f78b-08d7b55520f7
X-MS-TrafficTypeDiagnostic: DM6PR11MB2939:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB29394247A61D70581F9ADE56ED100@DM6PR11MB2939.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: 
	SFV:SPM;SFS:(10009020)(39850400004)(346002)(366004)(376002)(396003)(136003)(189003)(199004)(66556008)(81166006)(956004)(4326008)(66946007)(6486002)(33716001)(81156014)(478600001)(66476007)(966005)(44832011)(5660300002)(8936002)(53546011)(36916002)(8676002)(2906002)(16526019)(6512007)(316002)(9686003)(186003)(6916009)(15650500001)(26005)(86362001)(52116002)(6506007)(39026012)(197153002)(130980200001)(473944003);DIR:OUT;SFP:1501;SCL:5;SRVR:DM6PR11MB2939;H:DM6PR11MB2553.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
Received-SPF: None (protection.outlook.com: windriver.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WaFz1eZBh2huF6L1ugh/gvxXqcjmYS0SXzX5ajvMiGZvl88MFgN8eVQDcryB6MqXkT1+f1yInjOsmfvblLpKx1T1xNaS+jFt1ZHFAXYhc5hyA2BcxcQDCeo62SaqyROS38Pd67pGlZfbrL+WT9oisbNsQ18X7R1+MtGnemZpAqMJ5OUU4Mco9uw6rKCz3/L39+6gHy5l0SvVAK5qGRkt4d/Nt3ZbDTYzN5W7FGkfRdavO0M0mtUcstkv14/vfFEwrTYEBd+/ybrlMIZ9KEgOuELQhy+LcfSrKyjXHhUK742CJKNjBu9jW6ZfaIZT6ZiaINA4WvfJyN5iWt4aROeI8Foe+f2PWUSRNWHVD/ehe0R4ZLqeqlb6jPZmYOkHQuYKWImtJguJc/OuyWvJ0gi48M3AyOQY9eSWmosjuk1Jedq3Q7wHLbTk9VZ3jhQxrAnEqR8ZSwAaM4/9Hmq83B/nq+mS963+YHG9hLnDEyMzgKCKQ6r4HRFgeyW1YxA2Ka7Tz7h6SM5DBbYibCA7YaeXFHfjHt6EzBpLiDExYLR5PD7nKzOso0rdDa81xPWHrxaezlfbBBlYbKVtx2WjNMZDkiENeaRJJagioxmLDP4mirC1A9CQOeFc+FKWNviEW7XzLMG7/VpTwewXbssOCPeP5CUo9TjEVi3Ly47WH5xM9ysY2VEAEWfYdgWS0bk06oxWUDQP9CH6K6Q+2+x+P5HdZ6gihn7tSCXb+/r0Z+0/FfjjC5qMg4hu+OuJn+gsUOt0EFiCqMPyZCl1FyfTqSXhahBrzvyoXTr4c4gidAZeBZf/hcIhueCcwIb4bbnF5ZCL55R6kzvpFmBkKDU8u9aEFw/UouYJcVfEGasJTJtiJADe16oZ1i1wNBxz0wqun6SX/uui5XF1J10sesyAAvEyCbrMGjOjSVyAnhdat7qI9kc=
X-MS-Exchange-AntiSpam-MessageData: 
	gH2OFJ5Pu2DI8AeU2hrCw0FlF8cAdYGRx7Gj638zT35bG9yCHIKD8xASVmrO2lTnqRqzPcdDaufqs6Zge6oirQQCzuYZKUebwSUOfd69arjY3KMMixIU7pXn2VtAuPDg7x7M03zExbAesFciksMa/w==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bdd930a5-ec44-4065-f78b-08d7b55520f7
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 16:02:32.8082
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FMJhGW2e7+hobhc2wVT4CEv499k9O2AfgGfY7QmQOUbIXRypWTolXAv6U6DhSgIuQxwxIAzOR1ixKhqkoOwVrfjmjjTowf4cqRTPDoNAF8U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2939
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, February 19, 2020 10:31:44 A.M. EST Richard Purdie wrote:
> On Tue, 2020-02-18 at 17:13 -0500, Mark Asselstine wrote:
> > There is still some confustion around the mail list updates, as we
> > have seen on the lists recently:
> > https://lists.yoctoproject.org/g/yocto/message/48439
> > 
> > Signed-off-by: Mark Asselstine <mark.asselstine@windriver.com>
> > ---
> > 
> > Armin sent this change out a while back for zeus but I don't
> > see it there to cherry-pick. So cooked this up for master
> > and we should cherry-pick to other branches as needed.
> > 
> >  meta-poky/README.poky           | 4 ++--
> >  meta-poky/conf/distro/poky.conf | 2 +-
> >  2 files changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/meta-poky/README.poky b/meta-poky/README.poky
> > index 8cf2027..be0c6c0 100644
> > --- a/meta-poky/README.poky
> > +++ b/meta-poky/README.poky
> > 
> > @@ -53,11 +53,11 @@ bitbake:
> >  documentation:
> >      Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/
> > 
> > -    Mailing list: yocto@yoctoproject.org
> > +    Mailing list: docs@lists.yoctoproject.org
> > 
> >  meta-poky, meta-yocto-bsp:
> >      Git repository:
> >      http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-bsp)
> > 
> > -    Mailing list: poky@yoctoproject.org
> > +    Mailing list: poky@lists.yoctoproject.org
> > 
> >  Everything else should be sent to the OpenEmbedded Core mailing list.  If
> >  in doubt, check the oe-core git repository for the content you intend to
> >  modify.> 
> > diff --git a/meta-poky/conf/distro/poky.conf
> > b/meta-poky/conf/distro/poky.conf index 5c156f1..acfc1bb 100644
> > --- a/meta-poky/conf/distro/poky.conf
> > +++ b/meta-poky/conf/distro/poky.conf
> > @@ -5,7 +5,7 @@ DISTRO_CODENAME = "master"
> > 
> >  SDK_VENDOR = "-pokysdk"
> >  SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}',
> >  'snapshot')}"> 
> > -MAINTAINER = "Poky <poky@yoctoproject.org>"
> > +MAINTAINER = "Poky <poky@lists.yoctoproject.org>
> 
> I merged this without testing since how badly could this break.
> 
> Answer is the missing quote above.
> 
> I've fixed that in a followup commit.

Damn. The last thing I want to do is waste your time. Sorry about that, it is 
obvious now but I clearly overlooked it when I reviewed the change before 
sending.

Thanks Richard,
Mark

> 
> Cheers,
> 
> Richard




