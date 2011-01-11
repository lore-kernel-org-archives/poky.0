Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5ED7B4C8085F;
	Tue, 11 Jan 2011 04:01:10 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0BA2mA0004363; Tue, 11 Jan 2011 10:02:48 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id DQlOa+Lw6Gvk; Tue, 11 Jan 2011 10:02:48 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0BA2gVf004360
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 11 Jan 2011 10:02:44 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Cui, Dexuan" <dexuan.cui@intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB685AFA1B31B@shsmsx502.ccr.corp.intel.com>
References: <cover.1294680187.git.bruce.ashfield@windriver.com>
	<38d72bcb177222eba77eb3d7c483d55cbfb7f2e8.1294680187.git.bruce.ashfield@windriver.com>
	<1865303E0DED764181A9D882DEF65FB685AFA1B319@shsmsx502.ccr.corp.intel.com>
	<AANLkTikSSGjwH61YgsAQQ3qAQzgaq+RBzdC2r_=A5K9S@mail.gmail.com>
	<1865303E0DED764181A9D882DEF65FB685AFA1B31B@shsmsx502.ccr.corp.intel.com>
Date: Tue, 11 Jan 2011 10:00:50 +0000
Message-ID: <1294740050.1492.2957.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: [PATCH 4/5] kern-tools: create generic variables for platform/board/kernel
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
X-List-Received-Date: Tue, 11 Jan 2011 10:01:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-11 at 14:10 +0800, Cui, Dexuan wrote:
> Bruce Ashfield wrote:
> > 2011/1/10 Cui, Dexuan <dexuan.cui@intel.com>:
> >> hmmm, looks this commit was not tested?
> > 
> > It was definitely tested. Built for every board. Feel free to revert
> > as required.
> Hi Bruce,
> I'm building poky-image-minimal on today's latest poky master 4b055ed and got the following failure.
> 
> >> With poky.git's latest 4b055ed, "bitbake  kern-tools-native -c
> >> fetch" fails because in
> >> http://git.pokylinux.org/cgit/cgit.cgi/wr-kernel-tools/, the latest
> >> commit is still a494ddaf1c9151af8af8050e8427c9958440ec4c.   
> The commit "kern-tools: create generic variables for
> platform/board/kernel" upgraded SRCREV_pn-kern-tools-native to
> f553af04, but the wr-kernel-tools tree doesn't have such a commit
> number, so I got the build failure. Can you please check that? Maybe
> you forgot to push your internal commits into the public tree? :-)

I've just looked now and I don't know if anything has changed but the
head revision is:

http://git.pokylinux.org/cgit/cgit.cgi/wr-kernel-tools/commit/?id=f553af044615ba75c2b4b7ef1f382e6f75087213

which matches. A local build also succeeded.

Cheers,

Richard






