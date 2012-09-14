Return-Path: <twoerner@gmail.com>
Received: from mail-lpp01m010-f53.google.com (mail-lpp01m010-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29AFAE002AC
	for <poky@lists.yoctoproject.org>; Fri, 14 Sep 2012 10:01:37 -0700 (PDT)
Received: by lahc1 with SMTP id c1so3014826lah.26
	for <poky@lists.yoctoproject.org>; Fri, 14 Sep 2012 10:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=JmjC+PtJliVwrj8kR2WW5Y5wOHSqNgGYXmrmmREGwww=;
	b=h0S6wYTW57GxJWHMZKBlVMhqQ0dWJaeHsssUGxna2vjCDXQg+/iFpTpaFCtMgY9EiD
	mdC0RWx+Ibw9y5quOGWd+ytZ6mznYRZhT5f6vrhglJiqqg8QLRB/VtV1vEIry/BsmLSy
	6P0oTXcjZwP1ElFLDtLM6f2SL5eH6Ai1Id+MbtDfEGZGd3mBeUO+t4WFBVwQVaYsNv9K
	BUbo/eNpz3sqkQAipH/1PzX0odSpLmvowC8QgrCHLpjf0pF/PexLsV0mIVkkejnyE7ll
	oKq2i5c2x1jg7wgSvjX8v3dAPlWogoUtpwbgFN7RjnzySrIuq4wg3NeOr81jfxQ5MH4q
	5CNA==
MIME-Version: 1.0
Received: by 10.112.9.133 with SMTP id z5mr1322988lba.69.1347642082614; Fri,
	14 Sep 2012 10:01:22 -0700 (PDT)
Received: by 10.112.37.2 with HTTP; Fri, 14 Sep 2012 10:01:22 -0700 (PDT)
In-Reply-To: <1347558649.11710.114.camel@ted>
References: <1347558649.11710.114.camel@ted>
Date: Fri, 14 Sep 2012 13:01:22 -0400
Message-ID: <CAHUNapSWv5sU2q2oR2kKEMoF=RmqR4qHSeP7tWukDbu6F5ioow@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky <poky@lists.yoctoproject.org>
Subject: Re: Default network connectivity sanity tests
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
X-List-Received-Date: Fri, 14 Sep 2012 17:01:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Richard,

On Thu, Sep 13, 2012 at 1:50 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> I'm getting continued complaints that git is horrible to proxy behind
> firewalls and this check continues to cause pain for people when in fact
> the builds would probably work.

I agree completely with your above statement. Thankfully I was able to
get git to work through the proxy which is setup where I work (so I'm
not affected by this), but only after a lot of work. However, even
though git works for me and can get through, it is extremely slow to
start, making it less preferred than http.

> One other option would be to remove it on release branches. Those should
> be more stable and therefore shouldn't need this kind of check...

Yes. Strangely enough I've had the same thoughts too!

In order for someone to be using the latest-and-greatest HEAD of the
yocto project, they would have to be using git to get the
latest-and-greatest, which implies git works for this person and maybe
even implies they have some sort of familiarity with using git. Plus
one would be more inclined to believe the HEAD of the yocto git
repositories might track the HEAD of the git repositories of the
various recipes as well.

But when someone downloads a yocto release via http it only
demonstrates http works so it probably isn't a good idea to assume a
whole bunch of other protocols work too. For example, take any yocto
release and inside we'll find a whole bunch of recipes. Are there any
cases where a yocto release is made but a recipe doesn't explicitly
specify the revision of a given component (i.e. uses git HEAD or some
random commit in a git repository) which is required? Ideally release
'H' of yocto would contain recipes which rely on specific releases of
various components (release x of eglibc, release y of busybox, release
z of libz...) all of which, ideally, someone could download from their
nearest GNU or sourceforge mirror.

I think someone (was it Tim Bird?) once mentioned how useful it would
be to be able to download a tarball of all the required packages,
place them in DL_DIR, then start a build with no connection to the
internet whatsoever (perhaps using different machines for the download
versus the build). That would be handy. Or, in the same way a user can
do " bitbake -c fetchall <image>" maybe it would be neat to have a
command which would list all the required components and how the build
expects to obtain said component (i.e. DL_DIR (if the component has
already been downloaded and ready to go) or a URI indicating where and
how bitbake would obtain it).

Best regards,
    Trevor

