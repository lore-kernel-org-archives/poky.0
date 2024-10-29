Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB29D2AB29
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 11:58:31 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.49])
 by mx.groups.io with SMTP id smtpd.web10.17465.1730203109349822939
 for <poky@lists.yoctoproject.org>;
 Tue, 29 Oct 2024 04:58:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=JGNwex3w;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=JGNwex3w;
 spf=pass (domain: arm.com, ip: 40.107.21.49, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=XMbfus4haxvQPWvInU4IdfZvap8ExGUX2/y01T9LBQZ6vMDwm05YBuifVAHiN2Z4ztHS8fNbeNRg1yZ7uJSX+Cxy9gu/mpQUYnel0QBG3NS/8kDBxtws3uMMWKUkmfEekV5JY0cNCteSCcbE+iMac9yjZVhL1h48IU0ZuxNFvUdliF1B7UkmMeEy7ySJ9rfYY71x2CjDsmFcu+Z4NzY0sZORnB66S47URGtc0zc6/fx/hxd82OFUj8sxco1nVHBY3zqwc74ODEgAj0zueGMovxR/4WHXTG0DkICwQjrmI25wBV2WN2HlGyDONySPfLI2yOF16i5MXJARwTVzPM/Qmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NNkld7XqiOJllcDRYn94WzC5bKoApe/jacd8oMSz4QI=;
 b=Qq3/UlWUYU8TtM0cO7UIFuBR8cwPFmRIGk64f9zpcfkHPV9MsMeMSjGh99F53vgdAdA9aMLGcS6/aJcuC29QXn8JNfdFmoVtEjzoP0hJ8eulUv3EgFrN6qouPPhyOoeDS1cRQ3TABQOSFZtUMqGs76s/iMIUKRd+X1156IvV6UOTuNxb07UVH75/0Qj93ybeFd8VnyPVgp0hEQu6/FXf3QSdtwZycrNkYNmBOaPcZ585+le3GhuDPH9JnojxBiF3wubozCDR3HdLrizkpoXQjZ8ERIw60+ZR8aUYCxlablPPE9uKdqFt0j+tAcLca0DRlFsZ9K1prKHOtG6NjOPFwg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NNkld7XqiOJllcDRYn94WzC5bKoApe/jacd8oMSz4QI=;
 b=JGNwex3wcgDkrmoKCjRWFELocs6uwuslzmWibhU1o2fLcqjPBiqnn/V0e4yYxOmHiS4Vbi1fvAByufmn31AezEG3medh5KUTsdD8l44TX/HtGGigEKLLmmRrwueNiwqdDmHO9BDX1JTgUPW7DHTsLxTNT5ff30Tqd9uKaATBiwI=
Received: from DUZPR01CA0071.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c2::16) by DB9PR08MB8386.eurprd08.prod.outlook.com
 (2603:10a6:10:3d9::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.24; Tue, 29 Oct
 2024 11:58:22 +0000
Received: from DB1PEPF00050A00.eurprd03.prod.outlook.com
 (2603:10a6:10:3c2:cafe::c9) by DUZPR01CA0071.outlook.office365.com
 (2603:10a6:10:3c2::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.26 via Frontend
 Transport; Tue, 29 Oct 2024 11:58:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB1PEPF00050A00.mail.protection.outlook.com (10.167.242.42) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8114.16
 via Frontend Transport; Tue, 29 Oct 2024 11:58:22 +0000
Received: ("Tessian outbound 0fe1877cedb7:v490"); Tue, 29 Oct 2024 11:58:22 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 72f9484046aecf36
X-TessianGatewayMetadata: sZulJGLx9f530EBAk5kBXNScMlVA6YA7XpGnymCfcPO7suPgySEexJic+Re5qtWa5yLUGkrQUnurk+211Ngo7wAcCVuH3LEsnxGBsmYGweY3+chhJm38h0eopGEmSIkMElrkzXovEM54WodscM3LeWvFHTt1e1saPYXo9EKbDEg=
X-CR-MTA-TID: 64aa7808
Received: from Lbe6c8ad026a8.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 7FE0A314-53D1-4B8C-ABE4-D329E946A8A6.1;
	Tue, 29 Oct 2024 11:58:15 +0000
Received: from EUR02-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id Lbe6c8ad026a8.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 29 Oct 2024 11:58:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lukhHfMyuonebkCo8ZFBEIxD0yogfk6MX5B4sQZK5phOLGzhjSs+bm5MvagMx/RWdIRW81WRpW5N5VlfNqpFDKmSkTKp5gPbYoO7MtYu/smhglpApqiOAFe/CsY7GuTZ0w/JqLvAjMV8nJuaMI88hivZfUtDCmfrl7mYBLe+u82EADSAwPEPdOU9NcoBvBOcrHiCoF0GxAWZqH7w9qeGgd9lVICV5ofJStL+yzjonB1ufx9OEAN0/8WQhFTxLrvPXT0MpEi/BfYj4dSnVKy3QcoCdlaNfDRvH0V2dvoq9gj13uGqj64B2js8JrIvjyBgpki8VcoOXvy3s4527ThCvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NNkld7XqiOJllcDRYn94WzC5bKoApe/jacd8oMSz4QI=;
 b=vdo94MzDR2mjh/7yPEM/53GxAqIwuUhb3pfS3w4HvohHWDKK1BQjMTbQoGITxHQnf+hDGyDQSDbtgGH9gWunmnoPW7lXPgajD7qQCmBlo2yJ/10vfWV4TTsD1uK1LNWbgDPqZJ38fbVNmqH0Lwu/FziAuXtLu03+6dvRULUJMrFLH79ZWQAbi0+DB7cTl0KbCHYkt37txtr3Z6GgHmHFoWBO/OxMYo/d8RJdp64kJf08rEaYdRUJGxYhdoxb4Zyw1ixCAUyHbWS+6JxYTQ1SZfAnZT/6Rdm3DLjA5vAMml6BgzRZRLpmP1mjaL2mq6ZdaDMTJpCybLBntpqqAlH2ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NNkld7XqiOJllcDRYn94WzC5bKoApe/jacd8oMSz4QI=;
 b=JGNwex3wcgDkrmoKCjRWFELocs6uwuslzmWibhU1o2fLcqjPBiqnn/V0e4yYxOmHiS4Vbi1fvAByufmn31AezEG3medh5KUTsdD8l44TX/HtGGigEKLLmmRrwueNiwqdDmHO9BDX1JTgUPW7DHTsLxTNT5ff30Tqd9uKaATBiwI=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAWPR08MB9008.eurprd08.prod.outlook.com (2603:10a6:102:341::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.27; Tue, 29 Oct
 2024 11:58:09 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%3]) with mapi id 15.20.8093.024; Tue, 29 Oct 2024
 11:58:09 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "mikko.rapeli@linaro.org" <mikko.rapeli@linaro.org>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH 2/4] genericarm64.conf: add AMD Kria KV260 serial
 consoles
Thread-Topic: [poky] [PATCH 2/4] genericarm64.conf: add AMD Kria KV260 serial
 consoles
Thread-Index: AQHbKdlyrCR7iqBUQ02gN7vvnCkUOLKdn+QA
Date: Tue, 29 Oct 2024 11:58:09 +0000
Message-ID: <9CEA0C25-4CDA-4241-AC1E-3585FE087712@arm.com>
References: <20241029080544.5486-1-mikko.rapeli@linaro.org>
 <20241029080544.5486-2-mikko.rapeli@linaro.org>
In-Reply-To: <20241029080544.5486-2-mikko.rapeli@linaro.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3776.700.51.11.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAWPR08MB9008:EE_|DB1PEPF00050A00:EE_|DB9PR08MB8386:EE_
X-MS-Office365-Filtering-Correlation-Id: 6eadb722-98ef-4faf-d641-08dcf810fcb4
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?PwVMuYYsn7VsHTIv33puJpe+ZiHZwJ8+3z5DYkxfLP0CeWnWlKh+3ucZKg8l?=
 =?us-ascii?Q?QDZEMtY0BQF3ArO4n6otklmrlqbkvfmciamT2gVtMyp8cSFq6iHOFjVWf8I7?=
 =?us-ascii?Q?KHuIzbPoin9m9ZX1QjO2ql5V/oY/pxutlqDuqvPMmQxzHL9dldphodWkIYW7?=
 =?us-ascii?Q?TLWyKuOrw92WVLm27Ca9z3HProphywhW5uKjv1l5oVYO2EsUZFPAiGw2LLM+?=
 =?us-ascii?Q?V8gDlnyf9lKsZDvIxkTom9sI0dzTgMn72PD6zB8DYDwUXdWoNBMziEibTJ5G?=
 =?us-ascii?Q?WLmCQ588/nhYzneRhPVU7VF1oMqAaf9ADr3R6Ojq7kA4K8Puj5fAaHswWPSu?=
 =?us-ascii?Q?U99+cecGyOUg8/UkCDxQQTWkF28ozhm0HPLEeJyQqv5nORykS84WWX4xV97p?=
 =?us-ascii?Q?oRGRh1slyltFZ3F75dUO1NiTuzuOkYeXDGnZvbS2BYMPLDJlzCsF0fsBZiNr?=
 =?us-ascii?Q?Tg+txuksthF/JSPS7RRFI0qYsB7RZxqaIcccejvstbcfi26wrMkAk87IunOS?=
 =?us-ascii?Q?4dnnWkZN+M9nQUKKTw+RVX0bM5h9hJJHGX9/vrSlbySX4GUn/5kesObSu5c+?=
 =?us-ascii?Q?aqnTTRD2H1ccOoyXcP06RAgIjkNhawuMedoHqTDik+o+sBTrAwZjztsGribU?=
 =?us-ascii?Q?BlZmey57fqTI3Id4BmUjmE+VKfeShBp+twDQzXTggOZTP5ADEqDoFvVycz8U?=
 =?us-ascii?Q?qmUcszbecO6HP0/aa+BvZ9czY5wRITqaK6ccm821rMxIeM3TOw6yEXo8EZAY?=
 =?us-ascii?Q?IV1Yymw12ZpazhbSYuLKB81NTY5gXENUiPhVxebOV/RcvMUH+r8tQKYmQMqE?=
 =?us-ascii?Q?dfGKYJRqBOz5o4MaIz9gc/3d0hRkVuyQVfjgahQpnbM7TEglNZU5AJY5Xfzx?=
 =?us-ascii?Q?u7yQuxrogFN3EzqHzx6M/jtW78I09ttT1zHVEf/gLnxV9l7MEt02A2+xxkf1?=
 =?us-ascii?Q?xlGqjnJlcHqOTn/9gBdvBQPwAaAUolN5fv3kpM7G8JxwqFLx0kKDBL+QRjUb?=
 =?us-ascii?Q?4BSw3TU8E5XhwSQOe+dInUe/rB9QxGfyVqRDcCQdMl4NIv8esx6WFUKeBU9r?=
 =?us-ascii?Q?2+x1ei0edQU/sPGMMZi9SK4kLenwf90yq8CgQq+kR7ATlx6Jzf1UdKWmaBSJ?=
 =?us-ascii?Q?lEOUEnusAqHwWb2ffB5NsKJ9eLzXGZ97W/BoDI1QEPRIIiTyIA7yk89mfw2A?=
 =?us-ascii?Q?JQJ91gYDgY8yg2InRvkgD+OK/7Kr7ZjDgdeVqHCnW5oFtYpZfMqFhp02SIZ8?=
 =?us-ascii?Q?vhM1mNyzHqNjE8qJg5Lhi+uK6eqU1tgWOiiL5nrBnnPDOikN4svlHDl+nFGk?=
 =?us-ascii?Q?ANY0E54BKUayogDr31s24157I68AY/+tQn7zx5EQm7VdCBHHVukw9J2p8rRk?=
 =?us-ascii?Q?alJGUuY=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <4D79C6C68C591B44ACCDCB12D36596F2@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9008
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF00050A00.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	aeb2ab35-3007-4dce-9d5c-08dcf810f4e4
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|35042699022|82310400026|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?Iv40RfCqkdoCkfW+PJ9H5lsl7+vDpok4T932igoMLmDwuPsWzPRfi56lhoSF?=
 =?us-ascii?Q?HLj/3d5HbsAbVxnoXQoVJdUuTtcznW9dr3WmTjXSMl+uTiTbPAgUAB75/7Jp?=
 =?us-ascii?Q?cTktJgxMHMAm9JWdmcDa1FhZmtE3Be58TzWSvFWKBBECy4gEDvelcwYSqSp4?=
 =?us-ascii?Q?W6cLmQ19h1+urb9VFqTAHMWeLsXLieXgLactGsvpNIqVw3ggjv80Nnf5GEXH?=
 =?us-ascii?Q?RJGWAiLjX48dRFXn9EZGHQ7DfsFie1PAp2RjnJ8MJzFK/7yB6Af/mibQqgjz?=
 =?us-ascii?Q?xiEi9STMMHtM/YSjgoSzfIql35Tqf1XMw12lbW1suJjknIhC24XG+T3oX6jq?=
 =?us-ascii?Q?4doR2hmcwHjuUV7/6R8ix6GnZuEX0XZwidBeUob7q3DdSE4vpqgOJ1Rtm5cI?=
 =?us-ascii?Q?DXxzC1XPbLgpOcn5teSGhe1UCrWeTF53dfpVPFyP4YSsTVDgG+l3Oc2vr1pB?=
 =?us-ascii?Q?V2muhkT3ChqJksIgoeX4ipOxjIIBoVngS53hJqgdhNC1wOhlsId4RpuIJYCT?=
 =?us-ascii?Q?U5c7P0I2fnpulVGNBOCDrOvgQ5Nmeg3OO6ynVxpQpl34Iqzce4Z+cmw4ODPi?=
 =?us-ascii?Q?wXOR3CiOCHCuVz59VdhplxpjFyhFKWNGh7SHZdxSz4NRojZX2xMHK43IyC3j?=
 =?us-ascii?Q?2i/a4go6rM3QLvU0+x4tl72nrp7ERom5T2KbOnAF/UwkEK/p5vyF7rdJSNR7?=
 =?us-ascii?Q?DHjTRV/mm3JR771TGOFHLVwuwfy7TwQL/yrRDlCJTheXuF+LbyfC5OJ70H5q?=
 =?us-ascii?Q?VGSj4wLdgcb5YrtpMKUdg655iaLUFd1BqiLncIL+qCyG7rbVjCLwukqQV6K/?=
 =?us-ascii?Q?H3SpVnzaNB8wyK7WEgC5xJDXBI9RYaRo91sdfHDpdIDvBaV5YFYfRVrRwXpT?=
 =?us-ascii?Q?8URCrqFhj83N81VVHqrmZm0ELJhiL3z/pML9fVI20EHXyt3xSLi8u+ImT+jI?=
 =?us-ascii?Q?n7eGUK/6/t+y5JOCFIbuVxwpwN+sdgStPsB+xwwE28pKcQ8eEVNuy39CdrID?=
 =?us-ascii?Q?xl0LEXaH+EGOPf/WVCgJI56WIlbtLYMRYSMZoNbmfdyKa15q1kOPI1wgWKez?=
 =?us-ascii?Q?sDBTLkdu1mpac0BMA5Llq3oZ9HOnlu2zZGOnjbrKdZskC2dSLlIE9NoSpkDg?=
 =?us-ascii?Q?/oOWEpO7sH2pnclbMXkHS8xX/2gEnyeBc43F0eHoZRKvhr5fIN+mFZP3SP1Y?=
 =?us-ascii?Q?yvGNR6KBfjpLkM2aDecd+7kfXl/pippunA1kxXWIKOWl09QMIk12y2df4hAK?=
 =?us-ascii?Q?WsRqSBJ6nBdWE/UPhMqszhjJJv5K8oFi9x0H5NZTbCa9Sz7j7BvGNFROqZDh?=
 =?us-ascii?Q?eJ++neQlJCambnVsRjnBjQ/aB5tatZc5xmv6N+WcBXkzP8jL7h6C7G7aCCbq?=
 =?us-ascii?Q?fxzt474ABan8/ZfPGEykkWWULU7kP2t6zvuht4a3Cu3BtJOSAQ=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(36860700013)(35042699022)(82310400026)(1800799024)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 11:58:22.2486
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6eadb722-98ef-4faf-d641-08dcf810fcb4
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF00050A00.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB8386
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 11:58:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13466

On 29 Oct 2024, at 08:05, Mikko Rapeli via lists.yoctoproject.org <mikko.ra=
peli=3Dlinaro.org@lists.yoctoproject.org> wrote:
>=20
> Current practice is to add new device serial devices to
> SERIAL_CONSOLES. Enables testing and test automation with
> the board. Note that SERIAL_CONSOLES get added to /etc/inittab
> and missing physical serial consoles causes respawn warnings
> at runtime:
>=20
> INIT: Id "S0" respawning too fast: disabled for 5 minutes
> INIT: Id "S1" respawning too fast: disabled for 5 minutes

The use of ttyrun should avoid the respawning issue, have you confirmed thi=
s still happens? If so, any idea why?

Ross=

