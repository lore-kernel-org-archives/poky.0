Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34B2AE00D7F; Thu, 25 Jan 2018 03:34:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,RCVD_IN_RP_RNBL
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.3 RCVD_IN_RP_RNBL RBL: Relay in RNBL,
	*      https://senderscore.org/blacklistlookup/
	*      [87.81.244.161 listed in bl.score.senderscore.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E607DE00B5F
	for <poky@yoctoproject.org>; Thu, 25 Jan 2018 03:34:45 -0800 (PST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w0PBYfVB028992
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Thu, 25 Jan 2018 11:34:42 GMT
Message-ID: <1516880080.24502.181.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Mardegan, Alberto" <AMardegan@luxoft.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Thu, 25 Jan 2018 11:34:40 +0000
In-Reply-To: <8bf1b928-c37a-0590-5ead-e240b7d64eab@luxoft.com>
References: <af197fb8-a676-bbfd-91fc-183a2aed77b9@luxoft.com>
	<CAJTo0LZfHC8SOOqPTDMyVh1=wDiVxkD9toy-TfgEw1daEpzwog@mail.gmail.com>
	<8bf1b928-c37a-0590-5ead-e240b7d64eab@luxoft.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Subject: Re: Getting python-dbusmock into the SDK
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
X-List-Received-Date: Thu, 25 Jan 2018 11:34:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2018-01-25 at 10:36 +0000, Mardegan, Alberto wrote:
> On 24/01/2018 16:40, Burton, Ross wrote:
> > 
> > Those are close matches on the assumption that maybe you did a
> > typo.
> Right, I had completely misread the error message :-)
> 
> > 
> > Yes, you need to add BBCLASSEXTEND as appropriate.  Once you've
> > verified
> > that the recipes actually build correctly in nativesk please send
> > those
> > additions to oe-core.
> OK. FYI, there's another change that was needed: the dbus recipe has:
> 
>   OLDPKGNAME = "dbus-x11"
>   OLDPKGNAME_class-nativesdk = ""
> 
> I had to change the second line and set the value to "dbus-x11" there
> as
> well, or I would get an unsolved dependency (dbus-glib requires it).

Installing dbus in the sdk makes very little sense so you may want to
rethink that (or tell the sdk its a system provided dependency).

Cheers,

Richard

