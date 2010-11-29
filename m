Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB1314C810B0
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 09:17:36 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oATFHW2i001467;
	Mon, 29 Nov 2010 15:17:32 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01141-06; Mon, 29 Nov 2010 15:17:28 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oATFHMSh001461
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 29 Nov 2010 15:17:24 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
In-Reply-To: <AANLkTi=3f9NUcm3+1xNz2bL0+gaasfGN8-bU6Zov6Ut-@mail.gmail.com>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
	<1291033557.14277.944.camel@rex>
	<AANLkTi=3f9NUcm3+1xNz2bL0+gaasfGN8-bU6Zov6Ut-@mail.gmail.com>
Date: Mon, 29 Nov 2010 07:17:07 -0800
Message-ID: <1291043827.14277.1149.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Chris Larson <clarson@kergoth.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Mon, 29 Nov 2010 15:17:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-29 at 14:04 +0100, Frans Meulenbroeks wrote:
> 2010/11/29 Richard Purdie <rpurdie@linux.intel.com>:
> > Interestingly though, if I add this to curl*.bb:
> >
> > FOO = "A"
> > FOO_append = "B"
> > FOO_append_virtclass-native = "C"
> >
> > and then "bitbake curl-native -e | grep FOO" (he recipe has a
> > BBCLASSEXTEND native) what should I see?
> >
> > I see FOO = "AB" which is not what I thought it would do...
> >
> 
> Hm.
> Please allow me the remark that, if this does not do what you as
> expert expect it to to, that probably for mere mortals like me, this
> is a construct that is way too complicated.

Its not that its too complicated, its just that its not following what
I've understood to be the rules that variables follow. This is probably
a bug in the parser but I'm very careful about jumping to that
conclusion as there could be another explanation, not least the way
virtclass as an override is implemented. I'd be interested in Chris'
opinion which is why I was non-committal in calling it a bug ;-).

> What is the rationale that _append is not a variable? Wouldn't it be
> more logical/orthogonal/clearer if it was (and get appended at the end
> as most people seem to expect/assume)

The point is that appends should stack and this is exactly the same as
normal variable rules, e.g.:

FOO = "A"
FOO += "B"
FOO += "C"

and you'd expect the result to be "A B C", not "A C" which it would be
if += was the append operator did not stack.

Cheers,

Richard


