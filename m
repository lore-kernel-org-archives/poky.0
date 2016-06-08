Return-Path: <Teemu.Keskinarkaus@Maximatecc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DAF9E00CDE; Tue,  7 Jun 2016 22:06:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [148.163.159.126 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 358 seconds by postgrey-1.32 at yocto-www;
	Tue, 07 Jun 2016 22:06:31 PDT
Received: from mx0b-001ea001.pphosted.com (mx0b-001ea001.pphosted.com
	[148.163.159.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B07FE00CBE
	for <poky@yoctoproject.org>; Tue,  7 Jun 2016 22:06:31 -0700 (PDT)
Received: from pps.filterd (m0088396.ppops.net [127.0.0.1])
	by mx0b-001ea001.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u5850CEQ005250; Wed, 8 Jun 2016 00:00:28 -0500
Received: from ammail.actuant.com ([207.250.73.121])
	by mx0b-001ea001.pphosted.com with ESMTP id 23e382gxd6-1
	(version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 08 Jun 2016 00:00:28 -0500
Received: from AMDTCEX15.actuant.pri ([169.254.7.160]) by
	AMDTCEX13.actuant.pri ([169.254.5.12]) with mapi id 14.03.0174.001;
	Wed, 8 Jun 2016 00:00:27 -0500
From: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [poky] Recompiles in Yocto/Poky
Thread-Index: AdG8hSPPyTeG7pUNTe+AardJiC/kYAA3u6FAAPuMOoAABFW/cAACFzEAAApk+IA=
Date: Wed, 8 Jun 2016 05:00:27 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD400438CF@AMDTCEX15.actuant.pri>
References: <83DB4EC8FADD45428E3CC4E3664761FD4004044C@AMDTCEX15.actuant.pri>
	<488452498.gBbhXqb4nk@peggleto-mobl.ger.corp.intel.com>
	<83DB4EC8FADD45428E3CC4E3664761FD400438B4@AMDTCEX15.actuant.pri>
	<2358144.WdaeRfuoQP@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <2358144.WdaeRfuoQP@peggleto-mobl.ger.corp.intel.com>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.116]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-06-08_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	suspectscore=0 malwarescore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 impostorscore=0 lowpriorityscore=0 adultscore=0
	classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1604210000
	definitions=main-1606080060
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Recompiles in Yocto/Poky
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
X-List-Received-Date: Wed, 08 Jun 2016 05:06:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Unfortunately we are not using git but svn as version control.

So as it stands at the moment there isn't way to prevent the recompilation(=
in my case) expect modifying Yocto sources which I rather not do.

Teemu Keskinarkaus
Software system engineer
maximatecc
making machines smart, safe and productive


-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
Sent: 8. kes=E4kuuta 2016 7:56
To: Keskinarkaus, Teemu
Cc: Peter Kjellerstedt; poky@yoctoproject.org; Markus Lehtonen
Subject: Re: [poky] Recompiles in Yocto/Poky

There's no mechanism to exclude files at present, but it sounds like we sho=
uld add one. One workaround right now would be to track your source tree in=
 a git repository and have .gitignore cover the generated files; I apprecia=
te though that if you aren't using git for version control this is hardly i=
deal so it's not a substitute for a proper fix.

Cheers,
Paul

On Wed, 08 Jun 2016 04:50:15 Keskinarkaus, Teemu wrote:
> I think there are some files that are being generated at compilation
> time so most likely those triggers the recompilation every time.
>
> The next question is that how to I 'hide' files so that they don't
> trigger the recompilation? Is that something that I need to do on my
> application side or can I list files in Yocto to ignore when hashing
> files? This is most likely the proper way to deal with this issue
> rather than disabling whole feature.
>
> Teemu Keskinarkaus
> Software system engineer
> maximatecc
> making machines smart, safe and productive
>
>
> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: 8. kes=E4kuuta 2016 4:52
> To: Peter Kjellerstedt; Keskinarkaus, Teemu
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] Recompiles in Yocto/Poky
>
> On Fri, 03 Jun 2016 07:00:14 Peter Kjellerstedt wrote:
> > This is a feature introduced to complement the main use of
> > externalsrc, which is together with devtool. When you use "devtool
> > modify -x <recipe>", it fetches the sources as specified in the
> > recipe and makes them available locally. At the same time it sets up
> > a bbappend in the workspace layer which uses externalsrc to use
> > those sources when building the recipe. This is intended to make it
> > easy to use BitBake to actually work on and develop the sources.
> > However, for this to work in practice, BitBake must rebuild the
> > package if there are any changes in the sources, but since BitBake
> > normally only looks at the meta data to determine if a recipe task
> > needs to run, there is nothing telling it that the sources have
> > changed. Therefore changes were made so that code specified using exter=
nalsrc is always rebuilt.
>
> In 2.0 that's how it behaved - what it's supposed to do in 2.1 is
> determine if the sources have changed by either relying on the git
> metadata (if the source tree is tracked in git) or by hashing all
> files in the source tree if it isn't. It could be false triggering if
> you have files in the source tree that get regenerated as part of the
> compilation process that aren't hidden. Teemu, is that the case for your =
source tree?
>
> Unfortunately there is no way at present to turn off this
> functionality; we could add one, however before doing that I would be
> more interested in looking at making the code more intelligent so it
> did automatically rebuild in response to source changes for this case
> and not when there were no changes, assuming that's practical.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>
> ________________________________
>
> Actuant Corporation Email Notice
>
> This message is intended only for the use of the Addressee and may
> contain information that is PRIVILEGED and/or CONFIDENTIAL. This email
> is intended only for the personal and confidential use of the recipient(s=
) named above.
> If the reader of this email is not an intended recipient, you have
> received this email in error and any review, dissemination,
> distribution or copying is strictly prohibited. If you have received
> this email in error, please notify the sender immediately by return
> mail and permanently delete the copy you received.
>
> Thank you.

--

Paul Eggleton
Intel Open Source Technology Centre

________________________________

Actuant Corporation Email Notice

This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly prohibited.
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.

Thank you.

