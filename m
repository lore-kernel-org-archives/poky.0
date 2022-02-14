Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.91])
 by mx.groups.io with SMTP id smtpd.web11.38417.1644865183722522987
 for <poky@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 10:59:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arrigroup.onmicrosoft.com header.s=selector1-arrigroup-onmicrosoft-com header.b=ii9eOpoG;
 spf=pass (domain: arri.de, ip: 40.107.6.91, mailfrom: ceggers@arri.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ia1syIRJbYCspLm6/2zYW4c2hBmbPirU+XDbv9+408754k+UnNNY9DNIbS/bG228BfMfgf4Td6mJWxtCyqC1sv7Fg4PZ0vR3VAO60mjPsoTB9eyu4i/HK2MT1GglkiHnIRfwx51oSRx4sjl0RhuaZucL8Phi1CYhj4KYwSligflWBPT9NHNYSTZ0e6tPFoNwmP9Zsyd7sikhOn3vRFofJ9DE6KmLc+deqpAYsw9pQC1Aw0eRCv9MsyUwHTVX0NC+eDcOPmRS58WrotGHYkWAgR/KE5T0T93/whBj48MDPCQ17AiLi6t4j1HJXp6eT9ZxRKsOJ4OeAOqNCitHre/Vjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h4As9h01+jpmg9aJlcPbT0H4qzu1B/F9lP9XbbUygTg=;
 b=dxppDEzMdCLakYxSlCYdyaVxZXyPIEj1yyNyqTkRNhp5ow3f3czCtRXn60L/B0KAsRYqoiqhH0SrdGouZpbTNcSnYPCez8KsD2qqCCdCCH0T3s4GaatFxpgAPt7oWKynD8fB6vclws5ayFbeZOFhhfCK1xbpVVBygCR4+bbLDfr46ykCUCT/ROLqzL+3oIFbpyhY0yOUjoJIDDj7L3bykbFRwAel+G7QEYR8l25n7ypNhbg7uJYf+KeY1QfTTucu2GbYJAuSdF0+8LxSXeIfq1S5CEnoPP5mUtHp4+YC4VAdTqOT5W8GrS8BLv2Z/WGtFRv9S7SyBHwkLhXPyA35CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=temperror (sender ip
 is 217.111.95.7) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=arri.de; dmarc=none action=none header.from=arri.de; dkim=none
 (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h4As9h01+jpmg9aJlcPbT0H4qzu1B/F9lP9XbbUygTg=;
 b=ii9eOpoGYfCG5NdsjCnQtBf33zdd3PY4Oq2yEXChIbUmB0cyrrsDyb5OvelGhl0MvcA+UrX1tmpsAQzSwx4VAYVfoT4StA3qcQdCKCF7y43yYDmuU0EueqwqhFcamldxP8DXDad9lNKrBknW/IUtPdSAIB/ehN++m1k+tTcg8v4=
Received: from SV0P279CA0011.NORP279.PROD.OUTLOOK.COM (2603:10a6:f10:11::16)
 by AM0PR07MB4291.eurprd07.prod.outlook.com (2603:10a6:208:bb::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.13; Mon, 14 Feb
 2022 18:59:39 +0000
Received: from HE1EUR02FT029.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:f10:11:cafe::12) by SV0P279CA0011.outlook.office365.com
 (2603:10a6:f10:11::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11 via Frontend
 Transport; Mon, 14 Feb 2022 18:59:38 +0000
X-MS-Exchange-Authentication-Results: spf=temperror (sender IP is
 217.111.95.7) smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arri.de: DNS Timeout)
Received: from mta.arri.de (217.111.95.7) by
 HE1EUR02FT029.mail.protection.outlook.com (10.152.10.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4975.11 via Frontend Transport; Mon, 14 Feb 2022 18:59:37 +0000
Received: from MucEx01.arri.de (10.10.18.25) by MucEx01.arri.de (10.10.18.25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.7; Mon, 14 Feb
 2022 19:59:36 +0100
Received: from CASHUB3.arri.de (192.168.100.104) by MucEx01.arri.de
 (10.10.18.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2375.7 via Frontend
 Transport; Mon, 14 Feb 2022 19:59:36 +0100
Received: from localhost.localdomain (192.168.54.95) by mta.arri.de
 (192.168.100.104) with Microsoft SMTP Server (TLS) id 14.3.498.0; Mon, 14 Feb
 2022 19:59:36 +0100
From: "Christian Eggers" <ceggers@arri.de>
To: Khem Raj <raj.khem@gmail.com>
CC: poky <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] gcsections: add nativesdk-cairo to exclude list
Date: Mon, 14 Feb 2022 19:59:35 +0100
Message-ID: <4181846.ejJDZkT8p0@localhost.localdomain>
Organization: Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
In-Reply-To: <CAMKF1sookosR5xzWjeT0zBtDWV8RgW+Waq38dHxuArJ4UCd-GA@mail.gmail.com>
References: <20220214075859.8593-1-ceggers@arri.de> <7360758.EvYhyI6sBW@dhcp-192-168-0-28.wgnetz.xx> <CAMKF1sookosR5xzWjeT0zBtDWV8RgW+Waq38dHxuArJ4UCd-GA@mail.gmail.com>
MIME-Version: 1.0
Return-Path: CEggers@arri.de
X-Originating-IP: [192.168.54.95]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7d9a09d0-75e2-429d-ffd2-08d9efec25a3
X-MS-TrafficTypeDiagnostic: AM0PR07MB4291:EE_
X-Microsoft-Antispam-PRVS: 
	<AM0PR07MB429154FF09257EE7299FFC30BF339@AM0PR07MB4291.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2657;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	QRFiu3AeQkf6+dmGO6n4XZN1rufDOSxN4WyB/5ou2WJGU6bwAHEBK5mJkTjs6Na2jL/Hj5LZvlROeGblWE/TFl2FZTbLF4hvlEnw1NlCGdXA/0W6Kg1XfJMC3oMtLFdxt1igQo38qA0KnLEGNCBvmhgZHPqo4vpe6E5lY4IivbKSlvTjmLDntEO1o8ZruxWuhW5Vq+gPsehFNl5lLOcpbOBUzqSSllRB1xZ8PKgkJ7zcxwgaRLP2AzNMh44WyEJ3KScyfSrM9z91/AZ1Jw+C5QqFu6BSUikDYU0H/vI8kA0/FiXWSvQoKsn/uV3LBAXPIk3pdzu9m7gCV5eXYP/ALNA7xN/88ubObFr9e6aOXD2hudhTfqYGScUa2yomUW4UaBAhJtU4UJFZLds6K4MeNDypoGZqAoQD8OnuN9dQ79+SHG94kKf9BlqVds6k7K9uv40UrnrNivwxg3UnrnHUMqtzxutGs3l1db3SEqq3iqjY2kHZUI/wL/rEiULqya348rU+r5gTPBeIlZ9WAUGGX1ahioGDyIESgkWWyLe0F6jZULLTW+2iVSIjxasPrNYrr4n8M0BUKuxd+Kq9TfaKkb7a4jbxRGHOEn8PXnmeTN0XrBkMlW44UkPOk86rze1Ed4CNt8vjrCmBVVXKthRnFw+HpWIN12FljkBD+yiUA/UEIv4JxDXGePq8LriMRNCk/DotMIJFyXP70qVEcl5//ZPs5+LcWc/fX5ojKKo8EDVRESML6h6SVu8iGaA90+BnrRR/mUoGO353NwCqBBRAG1QDXh0jyCrLH/QZceReZ+o=
X-Forefront-Antispam-Report: 
	CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230001)(4636009)(36840700001)(40470700004)(46966006)(63350400001)(26005)(508600001)(336012)(36860700001)(47076005)(40460700003)(9686003)(36916002)(426003)(7696005)(316002)(6916009)(70206006)(8936002)(2906002)(55016003)(5660300002)(4326008)(186003)(82310400004)(70586007)(8676002)(81166007)(16526019)(356005)(86362001)(39026012)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2022 18:59:37.1836
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d9a09d0-75e2-429d-ffd2-08d9efec25a3
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: 
	HE1EUR02FT029.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR07MB4291
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 14 February 2022, 19:02:35 CET, Khem Raj wrote:
> so I wonder why this test fails. Do it on nativesdk-gcc as well.

I made some test within the devshell of nativesdk-cairo (the compiler command
line is derived from config.log):

# cat conftest.c
double d __attribute__((used)) = 90904234967036810337470478905505011476211692735615632014797120844053488865816695273723469097858056257517020191247487429516932130503560650002327564517570778480236724525140520121371739201496540132640109977779420565776568942592.0;
int main() { return 0; }

# x86_64-pokysdk-linux-gcc  \
    --sysroot=/<...>/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-cairo/1.16.0-r0/recipe-sysroot
    -o conftest.no-gc  -O2 -g -feliminate-unused-debug-types -pipe 
    -fmacro-prefix-map=/<...>/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-cairo/1.16.0-r0=/usr/src/debug/nativesdk-cairo/1.16.0-r0 \
    -fdebug-prefix-map=/<...>/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-cairo/1.16.0-r0=/usr/src/debug/nativesdk-cairo/1.16.0-r0 \
    -fdebug-prefix-map=/<...>/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-cairo/1.16.0-r0/recipe-sysroot= \
    -fdebug-prefix-map=/<...>/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-cairo/1.16.0-r0/recipe-sysroot-native=
    -Wl,-O1  conftest.c

# x86_64-pokysdk-linux-gcc  \
    --sysroot=/<...>/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-cairo/1.16.0-r0/recipe-sysroot \
    -o conftest.gc  -O2 -g -feliminate-unused-debug-types -pipe \ 
    -fmacro-prefix-map=/<...>/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-cairo/1.16.0-r0=/usr/src/debug/nativesdk-cairo/1.16.0-r0 \
    -fdebug-prefix-map=/<...>/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-cairo/1.16.0-r0=/usr/src/debug/nativesdk-cairo/1.16.0-r0 \
    -fdebug-prefix-map=/<...>/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-cairo/1.16.0-r0/recipe-sysroot= \
    -fdebug-prefix-map=/<...>/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-cairo/1.16.0-r0/recipe-sysroot-native=
    -ffunction-sections -fdata-sections  -Wl,-O1  -Wl,--gc-sections conftest.c

# strings conftest.no-gc > conftest.strings.no-gc
# strings conftest.gc > conftest.strings.gc

# diff conftest.strings.no-gc conftest.strings.gc
13c13
< seesnoonGCC: (GNU) 11.2.0
---
> GCC: (GNU) 11.2.0
80c80
< GNU C17 11.2.0 -mtune=generic -march=x86-64 -g -O2 -feliminate-unused-debug-types
---
> GNU C17 11.2.0 -mtune=generic -march=x86-64 -g -O2 -feliminate-unused-debug-types -ffunction-sections -fdata-sections
127d126
< __data_start
130d128
< _IO_stdin_used
155d152
< .rodata


# objdump -s -j .data conftest.no-gc 

conftest.no-gc:     file format elf64-x86-64

Contents of section .data:
 5018 00000000 00000000 20500000 00000000  ........ P......
 5028 73656573 6e6f6f6e                    seesnoon        


# objdump -s -j .data conftest.gc

conftest.gc:     file format elf64-x86-64

Contents of section .data:
 5018 18500000 00000000                    .P......        


When I compile/link with '-ffunction-sections -fdata-sections' but without
"-Wl,--gc-sections", the final .data section contains "seesnoon". So it
looks like the linker is not really impressed by __attribute__((used)).
For me this looks like an attribute for compiling, not linking ...

When I compile without linking ('-c'), the object file also contains
"seesnoon" (in the .data.d section):

# objdump -s -j .data.d conftest.o

Can't get contents for section '.debug_info'.

conftest.o:     file format elf64-x86-64

Contents of section .data.d:
 0000 73656573 6e6f6f6e                    seesnoon


Summary: Linker garbage collection seems to work fine :-)

I have almost no knowledge about autoconf. Would it be possible
to compile this test without linking ('-c') and to analyze the
.o file instead?



