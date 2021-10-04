Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
 by mx.groups.io with SMTP id smtpd.web12.8539.1633350377503910343
 for <poky@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 05:26:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fb.com header.s=facebook header.b=U/5YB/jJ;
 spf=pass (domain: fb.com, ip: 67.231.145.42, mailfrom: prvs=9911f96951=hkleynhans@fb.com)
Received: from pps.filterd (m0044010.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 194BfV5c012463;
	Mon, 4 Oct 2021 05:26:15 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com; h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 mime-version; s=facebook; bh=Ml6f7NsHdVqKlThad/6h655S0CIAIUvP8QvxsCfqwGw=;
 b=U/5YB/jJi+cZQ03odYEAEah2WLhEB2KZpyvD4ONL1pi0KJXpXagWtfDkglWJL0qPnJM9
 nLgqQ2vauy3XSwlodgu4+NVbH6pkUjIZjM1KF1e8oUf+SFj4Y4tG8GR9HYmsFXFLAq0/
 0S2YWP3FekD/JGJiHrwaCPjf+nlJzEfs674= 
Received: from mail.thefacebook.com ([163.114.132.120])
	by mx0a-00082601.pphosted.com with ESMTP id 3bg0y488xt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 04 Oct 2021 05:26:15 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Mon, 4 Oct 2021 05:26:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fbuMDMhk4qyniyolQ9DRRAr+4oonWwMC1Xyg0q1pCcr6P1fOb9W2Bxa1P6Ig4O6xGWRLDtu9W7b7fL7a6fPVqIq8iJl4UZJtM1HK0wo24z8FIXsq0Cfap2OxcyMCvYIXzPT32DuxzGMfvynOBGyoVaV/kZOV8YqqVNxlN+QNRMfGHZ34eMoRtJ/CXi3o5tU1XRGexwshcdQNA/IXkvvXmlTb6Lq6ckHPfBi6nGiudKiDJ5AQaWRs5HxhZHu6tj4UZveJEU4tXVmDv/wbuEPWVafGEsfkDZ1XFkH+KaKXz1YZJ1HFYjDPwUc41QIH7GALODkSYpPJTJFbVcATbqgCMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=93lfPrKfxyGG5bm3srbEy+rirUBb6C4XreFVFO3JhbA=;
 b=hqxj6TXscoeari3TDo19qMwaNIcfMIMQWvXl8rp+JE5acD7k0AERbPE3fLNyS52/PYs84lqSabo48LtbjP9CRteg/5R4NdcF8FKBINApj99xiUkrAhmTkIPalRyoCp1WsAvTBVOtBpmKT34KeD+RyEiA+27Ryg66zNYLxkGD6a0qsyItP/M04z+GGmVikaW/fBu6EbEWZeYaXSwni+uPAfv0EyDrK0AGH8iTyysEySOM9h0WCoANzRC4XklMUmvk2QCer8ZW+Kg2ZcvsffNfYjtQz8ADjoL2FXQ7kUf7Nvk3Rnps43ZKhAJC5afHynsQ4E2Srrrq0fYSrPrzyoESag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BY5PR15MB3572.namprd15.prod.outlook.com (2603:10b6:a03:1b2::24)
 by SJ0PR15MB4678.namprd15.prod.outlook.com (2603:10b6:a03:37b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14; Mon, 4 Oct
 2021 12:26:13 +0000
Received: from BY5PR15MB3572.namprd15.prod.outlook.com
 ([fe80::8d7a:ed38:88a7:76c5]) by BY5PR15MB3572.namprd15.prod.outlook.com
 ([fe80::8d7a:ed38:88a7:76c5%4]) with mapi id 15.20.4566.022; Mon, 4 Oct 2021
 12:26:13 +0000
From: "Henry Kleynhans" <hkleynhans@fb.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: OE-core <openembedded-core@lists.openembedded.org>,
        "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>,
        "Michael van der
 Westhuizen" <rmikey@fb.com>
Subject: Re: [poky] [PATCH] sstate: Switch to ZStandard compressor support
Thread-Topic: [poky] [PATCH] sstate: Switch to ZStandard compressor support
Thread-Index: AQHXuQ77VCYYueXpU0qfbVTuUls9U6vCrq2AgAAVECM=
Date: Mon, 4 Oct 2021 12:26:13 +0000
Message-ID: <BY5PR15MB3572F4F406FCB05FE766BDF0B8AE9@BY5PR15MB3572.namprd15.prod.outlook.com>
References: <20211004105937.1535306-1-hkleynhans@fb.com>
 <20211004105937.1535306-2-hkleynhans@fb.com>
 <CANNYZj9zhiHsra5QPGWx+8aBdLCAyKei96GAxasPFuupR+JhsA@mail.gmail.com>
In-Reply-To: <CANNYZj9zhiHsra5QPGWx+8aBdLCAyKei96GAxasPFuupR+JhsA@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 962578e7-cfa4-643e-b42c-1e08042e708e
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=fb.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8a928e7b-eed6-4d92-96cb-08d9873227e7
x-ms-traffictypediagnostic: SJ0PR15MB4678:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR15MB4678E601EBC62B3786DFCE16B8AE9@SJ0PR15MB4678.namprd15.prod.outlook.com>
x-fb-source: Internal
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ecNh/pQpI6hTeyUbp+SOXEh2TjqHONtbQ8K9U6rDACQIvaUkMGY1EnwkG4JQ43j7/7Gvb6kRbjPBcnjCRNjX4ZWJYKHUSisfmbnkI+xosSHvOo5yvfnJQZ0wKDTacMPr+NZg7Z5UOvKUhIiZYS0W3pKsDv//i1X8RLYx1rATZKUkXsPL1GiFusLsmWE+7u5Bkw2WNcXMUIsveP+mUBuTC0n7Gve6uXi0A5djUnz9sluvjpUJ1+ym0tt/4ox6f1Mrpt8+s2sx4LUNjhWfTnkpD4yxg1/KRptytk8rt3FxyaMf5mYfIHUJhHEkgk7x8nzqMR5xrrm/9i4unomRP4aqSuoZ0ONWuHUEBdasLYNCmAGxvwqDstEHr+UGnZEAujMLOJnv4UrNUArytgtAZo30hzcIYZ+EGhKMBKVUPMtdxx/9VKVCzjn+agIfF9gxx24FHkXjmkLzJEWHwmERLYYLcb5E/OYv6eMFJvaMS1DTUpIyWFrF4Cu8bF+FlvxtWDf7THQqLddBTd9xAO3GjNh8XUScOVeUx9BrMlIybY7sPRo0Jaf9nCoLe5NQcol2qt/+UCVgBy5QDn3uU6+NsFVwA+cO364VGhSxetVfBjN5gW8vfaiNo0O33iedya5opMzcvZs62J2z6a5XaZWwxJRXM0o1UrNVdoOePVOU+Lnda+aLWfFyBFsn6O4DoWpHQ96WrDbirbmXXEMmGX5oBooAn5GduyVnkQouk46P8UIFFwOqCrMABQdWccNLzpzFJjdwImO+g8ejlZdosquQPaJYLUf5m5cE0MDtGkQiO457GNGLSu2o+z7QAIjIO3X8YskH
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR15MB3572.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(316002)(30864003)(8676002)(508600001)(122000001)(2906002)(7696005)(38070700005)(9686003)(52536014)(8936002)(83380400001)(54906003)(19627405001)(38100700002)(26005)(966005)(166002)(55016002)(6506007)(86362001)(33656002)(5660300002)(4326008)(66946007)(66556008)(64756008)(6916009)(91956017)(76116006)(66446008)(53546011)(71200400001)(66476007)(186003)(21314003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L/i05FSAkGwE5PzK4KozJaIm1Yz/+Zfg7m1NsAfFR//TUm7fK7M9pDFufiD+?=
 =?us-ascii?Q?iqNhVt0h3oUrmIoZKgvFjFpNrVMVeAM370CcHtzKLuikovj+Eh6gh9XePfej?=
 =?us-ascii?Q?1cSRJhgNpjLWYNQLinq5OOVK0iscEMuY6dtdvQ14yvp96hgJl2SoTE/l1H0F?=
 =?us-ascii?Q?BJCtTgz4Run701a8Uri1/QirtC5VdbVMvP12n2OmeX0KW50g8LcuJkLiPAWT?=
 =?us-ascii?Q?1/O2//oTGvQ5Km291x/DYHCoChFFrv6h2Vp/dcEk/OB4mwl0G925XpAhc0dB?=
 =?us-ascii?Q?excDT0D1BhUFT2lkkPgr4sQkqGOtOnXKZSGEcJIZfL5hRb5JVjYuZgUJZEAA?=
 =?us-ascii?Q?RowOxO9MNpD2D7Kk9iTdxQ1Ru0A6wnVTXBbu+FwgST9SyKdUwQbZj83BXItX?=
 =?us-ascii?Q?/tj+RIa3zPndRU0PXuRA+ofymEvNnSYm9Zx72GOmqHtZnTP6a7fh6P5qUE8m?=
 =?us-ascii?Q?B/3mQQbidaElSPdSBN4u7OwllyP6OmkpKucWBfh6ZvIMazZ1Yw1b4bF7hh2K?=
 =?us-ascii?Q?qsUoi42bJFK4lpoTK3NFfIzp8invVOxPWPkVAa35YD3xZEd8l88qZz9ve6jM?=
 =?us-ascii?Q?8S3PZAPX7eiIyvfDjtlmQNqOi+oktQ7A0h6go0vpQtjIUmDdJ0/TUFIjH2yL?=
 =?us-ascii?Q?MSm2uM2CwQGMunnX2LBNP49jlhK/Xr2jQbFWBNZSA8i7PIATPMucHTIUzHRk?=
 =?us-ascii?Q?aqfOhqc8v+eV1/Kr+/biJqf/9TlvZepOUlckQc3dl8PBXRP8qHVzuRTgzAeO?=
 =?us-ascii?Q?VMik2Nn3tpYzcmCKL8+zgHMfC3ow0AXNnAtow/TIDb2VHlK5Wug7zGGYssqG?=
 =?us-ascii?Q?0RRUxMROFmGa/Sve6TXxZZjhoF9udG84KRT2mQgcvDZndMr7o4GvHCmwY8VT?=
 =?us-ascii?Q?SkgJ+1Sct77oGsEbV1MLV+t2oHgnT9WdiE4Lm/SikhSCKMu59h5l3RJPK+NB?=
 =?us-ascii?Q?ezy6lgvJwAvV/doT8ba8BMZqsw0uT23SEI7mnhs2l5fReLpiqJxyGh4wk16B?=
 =?us-ascii?Q?iIa9eiEip5e05f6N/81irUwVl/h49necL4lbp06iO4bm70g+7KPkKCZ5WKZd?=
 =?us-ascii?Q?kw19WfGqjZRs7pJbxjU+c8ackkPoxrR8djRzfRQkqd83sQR26WHbGJXL+IJm?=
 =?us-ascii?Q?vmgr2FmlOgnzcgwwO8uL6r6TcnQAYKNU0NZQzKQCpRaWk7yO4c1KGLkqKgMh?=
 =?us-ascii?Q?aEjflAP+FuYGj2Ejik/Aii67wFuJ0ZNm39iq6KWs2/T/hFWSlJGTmMJiShNL?=
 =?us-ascii?Q?kjofVoM6omO35GdFlPW82jWKE7YBoLzRPm7jhwZyuXK3YjhOKrYLIih+dtz+?=
 =?us-ascii?Q?cvOgerRSf+PhUuiOZnPf6TLb?=
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR15MB3572.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a928e7b-eed6-4d92-96cb-08d9873227e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2021 12:26:13.6659
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fqe/qeyIulgIk2YGS5p475lZSeng7k5l/lktJXsGSp75gaqNPRfdCfxIxhJ+kvo6ItvBjpO5MvEZh4r3j0WKhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR15MB4678
X-OriginatorOrg: fb.com
X-Proofpoint-GUID: 3M0AUkyHGR6VFaRNCVOCF_qNqScfeoiH
X-Proofpoint-ORIG-GUID: 3M0AUkyHGR6VFaRNCVOCF_qNqScfeoiH
X-Proofpoint-UnRewURL: 2 URL's were un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-10-04_04,2021-10-04_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 spamscore=0 clxscore=1011 mlxlogscore=999
 lowpriorityscore=0 mlxscore=0 phishscore=0 bulkscore=0 impostorscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110040086
X-FB-Internal: deliver
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_BY5PR15MB3572F4F406FCB05FE766BDF0B8AE9BY5PR15MB3572namp_"

--_000_BY5PR15MB3572F4F406FCB05FE766BDF0B8AE9BY5PR15MB3572namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

I cannot see abelloni/kirkstone-next here: http://git.yoctoproject.org/cgit=
/cgit.cgi/poky/refs/heads

Do I need to get them somewhere else?

Kind regards, Henry
________________________________
From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> on behalf o=
f Alexander Kanavin <alex.kanavin@gmail.com>
Sent: 04 October 2021 12:10
To: Henry Kleynhans <hkleynhans@fb.com>
Cc: OE-core <openembedded-core@lists.openembedded.org>; poky@lists.yoctopro=
ject.org <poky@lists.yoctoproject.org>; Michael van der Westhuizen <rmikey@=
fb.com>
Subject: Re: [poky] [PATCH] sstate: Switch to ZStandard compressor support

ZSTD_THREADS is already defined in bitbake.conf, you do not need to redefin=
e it.
(please use abelloni/kirkstone-next for testing, it is there)

Alex

On Mon, 4 Oct 2021 at 13:00, Henry Kleynhans via lists.yoctoproject.org<htt=
p://lists.yoctoproject.org> <hkleynhans=3Dfb.com@lists.yoctoproject.org<mai=
lto:fb.com@lists.yoctoproject.org>> wrote:
This patch switches the compressor from Gzip to ZStandard for ssate cache
files.

Zstandard compression provides a significant improvement in
decompression speed as well as improvement in compression speed and disk
usage over the 'tgz' format in use.  Furthermore, its configurable
compression level offers a trade-off between time spent compressing
sstate cache files and disk space used by those files.  The reduced disk
usage also contributes to saving network traffic for those sharing their
sstate cache with others.

Zstandard should therefore be a good choice when:
* disk space is at a premium
* network speed / resources are limited
* the CI server can sstate packages can be created at high compression
* less CPU on the build server should be used for sstate decompression

Signed-off-by: Henry Kleynhans <hkleynhans@fb.com<mailto:hkleynhans@fb.com>>
---
 meta/classes/sstate.bbclass        | 30 ++++++++++++++--------
 meta/conf/bitbake.conf             |  2 +-
 scripts/sstate-cache-management.sh | 40 +++++++++++++++---------------
 3 files changed, 41 insertions(+), 31 deletions(-)

diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
index 92a73114bb..9d40c8ebe4 100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -1,17 +1,20 @@
 SSTATE_VERSION =3D "3"

+ZSTD_THREADS ?=3D "${BB_NUMBER_THREADS}"
+SSTATE_ZSTD_CLEVEL =3D "8"
+
 SSTATE_MANIFESTS ?=3D "${TMPDIR}/sstate-control"
 SSTATE_MANFILEPREFIX =3D "${SSTATE_MANIFESTS}/manifest-${SSTATE_MANMACH}-$=
{PN}"

 def generate_sstatefn(spec, hash, taskname, siginfo, d):
     if taskname is None:
        return ""
-    extension =3D ".tgz"
+    extension =3D ".tar.zst"
     # 8 chars reserved for siginfo
     limit =3D 254 - 8
     if siginfo:
         limit =3D 254
-        extension =3D ".tgz.siginfo"
+        extension =3D ".tar.zst.siginfo"
     if not hash:
         hash =3D "INVALID"
     fn =3D spec + hash + "_" + taskname + extension
@@ -37,7 +40,7 @@ SSTATE_PKGNAME    =3D "${SSTATE_EXTRAPATH}${@generate_sst=
atefn(d.getVar('SSTATE_PK
 SSTATE_PKG        =3D "${SSTATE_DIR}/${SSTATE_PKGNAME}"
 SSTATE_EXTRAPATH   =3D ""
 SSTATE_EXTRAPATHWILDCARD =3D ""
-SSTATE_PATHSPEC   =3D "${SSTATE_DIR}/${SSTATE_EXTRAPATHWILDCARD}*/*/${SSTA=
TE_PKGSPEC}*_${SSTATE_PATH_CURRTASK}.tgz*"
+SSTATE_PATHSPEC   =3D "${SSTATE_DIR}/${SSTATE_EXTRAPATHWILDCARD}*/*/${SSTA=
TE_PKGSPEC}*_${SSTATE_PATH_CURRTASK}.tar.zst*"

 # explicitly make PV to depend on evaluated value of PV variable
 PV[vardepvalue] =3D "${PV}"
@@ -825,23 +828,24 @@ sstate_create_package () {
        mkdir --mode=3D0775 -p `dirname ${SSTATE_PKG}`
        TFILE=3D`mktemp ${SSTATE_PKG}.XXXXXXXX`

-       # Use pigz if available
-       OPT=3D"-czS"
-       if [ -x "$(command -v pigz)" ]; then
-               OPT=3D"-I pigz -cS"
+       OPT=3D"-cS"
+       ZSTD=3D"zstd -${SSTATE_ZSTD_CLEVEL} -T${ZSTD_THREADS}"
+       # Use pzstd if available
+       if [ -x "$(command -v pzstd)" ]; then
+               ZSTD=3D"pzstd -${SSTATE_ZSTD_CLEVEL} -p ${ZSTD_THREADS}"
        fi

        # Need to handle empty directories
        if [ "$(ls -A)" ]; then
                set +e
-               tar $OPT -f $TFILE *
+               tar -I "$ZSTD" $OPT -f $TFILE *
                ret=3D$?
                if [ $ret -ne 0 ] && [ $ret -ne 1 ]; then
                        exit 1
                fi
                set -e
        else
-               tar $OPT --file=3D$TFILE --files-from=3D/dev/null
+               tar -I "$ZSTD" $OPT --file=3D$TFILE --files-from=3D/dev/null
        fi
        chmod 0664 $TFILE
        # Skip if it was already created by some other process
@@ -880,7 +884,13 @@ python sstate_report_unihash() {
 # Will be run from within SSTATE_INSTDIR.
 #
 sstate_unpack_package () {
-       tar -xvzf ${SSTATE_PKG}
+       ZSTD=3D"zstd -T${ZSTD_THREADS}"
+       # Use pzstd if available
+       if [ -x "$(command -v pzstd)" ]; then
+               ZSTD=3D"pzstd -p ${ZSTD_THREADS}"
+       fi
+
+       tar -I "$ZSTD" -xvf ${SSTATE_PKG}
        # update .siginfo atime on local/NFS mirror
        [ -O ${SSTATE_PKG}.siginfo ] && [ -w ${SSTATE_PKG}.siginfo ] && [ -=
h ${SSTATE_PKG}.siginfo ] && touch -a ${SSTATE_PKG}.siginfo
        # Use "! -w ||" to return true for read only files
diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index e25d632dc1..ed746bdf99 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -498,7 +498,7 @@ HOSTTOOLS +=3D " \
 HOSTTOOLS +=3D "${@'ip ping ps scp ssh stty' if (bb.utils.contains_any('IM=
AGE_CLASSES', 'testimage testsdk', True, False, d) or any(x in (d.getVar("B=
BINCLUDED") or "") for x in ["testimage.bbclass", "testsdk.bbclass"])) else=
 ''}"

 # Link to these if present
-HOSTTOOLS_NONFATAL +=3D "aws gcc-ar gpg ld.bfd ld.gold nc pigz sftp socat =
ssh sudo"
+HOSTTOOLS_NONFATAL +=3D "aws gcc-ar gpg ld.bfd ld.gold nc pigz pzstd sftp =
socat ssh sudo"

 # Temporary add few more detected in bitbake world
 HOSTTOOLS_NONFATAL +=3D "join nl size yes zcat"
diff --git a/scripts/sstate-cache-management.sh b/scripts/sstate-cache-mana=
gement.sh
index f1706a2229..d39671f7c6 100755
--- a/scripts/sstate-cache-management.sh
+++ b/scripts/sstate-cache-management.sh
@@ -114,7 +114,7 @@ echo_error () {
 # * Add .done/.siginfo to the remove list
 # * Add destination of symlink to the remove list
 #
-# $1: output file, others: sstate cache file (.tgz)
+# $1: output file, others: sstate cache file (.tar.zst)
 gen_rmlist (){
   local rmlist_file=3D"$1"
   shift
@@ -131,13 +131,13 @@ gen_rmlist (){
               dest=3D"`readlink -e $i`"
               if [ -n "$dest" ]; then
                   echo $dest >> $rmlist_file
-                  # Remove the .siginfo when .tgz is removed
+                  # Remove the .siginfo when .tar.zst is removed
                   if [ -f "$dest.siginfo" ]; then
                       echo $dest.siginfo >> $rmlist_file
                   fi
               fi
           fi
-          # Add the ".tgz.done" and ".siginfo.done" (may exist in the futu=
re)
+          # Add the ".tar.zst.done" and ".siginfo.done" (may exist in the =
future)
           base_fn=3D"${i##/*/}"
           t_fn=3D"$base_fn.done"
           s_fn=3D"$base_fn.siginfo.done"
@@ -188,10 +188,10 @@ remove_duplicated () {
   total_files=3D`find $cache_dir -name 'sstate*' | wc -l`
   # Save all the sstate files in a file
   sstate_files_list=3D`mktemp` || exit 1
-  find $cache_dir -name 'sstate:*:*:*:*:*:*:*.tgz*' >$sstate_files_list
+  find $cache_dir -iname 'sstate:*:*:*:*:*:*:*.tar.zst*' >$sstate_files_li=
st

   echo "Figuring out the suffixes in the sstate cache dir ... "
-  sstate_suffixes=3D"`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*=
:[^_]*_\([^:]*\)\.tgz.*%\1%g' $sstate_files_list | sort -u`"
+  sstate_suffixes=3D"`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*=
:[^_]*_\([^:]*\)\.tar\.zst.*%\1%g' $sstate_files_list | sort -u`"
   echo "Done"
   echo "The following suffixes have been found in the cache dir:"
   echo $sstate_suffixes
@@ -200,10 +200,10 @@ remove_duplicated () {
   # Using this SSTATE_PKGSPEC definition it's 6th colon separated field
   # SSTATE_PKGSPEC    =3D "sstate:${PN}:${PACKAGE_ARCH}${TARGET_VENDOR}-${=
TARGET_OS}:${PV}:${PR}:${SSTATE_PKGARCH}:${SSTATE_VERSION}:"
   for arch in $all_archs; do
-      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:$arch:[^:]*:[^:]*\.tgz$" =
$sstate_files_list
+      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:$arch:[^:]*:[^:]*\.tar\.z=
st$" $sstate_files_list
       [ $? -eq 0 ] && ava_archs=3D"$ava_archs $arch"
       # ${builder_arch}_$arch used by toolchain sstate
-      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:${builder_arch}_$arch:[^:=
]*:[^:]*\.tgz$" $sstate_files_list
+      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:${builder_arch}_$arch:[^:=
]*:[^:]*\.tar\.zst$" $sstate_files_list
       [ $? -eq 0 ] && ava_archs=3D"$ava_archs ${builder_arch}_$arch"
   done
   echo "Done"
@@ -219,13 +219,13 @@ remove_duplicated () {
           continue
       fi
       # Total number of files including .siginfo and .done files
-      total_files_suffix=3D`grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:=
[^:]*:[^:_]*_$suffix\.tgz.*" $sstate_files_list | wc -l 2>/dev/null`
-      total_tgz_suffix=3D`grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^=
:]*:[^:_]*_$suffix\.tgz$" $sstate_files_list | wc -l 2>/dev/null`
+      total_files_suffix=3D`grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:=
[^:]*:[^:_]*_$suffix\.tar\.zst.*" $sstate_files_list | wc -l 2>/dev/null`
+      total_archive_suffix=3D`grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]=
*:[^:]*:[^:_]*_$suffix\.tar\.zst$" $sstate_files_list | wc -l 2>/dev/null`
       # Save the file list to a file, some suffix's file may not exist
-      grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.=
tgz.*" $sstate_files_list >$list_suffix 2>/dev/null
-      local deleted_tgz=3D0
+      grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.=
tar\.zst.*" $sstate_files_list >$list_suffix 2>/dev/null
+      local deleted_archives=3D0
       local deleted_files=3D0
-      for ext in tgz tgz.siginfo tgz.done; do
+      for ext in tar.zst tar.zst.siginfo tar.zst.done; do
           echo "Figuring out the sstate:xxx_$suffix.$ext ... "
           # Uniq BPNs
           file_names=3D`for arch in $ava_archs ""; do
@@ -268,19 +268,19 @@ remove_duplicated () {
               done
           done
       done
-      deleted_tgz=3D`cat $rm_list.* 2>/dev/null | grep ".tgz$" | wc -l`
+      deleted_archives=3D`cat $rm_list.* 2>/dev/null | grep "\.tar\.zst$" =
| wc -l`
       deleted_files=3D`cat $rm_list.* 2>/dev/null | wc -l`
       [ "$deleted_files" -gt 0 -a $debug -gt 0 ] && cat $rm_list.*
-      echo "($deleted_tgz out of $total_tgz_suffix .tgz files for $suffix =
suffix will be removed or $deleted_files out of $total_files_suffix when co=
unting also .siginfo and .done files)"
+      echo "($deleted_archives out of $total_archives_suffix .tar.zst file=
s for $suffix suffix will be removed or $deleted_files out of $total_files_=
suffix when counting also .siginfo and .done files)"
       let total_deleted=3D$total_deleted+$deleted_files
   done
-  deleted_tgz=3D0
+  deleted_archives=3D0
   rm_old_list=3D$remove_listdir/sstate-old-filenames
-  find $cache_dir -name 'sstate-*.tgz' >$rm_old_list
-  [ -s "$rm_old_list" ] && deleted_tgz=3D`cat $rm_old_list | grep ".tgz$" =
| wc -l`
+  find $cache_dir -name 'sstate-*.tar.zst' >$rm_old_list
+  [ -s "$rm_old_list" ] && deleted_archives=3D`cat $rm_old_list | grep "\.=
tar\.zst$" | wc -l`
   [ -s "$rm_old_list" ] && deleted_files=3D`cat $rm_old_list | wc -l`
   [ -s "$rm_old_list" -a $debug -gt 0 ] && cat $rm_old_list
-  echo "($deleted_tgz .tgz files with old sstate-* filenames will be remov=
ed or $deleted_files when counting also .siginfo and .done files)"
+  echo "($deleted_archives or .tar.zst files with old sstate-* filenames w=
ill be removed or $deleted_files when counting also .siginfo and .done file=
s)"
   let total_deleted=3D$total_deleted+$deleted_files

   rm -f $list_suffix
@@ -289,7 +289,7 @@ remove_duplicated () {
       read_confirm
       if [ "$confirm" =3D "y" -o "$confirm" =3D "Y" ]; then
           for list in `ls $remove_listdir/`; do
-              echo "Removing $list.tgz (`cat $remove_listdir/$list | wc -w=
` files) ... "
+              echo "Removing $list.tar.zst archive (`cat $remove_listdir/$=
list | wc -w` files) ... "
               # Remove them one by one to avoid the argument list too long=
 error
               for i in `cat $remove_listdir/$list`; do
                   rm -f $verbose $i
@@ -322,7 +322,7 @@ rm_by_stamps (){
   find $cache_dir -type f -name 'sstate*' | sort -u -o $cache_list

   echo "Figuring out the suffixes in the sstate cache dir ... "
-  local sstate_suffixes=3D"`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*=
:[^:]*:[^_]*_\([^:]*\)\.tgz.*%\1%g' $cache_list | sort -u`"
+  local sstate_suffixes=3D"`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*=
:[^:]*:[^_]*_\([^:]*\)\.tar\.zst.*%\1%g' $cache_list | sort -u`"
   echo "Done"
   echo "The following suffixes have been found in the cache dir:"
   echo $sstate_suffixes
--
2.30.2





--_000_BY5PR15MB3572F4F406FCB05FE766BDF0B8AE9BY5PR15MB3572namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi Alex,<br>
<br>
I cannot see abelloni/kirkstone-next here:&nbsp;<a href=3D"http://git.yocto=
project.org/cgit/cgit.cgi/poky/refs/heads" id=3D"LPlnk845323">http://git.yo=
ctoproject.org/cgit/cgit.cgi/poky/refs/heads</a><br>
<br>
Do I need to get them somewhere else?<br>
<br>
Kind regards, Henry</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> poky@lists.yoctoproje=
ct.org &lt;poky@lists.yoctoproject.org&gt; on behalf of Alexander Kanavin &=
lt;alex.kanavin@gmail.com&gt;<br>
<b>Sent:</b> 04 October 2021 12:10<br>
<b>To:</b> Henry Kleynhans &lt;hkleynhans@fb.com&gt;<br>
<b>Cc:</b> OE-core &lt;openembedded-core@lists.openembedded.org&gt;; poky@l=
ists.yoctoproject.org &lt;poky@lists.yoctoproject.org&gt;; Michael van der =
Westhuizen &lt;rmikey@fb.com&gt;<br>
<b>Subject:</b> Re: [poky] [PATCH] sstate: Switch to ZStandard compressor s=
upport</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>ZSTD_THREADS is already defined in bitbake.conf, you do not need to re=
define it.</div>
<div>(please use abelloni/kirkstone-next for testing, it is there)<br>
</div>
<div><br>
</div>
<div>Alex<br>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, 4 Oct 2021 at 13:00, Henry =
Kleynhans via
<a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;hk=
leynhans=3D<a href=3D"mailto:fb.com@lists.yoctoproject.org">fb.com@lists.yo=
ctoproject.org</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
This patch switches the compressor from Gzip to ZStandard for ssate cache<b=
r>
files.<br>
<br>
Zstandard compression provides a significant improvement in<br>
decompression speed as well as improvement in compression speed and disk<br>
usage over the 'tgz' format in use.&nbsp; Furthermore, its configurable<br>
compression level offers a trade-off between time spent compressing<br>
sstate cache files and disk space used by those files.&nbsp; The reduced di=
sk<br>
usage also contributes to saving network traffic for those sharing their<br>
sstate cache with others.<br>
<br>
Zstandard should therefore be a good choice when:<br>
* disk space is at a premium<br>
* network speed / resources are limited<br>
* the CI server can sstate packages can be created at high compression<br>
* less CPU on the build server should be used for sstate decompression<br>
<br>
Signed-off-by: Henry Kleynhans &lt;<a href=3D"mailto:hkleynhans@fb.com" tar=
get=3D"_blank">hkleynhans@fb.com</a>&gt;<br>
---<br>
&nbsp;meta/classes/sstate.bbclass&nbsp; &nbsp; &nbsp; &nbsp; | 30 +++++++++=
+++++--------<br>
&nbsp;meta/conf/bitbake.conf&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;|&nbsp; 2 +-<br>
&nbsp;scripts/sstate-cache-management.sh | 40 +++++++++++++++--------------=
-<br>
&nbsp;3 files changed, 41 insertions(+), 31 deletions(-)<br>
<br>
diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass<br>
index 92a73114bb..9d40c8ebe4 100644<br>
--- a/meta/classes/sstate.bbclass<br>
+++ b/meta/classes/sstate.bbclass<br>
@@ -1,17 +1,20 @@<br>
&nbsp;SSTATE_VERSION =3D &quot;3&quot;<br>
<br>
+ZSTD_THREADS ?=3D &quot;${BB_NUMBER_THREADS}&quot;<br>
+SSTATE_ZSTD_CLEVEL =3D &quot;8&quot;<br>
+<br>
&nbsp;SSTATE_MANIFESTS ?=3D &quot;${TMPDIR}/sstate-control&quot;<br>
&nbsp;SSTATE_MANFILEPREFIX =3D &quot;${SSTATE_MANIFESTS}/manifest-${SSTATE_=
MANMACH}-${PN}&quot;<br>
<br>
&nbsp;def generate_sstatefn(spec, hash, taskname, siginfo, d):<br>
&nbsp; &nbsp; &nbsp;if taskname is None:<br>
&nbsp; &nbsp; &nbsp; &nbsp; return &quot;&quot;<br>
-&nbsp; &nbsp; extension =3D &quot;.tgz&quot;<br>
+&nbsp; &nbsp; extension =3D &quot;.tar.zst&quot;<br>
&nbsp; &nbsp; &nbsp;# 8 chars reserved for siginfo<br>
&nbsp; &nbsp; &nbsp;limit =3D 254 - 8<br>
&nbsp; &nbsp; &nbsp;if siginfo:<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;limit =3D 254<br>
-&nbsp; &nbsp; &nbsp; &nbsp; extension =3D &quot;.tgz.siginfo&quot;<br>
+&nbsp; &nbsp; &nbsp; &nbsp; extension =3D &quot;.tar.zst.siginfo&quot;<br>
&nbsp; &nbsp; &nbsp;if not hash:<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;hash =3D &quot;INVALID&quot;<br>
&nbsp; &nbsp; &nbsp;fn =3D spec + hash + &quot;_&quot; + taskname + extensi=
on<br>
@@ -37,7 +40,7 @@ SSTATE_PKGNAME&nbsp; &nbsp; =3D &quot;${SSTATE_EXTRAPATH}=
${@generate_sstatefn(d.getVar('SSTATE_PK<br>
&nbsp;SSTATE_PKG&nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;${SSTATE_DIR}/${SSTAT=
E_PKGNAME}&quot;<br>
&nbsp;SSTATE_EXTRAPATH&nbsp; &nbsp;=3D &quot;&quot;<br>
&nbsp;SSTATE_EXTRAPATHWILDCARD =3D &quot;&quot;<br>
-SSTATE_PATHSPEC&nbsp; &nbsp;=3D &quot;${SSTATE_DIR}/${SSTATE_EXTRAPATHWILD=
CARD}*/*/${SSTATE_PKGSPEC}*_${SSTATE_PATH_CURRTASK}.tgz*&quot;<br>
+SSTATE_PATHSPEC&nbsp; &nbsp;=3D &quot;${SSTATE_DIR}/${SSTATE_EXTRAPATHWILD=
CARD}*/*/${SSTATE_PKGSPEC}*_${SSTATE_PATH_CURRTASK}.tar.zst*&quot;<br>
<br>
&nbsp;# explicitly make PV to depend on evaluated value of PV variable<br>
&nbsp;PV[vardepvalue] =3D &quot;${PV}&quot;<br>
@@ -825,23 +828,24 @@ sstate_create_package () {<br>
&nbsp; &nbsp; &nbsp; &nbsp; mkdir --mode=3D0775 -p `dirname ${SSTATE_PKG}`<=
br>
&nbsp; &nbsp; &nbsp; &nbsp; TFILE=3D`mktemp ${SSTATE_PKG}.XXXXXXXX`<br>
<br>
-&nbsp; &nbsp; &nbsp; &nbsp;# Use pigz if available<br>
-&nbsp; &nbsp; &nbsp; &nbsp;OPT=3D&quot;-czS&quot;<br>
-&nbsp; &nbsp; &nbsp; &nbsp;if [ -x &quot;$(command -v pigz)&quot; ]; then<=
br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;OPT=3D&quot;-I pigz=
 -cS&quot;<br>
+&nbsp; &nbsp; &nbsp; &nbsp;OPT=3D&quot;-cS&quot;<br>
+&nbsp; &nbsp; &nbsp; &nbsp;ZSTD=3D&quot;zstd -${SSTATE_ZSTD_CLEVEL} -T${ZS=
TD_THREADS}&quot;<br>
+&nbsp; &nbsp; &nbsp; &nbsp;# Use pzstd if available<br>
+&nbsp; &nbsp; &nbsp; &nbsp;if [ -x &quot;$(command -v pzstd)&quot; ]; then=
<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ZSTD=3D&quot;pzstd =
-${SSTATE_ZSTD_CLEVEL} -p ${ZSTD_THREADS}&quot;<br>
&nbsp; &nbsp; &nbsp; &nbsp; fi<br>
<br>
&nbsp; &nbsp; &nbsp; &nbsp; # Need to handle empty directories<br>
&nbsp; &nbsp; &nbsp; &nbsp; if [ &quot;$(ls -A)&quot; ]; then<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; set +e<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;tar $OPT -f $TFILE =
*<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;tar -I &quot;$ZSTD&=
quot; $OPT -f $TFILE *<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ret=3D$?<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if [ $ret -ne 0 ] &=
amp;&amp; [ $ret -ne 1 ]; then<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; exit 1<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; fi<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; set -e<br>
&nbsp; &nbsp; &nbsp; &nbsp; else<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;tar $OPT --file=3D$=
TFILE --files-from=3D/dev/null<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;tar -I &quot;$ZSTD&=
quot; $OPT --file=3D$TFILE --files-from=3D/dev/null<br>
&nbsp; &nbsp; &nbsp; &nbsp; fi<br>
&nbsp; &nbsp; &nbsp; &nbsp; chmod 0664 $TFILE<br>
&nbsp; &nbsp; &nbsp; &nbsp; # Skip if it was already created by some other =
process<br>
@@ -880,7 +884,13 @@ python sstate_report_unihash() {<br>
&nbsp;# Will be run from within SSTATE_INSTDIR.<br>
&nbsp;#<br>
&nbsp;sstate_unpack_package () {<br>
-&nbsp; &nbsp; &nbsp; &nbsp;tar -xvzf ${SSTATE_PKG}<br>
+&nbsp; &nbsp; &nbsp; &nbsp;ZSTD=3D&quot;zstd -T${ZSTD_THREADS}&quot;<br>
+&nbsp; &nbsp; &nbsp; &nbsp;# Use pzstd if available<br>
+&nbsp; &nbsp; &nbsp; &nbsp;if [ -x &quot;$(command -v pzstd)&quot; ]; then=
<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ZSTD=3D&quot;pzstd =
-p ${ZSTD_THREADS}&quot;<br>
+&nbsp; &nbsp; &nbsp; &nbsp;fi<br>
+<br>
+&nbsp; &nbsp; &nbsp; &nbsp;tar -I &quot;$ZSTD&quot; -xvf ${SSTATE_PKG}<br>
&nbsp; &nbsp; &nbsp; &nbsp; # update .siginfo atime on local/NFS mirror<br>
&nbsp; &nbsp; &nbsp; &nbsp; [ -O ${SSTATE_PKG}.siginfo ] &amp;&amp; [ -w ${=
SSTATE_PKG}.siginfo ] &amp;&amp; [ -h ${SSTATE_PKG}.siginfo ] &amp;&amp; to=
uch -a ${SSTATE_PKG}.siginfo<br>
&nbsp; &nbsp; &nbsp; &nbsp; # Use &quot;! -w ||&quot; to return true for re=
ad only files<br>
diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf<br>
index e25d632dc1..ed746bdf99 100644<br>
--- a/meta/conf/bitbake.conf<br>
+++ b/meta/conf/bitbake.conf<br>
@@ -498,7 +498,7 @@ HOSTTOOLS +=3D &quot; \<br>
&nbsp;HOSTTOOLS +=3D &quot;${@'ip ping ps scp ssh stty' if (bb.utils.contai=
ns_any('IMAGE_CLASSES', 'testimage testsdk', True, False, d) or any(x in (d=
.getVar(&quot;BBINCLUDED&quot;) or &quot;&quot;) for x in [&quot;testimage.=
bbclass&quot;, &quot;testsdk.bbclass&quot;])) else ''}&quot;<br>
<br>
&nbsp;# Link to these if present<br>
-HOSTTOOLS_NONFATAL +=3D &quot;aws gcc-ar gpg ld.bfd ld.gold nc pigz sftp s=
ocat ssh sudo&quot;<br>
+HOSTTOOLS_NONFATAL +=3D &quot;aws gcc-ar gpg ld.bfd ld.gold nc pigz pzstd =
sftp socat ssh sudo&quot;<br>
<br>
&nbsp;# Temporary add few more detected in bitbake world<br>
&nbsp;HOSTTOOLS_NONFATAL +=3D &quot;join nl size yes zcat&quot;<br>
diff --git a/scripts/sstate-cache-management.sh b/scripts/sstate-cache-mana=
gement.sh<br>
index f1706a2229..d39671f7c6 100755<br>
--- a/scripts/sstate-cache-management.sh<br>
+++ b/scripts/sstate-cache-management.sh<br>
@@ -114,7 +114,7 @@ echo_error () {<br>
&nbsp;# * Add .done/.siginfo to the remove list<br>
&nbsp;# * Add destination of symlink to the remove list<br>
&nbsp;#<br>
-# $1: output file, others: sstate cache file (.tgz)<br>
+# $1: output file, others: sstate cache file (.tar.zst)<br>
&nbsp;gen_rmlist (){<br>
&nbsp; &nbsp;local rmlist_file=3D&quot;$1&quot;<br>
&nbsp; &nbsp;shift<br>
@@ -131,13 +131,13 @@ gen_rmlist (){<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dest=3D&quot;`readli=
nk -e $i`&quot;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if [ -n &quot;$dest&=
quot; ]; then<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;echo $=
dest &gt;&gt; $rmlist_file<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Remove th=
e .siginfo when .tgz is removed<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Remove th=
e .siginfo when .tar.zst is removed<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if [ -=
f &quot;$dest.siginfo&quot; ]; then<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;echo $dest.siginfo &gt;&gt; $rmlist_file<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fi<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fi<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fi<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Add the &quot;.tgz.done&quot; and &qu=
ot;.siginfo.done&quot; (may exist in the future)<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Add the &quot;.tar.zst.done&quot; and=
 &quot;.siginfo.done&quot; (may exist in the future)<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;base_fn=3D&quot;${i##/*/}&quot;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;t_fn=3D&quot;$base_fn.done&quot;<b=
r>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;s_fn=3D&quot;$base_fn.siginfo.done=
&quot;<br>
@@ -188,10 +188,10 @@ remove_duplicated () {<br>
&nbsp; &nbsp;total_files=3D`find $cache_dir -name 'sstate*' | wc -l`<br>
&nbsp; &nbsp;# Save all the sstate files in a file<br>
&nbsp; &nbsp;sstate_files_list=3D`mktemp` || exit 1<br>
-&nbsp; find $cache_dir -name 'sstate:*:*:*:*:*:*:*.tgz*' &gt;$sstate_files=
_list<br>
+&nbsp; find $cache_dir -iname 'sstate:*:*:*:*:*:*:*.tar.zst*' &gt;$sstate_=
files_list<br>
<br>
&nbsp; &nbsp;echo &quot;Figuring out the suffixes in the sstate cache dir .=
.. &quot;<br>
-&nbsp; sstate_suffixes=3D&quot;`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[=
^:]*:[^:]*:[^_]*_\([^:]*\)\.tgz.*%\1%g' $sstate_files_list | sort -u`&quot;=
<br>
+&nbsp; sstate_suffixes=3D&quot;`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[=
^:]*:[^:]*:[^_]*_\([^:]*\)\.tar\.zst.*%\1%g' $sstate_files_list | sort -u`&=
quot;<br>
&nbsp; &nbsp;echo &quot;Done&quot;<br>
&nbsp; &nbsp;echo &quot;The following suffixes have been found in the cache=
 dir:&quot;<br>
&nbsp; &nbsp;echo $sstate_suffixes<br>
@@ -200,10 +200,10 @@ remove_duplicated () {<br>
&nbsp; &nbsp;# Using this SSTATE_PKGSPEC definition it's 6th colon separate=
d field<br>
&nbsp; &nbsp;# SSTATE_PKGSPEC&nbsp; &nbsp; =3D &quot;sstate:${PN}:${PACKAGE=
_ARCH}${TARGET_VENDOR}-${TARGET_OS}:${PV}:${PR}:${SSTATE_PKGARCH}:${SSTATE_=
VERSION}:&quot;<br>
&nbsp; &nbsp;for arch in $all_archs; do<br>
-&nbsp; &nbsp; &nbsp; grep -q &quot;.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:$arch=
:[^:]*:[^:]*\.tgz$&quot; $sstate_files_list<br>
+&nbsp; &nbsp; &nbsp; grep -q &quot;.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:$arch=
:[^:]*:[^:]*\.tar\.zst$&quot; $sstate_files_list<br>
&nbsp; &nbsp; &nbsp; &nbsp;[ $? -eq 0 ] &amp;&amp; ava_archs=3D&quot;$ava_a=
rchs $arch&quot;<br>
&nbsp; &nbsp; &nbsp; &nbsp;# ${builder_arch}_$arch used by toolchain sstate=
<br>
-&nbsp; &nbsp; &nbsp; grep -q &quot;.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:${bui=
lder_arch}_$arch:[^:]*:[^:]*\.tgz$&quot; $sstate_files_list<br>
+&nbsp; &nbsp; &nbsp; grep -q &quot;.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:${bui=
lder_arch}_$arch:[^:]*:[^:]*\.tar\.zst$&quot; $sstate_files_list<br>
&nbsp; &nbsp; &nbsp; &nbsp;[ $? -eq 0 ] &amp;&amp; ava_archs=3D&quot;$ava_a=
rchs ${builder_arch}_$arch&quot;<br>
&nbsp; &nbsp;done<br>
&nbsp; &nbsp;echo &quot;Done&quot;<br>
@@ -219,13 +219,13 @@ remove_duplicated () {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;continue<br>
&nbsp; &nbsp; &nbsp; &nbsp;fi<br>
&nbsp; &nbsp; &nbsp; &nbsp;# Total number of files including .siginfo and .=
done files<br>
-&nbsp; &nbsp; &nbsp; total_files_suffix=3D`grep &quot;.*/sstate:[^:]*:[^:]=
*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.tgz.*&quot; $sstate_files_list | =
wc -l 2&gt;/dev/null`<br>
-&nbsp; &nbsp; &nbsp; total_tgz_suffix=3D`grep &quot;.*/sstate:[^:]*:[^:]*:=
[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.tgz$&quot; $sstate_files_list | wc =
-l 2&gt;/dev/null`<br>
+&nbsp; &nbsp; &nbsp; total_files_suffix=3D`grep &quot;.*/sstate:[^:]*:[^:]=
*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.tar\.zst.*&quot; $sstate_files_li=
st | wc -l 2&gt;/dev/null`<br>
+&nbsp; &nbsp; &nbsp; total_archive_suffix=3D`grep &quot;.*/sstate:[^:]*:[^=
:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.tar\.zst$&quot; $sstate_files_l=
ist | wc -l 2&gt;/dev/null`<br>
&nbsp; &nbsp; &nbsp; &nbsp;# Save the file list to a file, some suffix's fi=
le may not exist<br>
-&nbsp; &nbsp; &nbsp; grep &quot;.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^=
:]*:[^:_]*_$suffix\.tgz.*&quot; $sstate_files_list &gt;$list_suffix 2&gt;/d=
ev/null<br>
-&nbsp; &nbsp; &nbsp; local deleted_tgz=3D0<br>
+&nbsp; &nbsp; &nbsp; grep &quot;.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^=
:]*:[^:_]*_$suffix\.tar\.zst.*&quot; $sstate_files_list &gt;$list_suffix 2&=
gt;/dev/null<br>
+&nbsp; &nbsp; &nbsp; local deleted_archives=3D0<br>
&nbsp; &nbsp; &nbsp; &nbsp;local deleted_files=3D0<br>
-&nbsp; &nbsp; &nbsp; for ext in tgz tgz.siginfo tgz.done; do<br>
+&nbsp; &nbsp; &nbsp; for ext in tar.zst tar.zst.siginfo tar.zst.done; do<b=
r>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;echo &quot;Figuring out the sstate=
:xxx_$suffix.$ext ... &quot;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Uniq BPNs<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file_names=3D`for arch in $ava_arc=
hs &quot;&quot;; do<br>
@@ -268,19 +268,19 @@ remove_duplicated () {<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;done<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;done<br>
&nbsp; &nbsp; &nbsp; &nbsp;done<br>
-&nbsp; &nbsp; &nbsp; deleted_tgz=3D`cat $rm_list.* 2&gt;/dev/null | grep &=
quot;.tgz$&quot; | wc -l`<br>
+&nbsp; &nbsp; &nbsp; deleted_archives=3D`cat $rm_list.* 2&gt;/dev/null | g=
rep &quot;\.tar\.zst$&quot; | wc -l`<br>
&nbsp; &nbsp; &nbsp; &nbsp;deleted_files=3D`cat $rm_list.* 2&gt;/dev/null |=
 wc -l`<br>
&nbsp; &nbsp; &nbsp; &nbsp;[ &quot;$deleted_files&quot; -gt 0 -a $debug -gt=
 0 ] &amp;&amp; cat $rm_list.*<br>
-&nbsp; &nbsp; &nbsp; echo &quot;($deleted_tgz out of $total_tgz_suffix .tg=
z files for $suffix suffix will be removed or $deleted_files out of $total_=
files_suffix when counting also .siginfo and .done files)&quot;<br>
+&nbsp; &nbsp; &nbsp; echo &quot;($deleted_archives out of $total_archives_=
suffix .tar.zst files for $suffix suffix will be removed or $deleted_files =
out of $total_files_suffix when counting also .siginfo and .done files)&quo=
t;<br>
&nbsp; &nbsp; &nbsp; &nbsp;let total_deleted=3D$total_deleted+$deleted_file=
s<br>
&nbsp; &nbsp;done<br>
-&nbsp; deleted_tgz=3D0<br>
+&nbsp; deleted_archives=3D0<br>
&nbsp; &nbsp;rm_old_list=3D$remove_listdir/sstate-old-filenames<br>
-&nbsp; find $cache_dir -name 'sstate-*.tgz' &gt;$rm_old_list<br>
-&nbsp; [ -s &quot;$rm_old_list&quot; ] &amp;&amp; deleted_tgz=3D`cat $rm_o=
ld_list | grep &quot;.tgz$&quot; | wc -l`<br>
+&nbsp; find $cache_dir -name 'sstate-*.tar.zst' &gt;$rm_old_list<br>
+&nbsp; [ -s &quot;$rm_old_list&quot; ] &amp;&amp; deleted_archives=3D`cat =
$rm_old_list | grep &quot;\.tar\.zst$&quot; | wc -l`<br>
&nbsp; &nbsp;[ -s &quot;$rm_old_list&quot; ] &amp;&amp; deleted_files=3D`ca=
t $rm_old_list | wc -l`<br>
&nbsp; &nbsp;[ -s &quot;$rm_old_list&quot; -a $debug -gt 0 ] &amp;&amp; cat=
 $rm_old_list<br>
-&nbsp; echo &quot;($deleted_tgz .tgz files with old sstate-* filenames wil=
l be removed or $deleted_files when counting also .siginfo and .done files)=
&quot;<br>
+&nbsp; echo &quot;($deleted_archives or .tar.zst files with old sstate-* f=
ilenames will be removed or $deleted_files when counting also .siginfo and =
.done files)&quot;<br>
&nbsp; &nbsp;let total_deleted=3D$total_deleted+$deleted_files<br>
<br>
&nbsp; &nbsp;rm -f $list_suffix<br>
@@ -289,7 +289,7 @@ remove_duplicated () {<br>
&nbsp; &nbsp; &nbsp; &nbsp;read_confirm<br>
&nbsp; &nbsp; &nbsp; &nbsp;if [ &quot;$confirm&quot; =3D &quot;y&quot; -o &=
quot;$confirm&quot; =3D &quot;Y&quot; ]; then<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;for list in `ls $remove_listdir/`;=
 do<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; echo &quot;Removing $list=
.tgz (`cat $remove_listdir/$list | wc -w` files) ... &quot;<br>
+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; echo &quot;Removing $list=
.tar.zst archive (`cat $remove_listdir/$list | wc -w` files) ... &quot;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Remove them one by=
 one to avoid the argument list too long error<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;for i in `cat $remov=
e_listdir/$list`; do<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;rm -f =
$verbose $i<br>
@@ -322,7 +322,7 @@ rm_by_stamps (){<br>
&nbsp; &nbsp;find $cache_dir -type f -name 'sstate*' | sort -u -o $cache_li=
st<br>
<br>
&nbsp; &nbsp;echo &quot;Figuring out the suffixes in the sstate cache dir .=
.. &quot;<br>
-&nbsp; local sstate_suffixes=3D&quot;`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[=
^:]*:[^:]*:[^:]*:[^_]*_\([^:]*\)\.tgz.*%\1%g' $cache_list | sort -u`&quot;<=
br>
+&nbsp; local sstate_suffixes=3D&quot;`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[=
^:]*:[^:]*:[^:]*:[^_]*_\([^:]*\)\.tar\.zst.*%\1%g' $cache_list | sort -u`&q=
uot;<br>
&nbsp; &nbsp;echo &quot;Done&quot;<br>
&nbsp; &nbsp;echo &quot;The following suffixes have been found in the cache=
 dir:&quot;<br>
&nbsp; &nbsp;echo $sstate_suffixes<br>
-- <br>
2.30.2<br>
<br>
<br>
<br>
<br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_BY5PR15MB3572F4F406FCB05FE766BDF0B8AE9BY5PR15MB3572namp_--
