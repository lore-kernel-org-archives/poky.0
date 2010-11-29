Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8C65C4C80039
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 06:26:30 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oATCQOdp032401;
	Mon, 29 Nov 2010 12:26:24 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32363-01; Mon, 29 Nov 2010 12:26:20 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oATCQCVS032391
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 29 Nov 2010 12:26:15 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Chris Larson <clarson@kergoth.com>
In-Reply-To: <AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
Date: Mon, 29 Nov 2010 04:25:57 -0800
Message-ID: <1291033557.14277.944.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] curl: fix native dependency
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 29 Nov 2010 12:26:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2010-11-28 at 22:53 -0700, Chris Larson wrote:
> On Sun, Nov 28, 2010 at 10:26 PM, Tian, Kevin <kevin.tian@intel.com> wrote:
> > This also confuses me a bit. When virtclass-native is expanded, EXTRA_OECONF_append
> > is simply a variable. In that case the expanded value should override the 1st assignment
> > of EXTRA_OECONF_append, and then we should get:
> >
> > EXTRA_OECONF_append = " --without-gnutls "
> >
> > and then that's what we expect.
> >
> > I guess I may still overlook something here, and really appreciate your explanation
> > on the whole flow which is helpful. :-)
> 
> No, EXTRA_OECONF_append is never a variable.  _append/_prepend are
> operations, not part of the name.  The value gets set aside in a list
> of appends for that variable.  One _append cannot override/replace
> another on the same variable, its always cumulative.

Right.

Interestingly though, if I add this to curl*.bb:

FOO = "A"
FOO_append = "B"
FOO_append_virtclass-native = "C"

and then "bitbake curl-native -e | grep FOO" (he recipe has a
BBCLASSEXTEND native) what should I see?

I see FOO = "AB" which is not what I thought it would do...

Cheers,

Richard


