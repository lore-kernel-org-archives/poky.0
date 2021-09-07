Received: from EUR02-HE1-obe.outbound.protection.outlook.com (EUR02-HE1-obe.outbound.protection.outlook.com [40.107.1.43])
 by mx.groups.io with SMTP id smtpd.web11.32538.1630995039139345541
 for <Poky@lists.yoctoproject.org>;
 Mon, 06 Sep 2021 23:10:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gigasetde.onmicrosoft.com header.s=selector2-gigasetde-onmicrosoft-com header.b=LRjPuT3G;
 spf=pass (domain: gigaset.com, ip: 40.107.1.43, mailfrom: claus.groeting@gigaset.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gigasetde.onmicrosoft.com; s=selector2-gigasetde-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IhTke3f779n+25DXuIHA+bTRS39n58/7bpWCUPsizzY=;
 b=LRjPuT3GbJcBbHRm3EYSumtfFxFuSurKoWN1fBNDDL6/IOXSUuQ22u79FLCqguOb/Qndtpw3lh6G8AfSXaGJM6WMjmyWtV7ChT4ocO0eXsGlNydUpsYZABqZdoxei3G4qz5PprU4YwwBsLr/7vjFQ+KiZr7iHXpnvjjwT3GGItk=
Received: from AM0PR09MB2385.eurprd09.prod.outlook.com (2603:10a6:208:dc::19)
 by AM4PR0902MB1682.eurprd09.prod.outlook.com (2603:10a6:200:91::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.24; Tue, 7 Sep
 2021 06:10:35 +0000
Received: from AM0PR09MB2385.eurprd09.prod.outlook.com
 ([fe80::34f8:6afd:caaf:cd42]) by AM0PR09MB2385.eurprd09.prod.outlook.com
 ([fe80::34f8:6afd:caaf:cd42%7]) with mapi id 15.20.4478.026; Tue, 7 Sep 2021
 06:10:35 +0000
From: "Groeting, Claus" <claus.groeting@gigaset.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Poky:dunfell: SDK install issue (sed: -e expression #1, char 0: no previous regular expression)
Thread-Topic: Poky:dunfell: SDK install issue (sed: -e expression #1, char 0:
 no previous regular expression)
Thread-Index: AQHXo6wmsvvnGBAo0kKQNdDSi54DEQ==
Date: Tue, 7 Sep 2021 06:10:35 +0000
Message-ID: 
 <e48ded7ae4cd4736bcac4ce1e2ae53c25ddc6e8d0f084367b98e4d196cc806e381079d404ed14d61a2bb8e4e180bed02b228edd049a84e0abdaee720e167e675AM0PR09MB23856154D0AACBCFF49AE3AA92D39@AM0PR09MB2385.eurprd09.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=gigaset.com;
dkim-signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gigasetde.onmicrosoft.com; s=selector2-gigasetde-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5SV6zp94ynol/9D4FiWjzp6tuDY1TnAr3BkNS1sXbnE=;
 b=H6B5pHXvGhUz0pFRDs296LPQXoyx8ElkJJcOei+/A+ZAvG6AIDakIA7Kt7loSTFKIhiTO/s6a0fnPbAlhoxyyZB6keJt5SgGtrO9gsDR5A0gkEBUn3ZbZvkgvqDDak8mjHItMAwqWYBofIMthcw88uqIcIdPfP0kcZScxfEThd8=
x-ms-publictraffictype: Email
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR09MB2385.eurprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(186003)(19627405001)(6862004)(9686003)(66574015)(86362001)(38100700002)(7696005)(2906002)(6506007)(166002)(7066003)(55016002)(122000001)(26005)(45080400002)(64756008)(8676002)(38070700005)(37630700001)(71200400001)(66946007)(66446008)(66476007)(316002)(66556008)(91956017)(76116006)(8936002)(5660300002)(508600001)(17413003);DIR:OUT;SFP:1101;
x-ms-office365-filtering-correlation-id: 81cdcb98-c1d6-4181-6862-08d971c634c5
x-ms-traffictypediagnostic: 
 AM0PR09MB2386:|AM0PR09MB3971:|AM0PR09MB3634:|AM4PR0902MB1682:
x-ms-oob-tlc-oobclassifiers: OLM:303;OLM:303;OLM:303;OLM:303;OLM:303;
x-ms-exchange-transport-crosstenantheadersstamped: AM0PR09MB3634
x-microsoft-antispam: BCL:0;
x-ms-exchange-crosstenant-originalarrivaltime: 07 Sep 2021 06:07:15.2109 (UTC)
x-ms-exchange-crosstenant-network-message-id: 
 95aa6d66-1681-4d8a-4306-08d971c5bd97
x-ms-exchange-crosstenant-id: 3c8c735a-a166-49b3-8d00-8c53c4c9ac9a
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: 
 vtAaEX8wXVYir421yycvXQHFc+uzVm/HdvlZmqSDZc2/JRZyEqwIoHbO2sjMdWklKqC1y3MJOWL9UXp+Z4M4VqBQo854mpLSNekknGmECJY=
x-ms-exchange-crosstenant-authsource: AM0PR09MB2385.eurprd09.prod.outlook.com
x-ms-exchange-crosstenant-authas: Internal
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TB4IAsVTNy6rIQiqdhp19dez73by2BCj6h7D/7+XbqjdMjcx4N6KdNDikW39QwsNSQlLLare9rBO68kzTOf7Rih7yqUEgOBShmQ+dGHgPBU2PGX0ZrqMSZ3QWAhljEQ7Fi5MuSg0zGjBG0PoJoCLn3HzmEzeR+QkXBjZL9HpUpCLHIbBSo46OBZOj6cKhUE60xWQ/WckDsJBPneF9dT6//KrUm8jrrtOM0FwVssnhjYCDqgiyu+C5l23C0hTBxdKAT3VKQY2t5uCN1TMUqcLVTykFnasEI1hBGeKCZ0cdt1QLdHPhWxaTiveNBL1ozt2R8If9f/u1WPCr8LWEVjUhA==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=5SV6zp94ynol/9D4FiWjzp6tuDY1TnAr3BkNS1sXbnE=;
 b=V175XZhMU8umFRIp38yIfqw4LHmNXQqXVrYYD6Z7ZyTLv+eTMWWoftiv9XXRSdfJXlPYGwjObJS6cE80RQMo2WZrw81B/wtCuNUGcf97WEdE158BFsYBrcoHAVwPvK6NCa2aSazfGaysoEXuvrljbUfiUDJF4+m1KLc7lXGw1mMN6I5YBgmLK2UGaBMA1cDgSRNfQYMm5PtTM28eqDJbezayj9jF7iEr0SXwcM2ShCxSgjOhTyrzII/zagJ3ZkZ2g3wfIjLU9RmdYqm6S9jZ0H6NZv2bL4KFb/xCnXWcYtPv5HMdHrxumRciwcA+q5SH/J2DofTu0v8FhmZ2F0Jl4Q==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gigaset.com; dmarc=pass action=none header.from=gigaset.com;
 dkim=pass header.d=gigaset.com; arc=none
x-microsoft-antispam-prvs: 
 <AM4PR0902MB168299CD393EA5DA8654051992D39@AM4PR0902MB1682.eurprd09.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 
 mlbOkplJWXRvsJYCRTMRt3RIMb2W57Bhuou8bYV7nzLZSyQvZlaEH9COtJWZtGZO3UksKtYVlzps1DMsGleg9XV+YOTXZB9J7d1vpRCQEV2HjhO1/1Hdhs1fNg1HG0Jia+EIj1d9IIB2T4aoy5XnX9x2zuurWGD5UGvHdzCRr1znDC09zwkNuwBMkH5AohaRp1XQ4n2OYUqLjpPO6IM2DhBtlEf41gW9sI2TuH02tfOb3Qgd/3qUKq27HMtez0W+klsS2vhtSGv162E1dyomP0p+PLaMfnmqVFcjI2cIk+jqNaAh+wNnHCgOIt2RlcxUNVzGz9Oq5mvqfYXrdDVW7s2lInHISZEIGxNkDehasFkbzITF3eRnhFywFTm25lFtzYwon30KItIQoVebhD/IFNDTYqJs4vvUCzzyezgzzpCdM0T4GoKCwXilR13kJEzvNEzad3AF860HWgLsDbkcqMiACSrzFFnU50AJgyT0dwqFMCtpdJ1dy03JkCSs5LBszW1qL2shtnfMmDRozhJkGiB5NIpgGtoMWjyEMCZ0tzT2Qzv5Y45tZhAHL1NBn2nvRr1CO4dtfrHr4+akJIbLQNQYlJpzF5Hxz54CwinQkyFJMhJMTfUP+2d+4BhaitkStTIuViyvJ4nkoUfP5pUpLeX//yTOuy7cECOhTNlI07gMK/BVy713THGfH98TrbEwHICSYgbB64nfPidLqlCzsD9puy5j3eHiQ3WsfZFHr6zt+snMAIEZaNOl3+DQBKw7xE5cb5XiKUwT3+3wyAs7yaQrKzCZniOmrSdSV4dvXx1ruoiIhZ51TI738yXAY7/YWDpSUD+f5HtruyhCtnPyMkpXjtLSza/HFMmc4cldKOE=
x-ms-exchange-transport-forked: True
suggested_attachment_session_id: c209bc8b-2a7b-ba67-1257-fa238dfa7198
x-ms-exchange-antispam-relay: 0
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?DVzAqNEAgKRDmPnwYSuhwEmaaHtgMKmDOF3BmdY4+X52zONswA9a0+DAs/?=
 =?iso-8859-1?Q?fSpQKL9iYPWg7iYSBFFY69s8hQYwP0kG4CrLLOP84ZgdWmaR8f/96j+X/e?=
 =?iso-8859-1?Q?4HLTkNVi6yWYu0gbfzYp2DXwSaHHCrZs++6PIiNCtn4DbA80JLtq4qeZ9A?=
 =?iso-8859-1?Q?QGLyj8enEAFdrrr0MPE3FESATd3suaHbx+YZLzAIwv3rtBwvOmpLVrgixI?=
 =?iso-8859-1?Q?+82DCYRf+KDfrtcQ8Gd1pcqqLLuhr+x6whSv0VONzanm3EdNbjLdfoj4Ku?=
 =?iso-8859-1?Q?NFC98rsJ+/xOAtbQXdJ4iUQd/Kn7h991gePrB3R1NZyUFPeYXxYokebenP?=
 =?iso-8859-1?Q?6sLLS8mpCKlN10vPCYY9X6Y7pI2Qg5sndNvphXv34+w5s90kFzzOddlgr5?=
 =?iso-8859-1?Q?UWkRE/Ukp17Sfzn+uJx1NG6fKv8QNR3dVcAjSxpDSPRsLJnlYQ05dFAfG7?=
 =?iso-8859-1?Q?d7WWurZL8uUoSBsSfCTk3f6h4UaFRp8S85tEpRzCB1QsbS8shbgAFs6oaB?=
 =?iso-8859-1?Q?uQRHj1+rPwj2YBK+THncalQshS1d0ds/LqaC3fVb9bSNvkezi80p0cM/SM?=
 =?iso-8859-1?Q?nD+TJJv0eaAy0/3qHgUEG6N9digzPKR0KlOBTnrkFLTg1ccvZRGwbEQ4Bu?=
 =?iso-8859-1?Q?yEpOBHW83VK6D8y9tcyyqH8oxXSMDiUdpnei1lKhyIh4FoTXeTYYfinveq?=
 =?iso-8859-1?Q?4rRgWOfNIS5IcIoN2EWvJF2lCeVMDytLXqDLYKwH1KJTAP+rURmh+wW4Ex?=
 =?iso-8859-1?Q?nireH9k08NWRPofIoGyfksm4lTPy7bR7MGUAsXphcqdkCmaWq4rhgQQTrY?=
 =?iso-8859-1?Q?v0m/SZGgVmdeTd3sqO5+l18x+62jd5q0ldTMe1Yc4BcTSV4y+YHfWFT4K5?=
 =?iso-8859-1?Q?88FErowcrgap7GjXstmW1CmUm/YxUJN6NEjc7uItyrD2dJOBwBeRQBc5ZL?=
 =?iso-8859-1?Q?wqGhTCtpEBz2Yp1SwOZOvvNi5ZS4O1f6OC8H9xZlK1bmN8B31FjvwyE1u8?=
 =?iso-8859-1?Q?82XaUeu73R/1nQ71GPB6GJry36cKufIEfLM68lgEUekONIbZ+oYGpSjhVc?=
 =?iso-8859-1?Q?EjvcItT1+zdziY9ght1teVM7FHdT3M+rO0CiKduZoyylpRlTW307U7cL0D?=
 =?iso-8859-1?Q?mHyREJ+dEX4vvedvWj0VmDS9Ean7JC6bREeoi3ITUyq9VchmFsnjfkHa92?=
 =?iso-8859-1?Q?D3jC1mn6/NQkYjoXnTP/Pr94wriMFbz8gRRJweseHtcYyxBK3uB0AXt9vg?=
 =?iso-8859-1?Q?AqKf8+5QCkh5FBwMER0evqc0BbcGEfrdRNlfoQAK+mCAwb1eoN4y5P5A3f?=
 =?iso-8859-1?Q?L+9kU/1Xr/m2Qk/lvdpwCgHm/2oQaBkGKege+0tYkdafZdc=3D?=
x-ms-office365-filtering-correlation-id-prvs: 
 95aa6d66-1681-4d8a-4306-08d971c5bd97
MIME-Version: 1.0
X-OriginatorOrg: gigaset.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR09MB2385.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81cdcb98-c1d6-4181-6862-08d971c634c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2021 06:10:35.1422
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3c8c735a-a166-49b3-8d00-8c53c4c9ac9a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NRGF1BN8tpYpqT/IZdgzn3HJVSmUiq1ZEvTPA8YskpPwIGCcnu+FeykO3sGb9CFeNOL1W6rW47B4mbyx0cyKKIK7gVTK5Zuo+On2syeSSqM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0902MB1682
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_e48ded7ae4cd4736bcac4ce1e2ae53c25ddc6e8d0f084367b98e4d1_"

--_000_e48ded7ae4cd4736bcac4ce1e2ae53c25ddc6e8d0f084367b98e4d1_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all!

I have a problem with this commit, applied in poky:dunfell on file toolchai=
n-shar-relocate.sh.
sha1: d6f40be29bf56a835f5825692a22365f04aeb6c3

Author: hongxu <hongxu.jia@windriver.com>  2021-08-10 15:33:56
Committer: Richard Purdie <richard.purdie@linuxfoundation.org>  2021-08-26 =
09:32:18
Parent: dad6dd12fd6e2512f3bd5591327ee35ee22b913e (toolchain-shar-relocate.s=
h: Fix handling files with colons)
Branches: dunfell, remotes/origin/dunfell
Follows: dunfell-23.0.10, yocto-3.1.10
Precedes:

    sdk: fix relocate symlink failed


    (From OE-Core rev: a155c4d4ca841ef492213a5f0b9121703c62e2b4)

    Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
    Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
    (cherry picked from commit 942c06a7348070b92f722fa5c439c8c4404485b7)
    Signed-off-by: Steve Sakoman <steve@sakoman.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

-------------------- meta/files/toolchain-shar-relocate.sh ----------------=
----
index 5433741296..ba873373e2 100644
@@ -72,7 +72,7 @@ fi

 # change all symlinks pointing to @SDKPATH@
 for l in $($SUDO_EXEC find $native_sysroot -type l); do
- $SUDO_EXEC ln -sfn $(readlink $l|$SUDO_EXEC sed -e "s:$DEFAULT_INSTALL_DI=
R:$target_sdk_dir:") $l
+ $SUDO_EXEC ln -sfn $(readlink $l|$SUDO_EXEC sed -e "s:$SDK_BUILD_PATH:$ta=
rget_sdk_dir:") $l
  if [ $? -ne 0 ]; then
  echo "Failed to setup symlinks. Relocate script failed. Abort!"
  exit 1

it looks to me that SDK_BUILD_PATH is not defined in the sed instruction. W=
hen installing the generated SDK shell script, we see a lot of:
sed: -e expression #1, char 0: no previous regular expression
sed: -e expression #1, char 0: no previous regular expression
sed: -e expression #1, char 0: no previous regular expression
sed: -e expression #1, char 0: no previous regular expression
sed: -e expression #1, char 0: no previous regular expression
sed: -e expression #1, char 0: no previous regular expression

Without that commit, everything looks ok. On master-branch SDK_BUILD_PATH i=
s preset with "@SDKPATH@" but not on dunfell-branch this is missing in the =
file toolchain-shar-relocate.sh.

BR,
Claus Gr=F6ting



Mit freundlichen Gr=FC=DFen
Claus Gr=F6ting
Senior Software Developer


Gigaset Communications GmbH | Frankenstra=DFe 2 | 46395 Bocholt
t: +49 (0)2871 91 1901
claus.groeting@gigaset.com<mailto:guenter.frieling@gigaset.com> | www.gigas=
et.com<http://www.gigaset.com/>

Besuchen Sie uns auf Facebook<http://www.facebook.com/Gigaset> | Twitter<ht=
tp://www.twitter.com/Gigaset> | YouTube<http://www.youtube.com/Gigaset> | I=
nstagram<http://www.instagram.com/Gigaset> | Blog<http://blog.gigaset.com/>=
 | Xing<https://www.xing.com/companies/gigaset> | LinkedIn<https://www.link=
edin.com/company-beta/335563/>

Gesch=E4ftsf=FChrer: Klaus We=DFing | Aufsichtsrat: N.N. (Vorsitzender).
Sitz der Gesellschaft: Bocholt | Registergericht: Coesfeld, HRB 16595 | WEE=
E-Reg. Nr. DE 96349612.


--_000_e48ded7ae4cd4736bcac4ce1e2ae53c25ddc6e8d0f084367b98e4d1_
Content-Type: text/html; charset="iso-8859-1"
Content-ID: <9720E7BED7E29546B99CB3584255A0D1@eurprd09.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi all!<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
I have a problem with this commit, applied in <span style=3D"color:rgb(200,=
38,19)">
poky:dunfell</span> on file&nbsp;<span style=3D"background-color:rgb(255,25=
5,255); display:inline!important">toolchain-shar-relocate.sh.</span><br>
sha1: d6f40be29bf56a835f5825692a22365f04aeb6c3<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(0,0,0); font-family:Calibri,Arial,Helvetica,sans-s=
erif; font-size:12pt">Author: hongxu &lt;hongxu.jia@windriver.com&gt; &nbsp=
;2021-08-10 15:33:56</span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<div>Committer: Richard Purdie &lt;richard.purdie@linuxfoundation.org&gt; &=
nbsp;2021-08-26 09:32:18</div>
<div>Parent: dad6dd12fd6e2512f3bd5591327ee35ee22b913e (toolchain-shar-reloc=
ate.sh: Fix handling files with colons)</div>
<div>Branches: dunfell, remotes/origin/dunfell</div>
<div>Follows: dunfell-23.0.10, yocto-3.1.10</div>
<div>Precedes: </div>
<div><br>
</div>
<div>&nbsp; &nbsp; sdk: fix relocate symlink failed</div>
<div>&nbsp; &nbsp; </div>
<div>&nbsp; &nbsp;<br>
</div>
<div>&nbsp; &nbsp; (From OE-Core rev: a155c4d4ca841ef492213a5f0b9121703c62e=
2b4)</div>
<div>&nbsp; &nbsp; </div>
<div>&nbsp; &nbsp; Signed-off-by: Hongxu Jia &lt;hongxu.jia@windriver.com&g=
t;</div>
<div>&nbsp; &nbsp; Signed-off-by: Alexandre Belloni &lt;alexandre.belloni@b=
ootlin.com&gt;</div>
<div>&nbsp; &nbsp; Signed-off-by: Richard Purdie &lt;richard.purdie@linuxfo=
undation.org&gt;</div>
<div>&nbsp; &nbsp; (cherry picked from commit 942c06a7348070b92f722fa5c439c=
8c4404485b7)</div>
<div>&nbsp; &nbsp; Signed-off-by: Steve Sakoman &lt;steve@sakoman.com&gt;</=
div>
<div>&nbsp; &nbsp; Signed-off-by: Richard Purdie &lt;richard.purdie@linuxfo=
undation.org&gt;</div>
<div><br>
</div>
<div>-------------------- meta/files/toolchain-shar-relocate.sh -----------=
---------</div>
<div>index 5433741296..ba873373e2 100644</div>
<div>@@ -72,7 +72,7 @@ fi</div>
<div>&nbsp;</div>
<div>&nbsp;# change all symlinks pointing to @SDKPATH@</div>
<div>&nbsp;for l in $($SUDO_EXEC find $native_sysroot -type l); do</div>
<div>- $SUDO_EXEC ln -sfn $(readlink $l|$SUDO_EXEC sed -e &quot;s:$DEFAULT_=
INSTALL_DIR:$target_sdk_dir:&quot;) $l</div>
<div>+ $SUDO_EXEC ln -sfn $(readlink $l|$SUDO_EXEC sed -e &quot;s:$<span st=
yle=3D"color:rgb(200,38,19)">SDK_BUILD_PATH</span>:$target_sdk_dir:&quot;) =
$l</div>
<div>&nbsp; if [ $? -ne 0 ]; then</div>
<div>&nbsp; echo &quot;Failed to setup symlinks. Relocate script failed. Ab=
ort!&quot;</div>
<div>&nbsp; exit 1</div>
<span></span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
it looks to me that SDK_BUILD_PATH is not defined in the sed instruction. W=
hen installing the generated SDK shell script, we see a lot of:<br>
sed: -e expression #1, char 0: no previous regular expression
<div>sed: -e expression #1, char 0: no previous regular expression</div>
<div>sed: -e expression #1, char 0: no previous regular expression</div>
<div>sed: -e expression #1, char 0: no previous regular expression</div>
<div>sed: -e expression #1, char 0: no previous regular expression</div>
sed: -e expression #1, char 0: no previous regular expression<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Without that commit, everything looks ok. On master-branch&nbsp;SDK_BUILD_P=
ATH is preset with &quot;@SDKPATH@&quot; but not on dunfell-branch this is =
missing in the file&nbsp;<span style=3D"background-color:rgb(255,255,255); =
display:inline!important">toolchain-shar-relocate.sh.</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
BR,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Claus Gr=F6ting</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"Signature">
<div>
<meta content=3D"text/html; charset=3DUTF-8">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"color:rgb(0,0,0); fon=
t-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0px; margin-bott=
om:0px; margin-top:0px; margin-bottom:0px; margin-top:0px; margin-bottom:0p=
x; margin-top:0px; margin-bottom:0px; font-size:12pt">
</p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n-top:0px; margin-bottom:0px; margin-top:0px; margin-bottom:0px; margin-top=
:0px; margin-bottom:0px; margin-top:0px; margin-bottom:0px; font-size:11pt;=
 margin:0cm 0cm 0.0001pt; font-family:Calibri,sans-serif; color:rgb(33,33,3=
3)">
</p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n-top:0px; margin-bottom:0px; margin-top:0px; margin-bottom:0px; margin-top=
:0px; margin-bottom:0px; margin-top:0px; margin-bottom:0px; font-size:11pt;=
 margin:0cm 0cm 0.0001pt; font-family:Calibri,sans-serif; color:rgb(33,33,3=
3)">
<span lang=3D"EN-US" style=3D"font-size:8pt; font-family:Arial,sans-serif">=
<span id=3D"docs-internal-guid-0f4d3de1-5567-d440-dd86-c526a96405db"><span =
style=3D"font-size:11pt; font-family:Arial; background-color:transparent; v=
ertical-align:baseline; white-space:pre-wrap"></span></span></span></p>
<p class=3D"x_x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;mar=
gin-top:0px; margin-bottom:0px; margin-top:0px; margin-bottom:0px; margin-t=
op:0px; margin-bottom:0px; margin-top:0px; margin-bottom:0px; font-family:T=
ahoma,serif,EmojiFont; font-size:13px">
<span style=3D"font-size:10pt"><span style=3D"font-family:Calibri,Helvetica=
,sans-serif,serif,EmojiFont; font-size:10pt">Mit freundlichen Gr=FC=DFen</s=
pan><br>
<span style=3D"font-size:10pt"></span><span style=3D"font-family:Calibri,He=
lvetica,sans-serif,serif,EmojiFont"></span><span style=3D"font-family:Calib=
ri,Helvetica,sans-serif,serif,EmojiFont; font-size:10pt">Claus Gr=F6ting</s=
pan><br>
<span style=3D"font-size:10pt"></span><span style=3D"font-family:Calibri,He=
lvetica,sans-serif,serif,EmojiFont"></span><span style=3D"font-family:Calib=
ri,Helvetica,sans-serif,serif,EmojiFont; font-size:10pt">Senior Software De=
veloper</span></span></p>
<span style=3D"font-family:Tahoma,serif,EmojiFont; font-size:10pt"></span><=
span style=3D"font-size:13px; font-family:Calibri,Helvetica,sans-serif,seri=
f,EmojiFont"></span><span style=3D"font-family:Tahoma,serif,EmojiFont; font=
-size:10pt"></span><span style=3D"font-family:Tahoma,serif,EmojiFont; font-=
size:13px"></span>
<p class=3D"x_x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;mar=
gin-top:0px; margin-bottom:0px; margin-top:0px; margin-bottom:0px; margin-t=
op:0px; margin-bottom:0px; margin-top:0px; margin-bottom:0px; font-family:T=
ahoma,serif,EmojiFont; font-size:13px">
<span style=3D"font-size:10pt; font-family:Calibri,Helvetica,sans-serif,ser=
if,EmojiFont"><br>
</span></p>
<span style=3D"font-family:Tahoma,serif,EmojiFont; font-size:10pt"></span><=
span style=3D"font-size:13px; font-family:Calibri,Helvetica,sans-serif,seri=
f,EmojiFont"></span><span style=3D"font-family:Tahoma,serif,EmojiFont; font=
-size:10pt"><span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,E=
mojiFont; font-size:10pt">Gigaset
 Communications GmbH | Frankenstra=DFe 2 | 46395&nbsp;</span><span style=3D=
"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font-size:10pt">=
Bocholt&nbsp;</span><br>
<span style=3D"font-size:10pt"></span><span style=3D"font-family:Calibri,He=
lvetica,sans-serif,serif,EmojiFont; font-size:10pt">t: +49 (0)2871 91 1901<=
/span><br>
<span style=3D"font-size:10pt"></span><span style=3D"font-family:Calibri,He=
lvetica,sans-serif,serif,EmojiFont"></span><u><span style=3D"color:blue"><a=
 href=3D"mailto:guenter.frieling@gigaset.com" target=3D"_blank" rel=3D"noop=
ener noreferrer" id=3D"LPNoLP"><span style=3D"color:blue; font-family:Calib=
ri,Helvetica,sans-serif,serif,EmojiFont; font-size:10pt">claus.groeting@gig=
aset.com</span></a><span style=3D"font-family:Calibri,Helvetica,sans-serif,=
serif,EmojiFont; font-size:10pt">&nbsp;</span></span></u><span style=3D"col=
or:rgb(31,73,125); font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont=
; font-size:10pt">|&nbsp;</span><u><span style=3D"color:blue"><a href=3D"ht=
tp://www.gigaset.com/" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"=
LPNoLP"><span style=3D"color:blue; font-family:Calibri,Helvetica,sans-serif=
,serif,EmojiFont; font-size:10pt">www.gigaset.com</span></a></span></u><br>
<span style=3D"font-size:10pt"></span><span style=3D"font-family:Calibri,He=
lvetica,sans-serif,serif,EmojiFont"></span><br>
<span style=3D"font-size:10pt"></span><span style=3D"font-family:Calibri,He=
lvetica,sans-serif,serif,EmojiFont; font-size:10pt">Besuchen Sie uns auf&nb=
sp;</span><span style=3D"font-size:10pt"></span><u><span style=3D"color:blu=
e"><a href=3D"http://www.facebook.com/Gigaset" target=3D"_blank" rel=3D"noo=
pener noreferrer" id=3D"LPNoLP"><span style=3D"color:blue; font-family:Cali=
bri,Helvetica,sans-serif,serif,EmojiFont; font-size:10pt">Facebook</span></=
a></span></u><span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,=
EmojiFont; font-size:10pt">&nbsp;|&nbsp;</span><u><span style=3D"color:blue=
"><a href=3D"http://www.twitter.com/Gigaset" target=3D"_blank" rel=3D"noope=
ner noreferrer" id=3D"LPNoLP"><span style=3D"color:blue; font-family:Calibr=
i,Helvetica,sans-serif,serif,EmojiFont; font-size:10pt">Twitter</span></a><=
/span></u><span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,Emo=
jiFont; font-size:10pt">&nbsp;|&nbsp;</span><u><span style=3D"color:blue"><=
a href=3D"http://www.youtube.com/Gigaset" target=3D"_blank" rel=3D"noopener=
 noreferrer" id=3D"LPNoLP"><span style=3D"color:blue; font-family:Calibri,H=
elvetica,sans-serif,serif,EmojiFont; font-size:10pt">YouTube</span></a></sp=
an></u><span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiF=
ont; font-size:10pt">&nbsp;|&nbsp;</span><u><span style=3D"color:blue"><a h=
ref=3D"http://www.instagram.com/Gigaset" target=3D"_blank" rel=3D"noopener =
noreferrer" id=3D"LPNoLP"><span style=3D"color:blue; font-family:Calibri,He=
lvetica,sans-serif,serif,EmojiFont; font-size:10pt">Instagram</span></a></s=
pan></u><span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,Emoji=
Font; font-size:10pt">&nbsp;|&nbsp;</span><u><span style=3D"color:blue"><a =
href=3D"http://blog.gigaset.com/" target=3D"_blank" rel=3D"noopener norefer=
rer" id=3D"LPNoLP"><span style=3D"color:blue; font-family:Calibri,Helvetica=
,sans-serif,serif,EmojiFont; font-size:10pt">Blog</span></a></span></u></sp=
an><span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;=
 font-size:10pt">&nbsp;</span><span style=3D"font-family:Tahoma,serif,Emoji=
Font; font-size:10pt"><span style=3D"font-family:Calibri,Helvetica,sans-ser=
if,serif,EmojiFont; font-size:10pt">|&nbsp;</span><u><span style=3D"color:b=
lue"><a href=3D"https://www.xing.com/companies/gigaset" target=3D"_blank" r=
el=3D"noopener noreferrer" id=3D"LPNoLP"><span style=3D"color:blue; font-fa=
mily:Calibri,Helvetica,sans-serif,serif,EmojiFont; font-size:10pt">Xing</sp=
an></a></span></u><span style=3D"font-family:Calibri,Helvetica,sans-serif,s=
erif,EmojiFont; font-size:10pt">&nbsp;|&nbsp;</span><u><span style=3D"color=
:blue"><a href=3D"https://www.linkedin.com/company-beta/335563/" target=3D"=
_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP"><span style=3D"color:blue=
; font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font-size:10pt"=
>LinkedIn</span></a></span></u></span><span style=3D"font-family:Tahoma,ser=
if,EmojiFont; font-size:13px"><br>
<span style=3D"font-size:10pt"></span><span style=3D"font-family:Calibri,He=
lvetica,sans-serif,serif,EmojiFont"></span><br>
<span style=3D"font-size:10pt"></span><span style=3D"font-family:Calibri,He=
lvetica,sans-serif,serif,EmojiFont"></span></span><span style=3D"font-size:=
10pt; letter-spacing:0.1pt; font-family:Calibri,Helvetica,sans-serif,serif,=
EmojiFont">Gesch=E4ftsf=FChrer: Klaus We=DFing
 | Aufsichtsrat:&nbsp;</span><span style=3D"font-family:Tahoma,serif,EmojiF=
ont; font-size:8pt"><span style=3D"font-family:Calibri,Helvetica,sans-serif=
,serif,EmojiFont; font-size:10pt">N.N.</span><span style=3D"letter-spacing:=
0.1pt; font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font-size:=
10pt">&nbsp;(Vorsitzender)</span><span style=3D"font-family:Calibri,Helveti=
ca,sans-serif,serif,EmojiFont; font-size:10pt">.</span><br>
<span style=3D"font-size:10pt"></span><span style=3D"font-family:Calibri,He=
lvetica,sans-serif,serif,EmojiFont"></span><span style=3D"letter-spacing:0.=
1pt; font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font-size:10=
pt">Sitz der Gesellschaft: Bocholt | Registergericht:
 Coesfeld, HRB 16595 | WEEE-Reg. Nr. DE 96349612.</span></span>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n-top:0px; margin-bottom:0px; margin-top:0px; margin-bottom:0px; margin-top=
:0px; margin-bottom:0px; margin-top:0px; margin-bottom:0px; font-size:11pt;=
 margin:0cm 0cm 0.0001pt; font-family:Calibri,sans-serif; color:rgb(33,33,3=
3)">
<span style=3D"font-size:8pt; font-family:Arial,sans-serif"><br>
</span></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0px; margin-bott=
om:0px; margin-top:0px; margin-bottom:0px; margin-top:0px; margin-bottom:0p=
x; margin-top:0px; margin-bottom:0px; font-size:12pt">
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0px; margin-bott=
om:0px; margin-top:0px; margin-bottom:0px; margin-top:0px; margin-bottom:0p=
x; margin-top:0px; margin-bottom:0px; font-size:12pt">
</p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_e48ded7ae4cd4736bcac4ce1e2ae53c25ddc6e8d0f084367b98e4d1_--
