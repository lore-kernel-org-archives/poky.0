Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1C7DE0079E; Tue,  4 Nov 2014 12:08:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.51 listed in list.dnswl.org]
Received: from mail-qa0-f51.google.com (mail-qa0-f51.google.com
	[209.85.216.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50B6FE0079E
	for <poky@yoctoproject.org>; Tue,  4 Nov 2014 12:07:54 -0800 (PST)
Received: by mail-qa0-f51.google.com with SMTP id f12so10240110qad.24
	for <poky@yoctoproject.org>; Tue, 04 Nov 2014 12:07:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=o22UbK6IC0wZlVh9yjbdlnLiMzZEU9NB/lMWd9awPwg=;
	b=L6+iqY8lQLdNTRbMJE0yOBR4uT8i99mwyMwgIpjYUd6IgMLP1KAHkMVadTEica3mAK
	sNGGafaT5AyZe3wdXViAjpqmbLU2Gteg8qNhEzwGVDtvh0Vg7l3RlFoDq2wBMxBDmu8N
	NIohcuQ6CI5WE0A9CnNZCOVQ6b7F3moBB48xn1NCE3gaeahSTD7UKpVx1dTXVahabitx
	SdPQvKSbn9bpJX9a9dX+yDCrDHnNJ6CPvA22A25oKcl/9m+PtqLnAjnWktkeMDj2Ggub
	X3d0J2CIFbJ78BHFeNNWjNIoBYeN/CTHfgPEHSbv9kaVb64oB79txISCGeBYKTetAWCl
	mvjw==
X-Gm-Message-State: ALoCoQkx33D+ADaLEJ3ntseJUHeZsg30HDNBYo25N4oyFo+Tv7CJlh8Ez3bkQAI00uEHV6oPD0wX
X-Received: by 10.140.94.246 with SMTP id g109mr45983319qge.77.1415131670903; 
	Tue, 04 Nov 2014 12:07:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.98.213 with HTTP; Tue, 4 Nov 2014 12:07:30 -0800 (PST)
In-Reply-To: <54592B9D.2070308@linux.intel.com>
References: <54592B9D.2070308@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 4 Nov 2014 20:07:30 +0000
Message-ID: <CAJTo0LbufnjN1WYTsw_7Rgo1KfzRxjJaS4juO8eiAfF04AUYeA@mail.gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	bitbake-devel <bitbake-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: 1.7 Stable Maintainer - Dizzy open for patch suggestions
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
X-List-Received-Date: Tue, 04 Nov 2014 20:08:01 -0000
Content-Type: multipart/alternative; boundary=001a113a81d68e487405070e0461

--001a113a81d68e487405070e0461
Content-Type: text/plain; charset=UTF-8

On 4 November 2014 19:40, Saul Wold <sgw@linux.intel.com> wrote:

> Armin Kuster of Monta Vista  will be the stable maintainer for the Dizzy
> branch, and it is now open for suggestions of backport patches.


Thanks Armin!

Ross

--001a113a81d68e487405070e0461
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 4=
 November 2014 19:40, Saul Wold <span dir=3D"ltr">&lt;<a href=3D"mailto:sgw=
@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">Armin Kuster of Monta Vista=C2=A0 will=
 be the stable maintainer for the Dizzy branch, and it is now open for sugg=
estions of backport patches.</blockquote></div><br>Thanks Armin!</div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113a81d68e487405070e0461--
