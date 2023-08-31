Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E28C83F37
	for <webhook@archiver.kernel.org>; Thu, 31 Aug 2023 17:04:15 +0000 (UTC)
Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web10.25.1693501452530306502
 for <poky@lists.yoctoproject.org>;
 Thu, 31 Aug 2023 10:04:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=k9KHv2Sv;
 dkim=pass header.i=@axis.com header.s=selector1 header.b=Nb6gRnls;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1693501452;
  x=1725037452;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=8yJggRA6FQPk9D/zVOQ2iSw9vXKxleB396YtHD+Vnt8=;
  b=k9KHv2Sv6JyfS88X+stWOu366KAXFOZJMOQQfYKEkD/PgB1U/UXxX43l
   8GsKsTZ6RfmZp/B/YLXoiu+DDqW8GMZn7hGsdUL9Zrr2Cxzj4W0ImgOoq
   CxYg9lYwFwN7scnNj3StXpHigR/t/6ue4lGdKu4BorGviRZCQQQtT0w4g
   +wQwTETUCyRWBEhmZ2mqwtnl0XNzCHWxqanD9g7gigz+DvQW8UBQJCAyG
   +qYs7N1XzMkGu3JAW+k8AjVuYDWOZjIEGlBVxHnCBS9GWv8Y4YepMk9Wb
   xTgytR544ZZddvrT+qQmiXWVvqbDdxYgwhfoD0LF+crccNtYRVHuenEr0
   A==;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=COghZqSHKi8mGZIp69WxlUpJUyzMUN3pAifRiG+DzufZqO9c5blue9eHU/c+v2/MbYKm6NY94R29ZQkc4HXwYm/GTBYCnX1yIhZTF47t2B0pmVMf6zSmlVfquo8l55iEVnSuJSjWosILEIr43np53R1tEpDG1VQuAF/DJ2xIy6/unQqh73ERBIRuh8++s+XILo8T2CrqoVFvRRxXTlVM+jdjayJwL5amI5mhx2YHpS1YfDfydIf7+txQIarrNvdxB+4xRbvC84qT1qEVjiR4zLnU0/qUdsV5SNZa+MT0P4GrSngciTQfaSHfhNu+XztkfR2XLBEc8SxuoV5pVGseaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8yJggRA6FQPk9D/zVOQ2iSw9vXKxleB396YtHD+Vnt8=;
 b=oFEkFPPs8jQ1xWoHHZsvBmUSpQfe//JVxEF4hge6/yTrpmsDyw07nOqp7TnsAfWzTZlBqD8JIsMdQ63185Rowb71I9J8SDqygu4Fn1OpBN3QMzRscKXDy0v7Z+31hrm0Mgo6hviKJ3NqWjMcaIgBJcHndO+F5Pwz2EQftMBw/ftwKbML+VKSYpRBciswl7vR5PkwcJxtE/lxRn+FiIx2XqEWhVv4si2MHl1mruXYVT/4O1Hu1L5azhfN4rsMndVSbGbfYSdPekTXGDowXAeF0oYtfN/GamSYe6VQ3xJdNVoKBKAVeTGY5wr15qAfN8tSbdsDby5DwVNjj54ujRBMDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axis.com; dmarc=pass action=none header.from=axis.com;
 dkim=pass header.d=axis.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8yJggRA6FQPk9D/zVOQ2iSw9vXKxleB396YtHD+Vnt8=;
 b=Nb6gRnlsqu8D8UFDPgGVcx8RTst4/avLNSS40zEZ0qMzVYA5TgUCtk7+rAYoxQKI+83bNQmG3ZvLz1tBfDDZVvpI9e4bZBRELN8CrQdl+osQWaYngQ7ht3VncBJDq8ijYhYB+nxdoXtEjoiUSPsGJQISih86U4ELmIeICR7/cFM=
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>, "poky@lists.yoctoproject.org"
	<poky@lists.yoctoproject.org>
CC: Alexander Kanavin <alex@linutronix.de>
Subject: RE: [poky] [PATCH 2/2]
 meta-poky/conf/templates/default/conf-description.txt: add a template
 description
Thread-Topic: [poky] [PATCH 2/2]
 meta-poky/conf/templates/default/conf-description.txt: add a template
 description
Thread-Index: AQHZ20yIo11h0mO7RkKOjNv8iLlp47AEophQ
Date: Thu, 31 Aug 2023 17:03:49 +0000
Message-ID: <DB5PR02MB102135CCC4F1841B25E51AF8CEFE5A@DB5PR02MB10213.eurprd02.prod.outlook.com>
References: <20230830141555.656242-1-alex@linutronix.de>
 <20230830141555.656242-2-alex@linutronix.de>
In-Reply-To: <20230830141555.656242-2-alex@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axis.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB5PR02MB10213:EE_|DU0PR02MB9917:EE_
x-ms-office365-filtering-correlation-id: 31404ae1-1bad-4be7-7f9f-08dbaa443ed1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s3aQKY7IflZnU1t0Z3EDcd5HlzJmOJ7igrwiAgKlBVioVb2n56peMW3xR+14B5nIbM/W7X4affC7M5zpO5NDoKnTekXxX0KvN20H/h2g/KMUGz2nTIpzQO8H1JqNIV90DgE5JHNDIBBWXE9CRsfFybmYC/57xMRoaw9c9OwbZ4fsL4q2mY1lJWpR1WOL0XuoY/sp0AWnK0kVcqAsXQK8TJnMur5/BBMXV0lMbIBSHIdPNQhiibRW6xxizF9sbDMk970zXzDG1ukKCrYQ4KJCYjEb6927nSRExxgO3+9Rrmh5NIRth7ZtwY0ZlDybSuUooxjx7DM3szB8ssOchAXfvDNxlVHM1tpNUS7EDP6yRqhN77KLonw607nyNXGSA5P3L2As9b6OAcL5ralx7u2xXulogQLcWmEzsJy1hYQXUvhE3+YaHDr2mJxwiIP5JSwqV/x20+ceS2Hb8go6TKWxZO9AoRpu0SwYAwsnJeG0F+7fzUWLKjx4tSW0AbhvTIFVEEaGyfE+zeSQNSWO8pNEt44X1lnfyn3n6EjcaaMtfzJweBBKm3dSDmBjj+UAFP6bS63GHH0PBHQsmRNJgKBFZNKuMxJUdGa1gwz8aLo8gNbfEAL5sP6vK/cw2Um9ppFz
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB5PR02MB10213.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(396003)(376002)(366004)(136003)(346002)(1800799009)(451199024)(186009)(41300700001)(122000001)(71200400001)(86362001)(38070700005)(38100700002)(33656002)(478600001)(83380400001)(9686003)(7696005)(53546011)(55016003)(6506007)(26005)(66556008)(2906002)(66476007)(66946007)(76116006)(64756008)(316002)(66446008)(110136005)(5660300002)(52536014)(4326008)(8676002)(8936002)(44832011);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tR1EEE4B31wZ38Grd2H7XjssOY4vnbvWQ1lSCtWz2E0Uqb3ueA2ZvSKxFCfs?=
 =?us-ascii?Q?YookixUvxH8fuQRQtN9P5RqQxJUBxZDUnlQQNDnNL7FK7H1XheSAoNu2NX4Q?=
 =?us-ascii?Q?zFl8m/mWv41zonG+UlmrD0etsxXswddLmesxOavHbJfungeD9FJIoLlSO1Q0?=
 =?us-ascii?Q?nONoILtiO/i8jDn3PPHdkcY9HZi2sF7ahMhkRSM0bHIbzmiawmQhe+lw6Rr7?=
 =?us-ascii?Q?XOne+cvbVIl5/h7l1IZ5o1RKJYKbQA8yrr0qKY7OvMu/atTi/Syc510XdT5J?=
 =?us-ascii?Q?E911t85FjX0JVWYg0mOBAM8J1ZzBJBfNbgcOoiTQ5y4iTcz1BIw3rzsnD4B4?=
 =?us-ascii?Q?2HLc/OsAGBEHIVxNSjaTH9Q8UgFq+9jUsyy5JSlvnjIoFgwKGeNJDEJTh2B3?=
 =?us-ascii?Q?Z5w0/zeTZhAY3nCbRYzEZhQpbHwMOpo8qOEVc6bsnkIGmhbDB2nDCQRPePIc?=
 =?us-ascii?Q?9qJHLrWa3ndC7aQbMvR4LaJ3n5CXOjkZuIwPV+FZGswku/5uA+xyOS+1yG76?=
 =?us-ascii?Q?FQtapEcH0I3vu4sdOT8BZyhBsE/IuA/qs9tiMqKel3ru9hyNz36GXZ9BOLaB?=
 =?us-ascii?Q?MROhsm+itWu6U0kwn/pGG2Fh74WDWJ3T6FqIBor8hlT/sTO9m+eIG2TE7Si8?=
 =?us-ascii?Q?27Rp/KZcxIs38TYNMc8OMLyorChqJ3XEaGeNU0aLDiSyOOrDbkUFS63qfvIu?=
 =?us-ascii?Q?l6+KSPQieJMKOUTMwZh1cYOuZosHlvABhJK3XEryvrfZrbfK32jHhwwIN+9M?=
 =?us-ascii?Q?vJH4G2g4OsQgGaCcmY1xQg4p5rNGcuKjOxwPPPeoKwpusIVobugw9exiZT5e?=
 =?us-ascii?Q?vsQhIsyRBV5iT4JLEviQslx4pbVuxJyMFD/c4fRid68P99zUlGMZ0mnosjoz?=
 =?us-ascii?Q?qBSS0KRbpxbGZmiXR2svUBOvZA0fkrdDPpV/IZNN0a1EWgpiYjNFegS7uCDD?=
 =?us-ascii?Q?fB7xhsBcnzCOHvbfUBBNCryB/amzcBtuDhTFaZDtW7wcW7+jrtJTCob4+knc?=
 =?us-ascii?Q?8hgox3nFrdlfyDM/x8KkQdhXDzl1rV6Wnht1auKRx5SCE56fVfk4pc0O39Ro?=
 =?us-ascii?Q?nn6lcYb71pZ2pkgJCe83nFe7KGDYDYpYP8ghgru8eHvwqYx0EqLPXPYKEQVc?=
 =?us-ascii?Q?kHnv+eIJwZRmcE4NLLvOBIGn8rn9mqUJxKaWAvo+EJIiwPKB0TfVmb/6v+67?=
 =?us-ascii?Q?hJbhFbTVaSkkAS1hRxPnFVmGLm4nfht+PekgJPehD6+VSxnn/3I65C69XYnZ?=
 =?us-ascii?Q?kwWtpgj2T5F+CkYsKCfWf4lbFAUGUIzjLoBFGt3B+sadcbU/4CeRdRhTViGL?=
 =?us-ascii?Q?M7VBUwhdSmY3JCCMJzYyFZBWjUhcM8TfSC8WpY0uKeDQbV16zPXks6Q4R39X?=
 =?us-ascii?Q?rvQPm6IjB/ZEZNC5AdSc/cOcPCy5ktsuWLNAtN2L84k2CEb/GyyGefWgfM2X?=
 =?us-ascii?Q?8L9NV+4J6W4rxbu7yTnUQn9NdihybFAINxHbW/5oIqgRefeMt5H4W3nylYKP?=
 =?us-ascii?Q?iHvQCEUJfm7Z2aVeaPDU9FbLOIhyQ8bXZsvmdj0WdGWBvvgQPsih8wvUkS8f?=
 =?us-ascii?Q?7v+LxLbyW4ofs2GCLIM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB5PR02MB10213.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31404ae1-1bad-4be7-7f9f-08dbaa443ed1
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2023 17:03:49.1096
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bKh2ZIbaEba2vEmF2LzD77kc0VHZq22xjDqHtpm0alvmpAUqZjHqfX4jYBGS0mUa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR02MB9917
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 31 Aug 2023 17:04:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13142

> -----Original Message-----
> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf=
 Of Alexander Kanavin
> Sent: den 30 augusti 2023 16:16
> To: poky@lists.yoctoproject.org
> Cc: Alexander Kanavin <alex@linutronix.de>
> Subject: [poky] [PATCH 2/2] meta-poky/conf/templates/default/conf-descrip=
tion.txt: add a template description
>=20
> There is a need to separate the template notes (which are lengthy
> instructions about how to use the template) and template description
> (which is a short explanation of what the template is for).
>=20
> This patch adds such a description for the poky default template,
> and updates to the tools will follow.
>=20
> Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> ---
>  meta-poky/conf/templates/default/conf-description.txt | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 meta-poky/conf/templates/default/conf-description.txt
>=20
> diff --git a/meta-poky/conf/templates/default/conf-description.txt b/meta=
-poky/conf/templates/default/conf-description.txt
> new file mode 100644
> index 00000000000..8fc03030c7f
> --- /dev/null
> +++ b/meta-poky/conf/templates/default/conf-description.txt
> @@ -0,0 +1 @@
> +This is the default build configuration for the Poky reference distribut=
ion.
> --
> 2.30.2

To use the same nomenclature as for the variables, how about calling=20
this conf-summary.txt instead? Compare to SUMMARY vs DESCRIPTION.

//Peter


