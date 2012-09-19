Return-Path: <flocirel@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33A38E002AC
	for <poky@yoctoproject.org>; Wed, 19 Sep 2012 02:02:33 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so2380507pbb.35
	for <poky@yoctoproject.org>; Wed, 19 Sep 2012 02:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type;
	bh=SF6gHOiwP9Fsasyq+AYnO4C39ZXGC7GlXy3XtDWIcb4=;
	b=L4R2N4ZSVrY/JG4bBvUZoszkkM/GcptIdZahthfHce2qqleQDAScyQB0ds8VgwPPUD
	Bmpub2j6eYUj1g34s3eep4Vm4qqSsvg5RqOmkxjUSvhsTZozC+ZHHlG4uNCCFjeWA4j9
	nudKjEX+PYqdFCCJG+lJZGw5tDvBkdhCQfchilvn8k+WsIDeUNFPe/JAIvIC/gGqu3N3
	43582Xc2jVeAhb2i/1VlChzbKGYbiGKN92Y8KDJQaE4Y2e4WmtaLVyz6/tQLUMEJl34L
	GVYOrddOeOln+/H9+r2b87kEFG3QU2q3rXShAB/8nfKlqc0QJWnxuIxsbXxC9svFFRAG
	hAMw==
Received: by 10.68.226.38 with SMTP id rp6mr5719974pbc.116.1348045350828;
	Wed, 19 Sep 2012 02:02:30 -0700 (PDT)
Received: from [128.224.170.241] ([89.121.200.106])
	by mx.google.com with ESMTPS id f9sm649616paz.1.2012.09.19.02.02.28
	(version=SSLv3 cipher=OTHER); Wed, 19 Sep 2012 02:02:29 -0700 (PDT)
Message-ID: <50598A24.1040503@gmail.com>
Date: Wed, 19 Sep 2012 12:02:28 +0300
From: Florin <flocirel@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <503550B4.6060708@gmail.com> <5035DBF4.2020201@r-finger.com>
	<503639B2.4000605@gmail.com>
	<CAMKF1sqhPaHkiOn5uTiF6mQixoatRL8queN6XX5AvQaxL1nvzg@mail.gmail.com>
In-Reply-To: <CAMKF1sqhPaHkiOn5uTiF6mQixoatRL8queN6XX5AvQaxL1nvzg@mail.gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: do_fetch error with gcc-cross-initial_4.7
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
X-List-Received-Date: Wed, 19 Sep 2012 09:02:33 -0000
Content-Type: multipart/alternative;
	boundary="------------060000050406060408090009"

--------------060000050406060408090009
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Trying to build something today and still takes forever and crashes at 
fetch. Looking at the gcc-4.7.inc I see it's still from git.
What would the resolution be for this issue?

Thank you

On 08/23/2012 06:35 PM, Khem Raj wrote:
>
>
> On Thursday, August 23, 2012, Florin <flocirel@gmail.com 
> <mailto:flocirel@gmail.com>> wrote:
> > On 08/23/2012 10:29 AM, Tomas Frydrych wrote:
> >>
> >> Hi,
> >>
> >> On 22/08/12 22:35, Florin wrote:
> >>>
> >>> ERROR: Function failed: Fetcher failure for URL:
> >>> 
> 'git://github.com/mirrors/gcc.git;branch=gcc-4_7-branch;protocol=git 
> <http://github.com/mirrors/gcc.git;branch=gcc-4_7-branch;protocol=git>'.
> >>> Unable to fetch URL from any source.
> >>>
> >>>
> >>> After the build stops with this error, retrying the bitbake command to
> >>> produce the rootfs fetches gcc successfully and gcc (and the rest 
> of the
> >>> packages) is compiled just fine.
> >>> Is there anybody else seeing this behavior?
> >>
> >> FWIW, over the last few days I have seen intermittent fetch failures
> >> from various packages that pull source from github; they pretty much
> >> always go away on the next attempt; I assume it's github's fault.
> >
> > Hi Tomas,
> > thanks for your answer. The problem I am seeing is that it always 
> behaves like this: in the stages of creating the rootfs it gets to the 
> fetching of gcc cross initial, this stalls a while (tens of minutes) 
> in which time bitbake fetches (all kind of native and target packages) 
> and compiles native packages and it throws an error at the point where 
> the dependency chain would have had gcc cross initial compiled and 
> ready to be used by other packages. After that, rerunning the bitbake 
> command to create the rootfs fetches successfully gcc and the build 
> finishes. So I am always seeing this behavior: first fetch fails, 
> second fetch works. Always like this, never had to try a third time to 
> fetch gcc. That is why I am not suspecting especially a problem with 
> github but rather the way bitbake tries the mirrors for gcc.
> >
>
> Git archive for gcc is in terabytes so it will take long time to fetch 
> it. I have sent a patch to switch back to Svn in src_URI
> That should avoid long delays in fetching gcc srcs
> > Thanks,
> > Florin
> >>
> >> Tomas
> >> _______________________________________________
> >> poky mailing list
> >> poky@yoctoproject.org <mailto:poky@yoctoproject.org>
> >> https://lists.yoctoproject.org/listinfo/poky
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org <mailto:poky@yoctoproject.org>
> > https://lists.yoctoproject.org/listinfo/poky
> > 


--------------060000050406060408090009
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">Trying to build something today and
      still takes forever and crashes at fetch. Looking at the
      gcc-4.7.inc I see it's still from git.<br>
      What would the resolution be for this issue?<br>
      <br>
      Thank you<br>
      <br>
      On 08/23/2012 06:35 PM, Khem Raj wrote:<br>
    </div>
    <blockquote
cite="mid:CAMKF1sqhPaHkiOn5uTiF6mQixoatRL8queN6XX5AvQaxL1nvzg@mail.gmail.com"
      type="cite"><br>
      <br>
      On Thursday, August 23, 2012, Florin &lt;<a moz-do-not-send="true"
        href="mailto:flocirel@gmail.com">flocirel@gmail.com</a>&gt;
      wrote:<br>
      &gt; On 08/23/2012 10:29 AM, Tomas Frydrych wrote:<br>
      &gt;&gt;<br>
      &gt;&gt; Hi,<br>
      &gt;&gt;<br>
      &gt;&gt; On 22/08/12 22:35, Florin wrote:<br>
      &gt;&gt;&gt;<br>
      &gt;&gt;&gt; ERROR: Function failed: Fetcher failure for URL:<br>
      &gt;&gt;&gt; 'git://<a moz-do-not-send="true"
href="http://github.com/mirrors/gcc.git;branch=gcc-4_7-branch;protocol=git">github.com/mirrors/gcc.git;branch=gcc-4_7-branch;protocol=git</a>'.<br>
      &gt;&gt;&gt; Unable to fetch URL from any source.<br>
      &gt;&gt;&gt;<br>
      &gt;&gt;&gt;<br>
      &gt;&gt;&gt; After the build stops with this error, retrying the
      bitbake command to<br>
      &gt;&gt;&gt; produce the rootfs fetches gcc successfully and gcc
      (and the rest of the<br>
      &gt;&gt;&gt; packages) is compiled just fine.<br>
      &gt;&gt;&gt; Is there anybody else seeing this behavior?<br>
      &gt;&gt;<br>
      &gt;&gt; FWIW, over the last few days I have seen intermittent
      fetch failures<br>
      &gt;&gt; from various packages that pull source from github; they
      pretty much<br>
      &gt;&gt; always go away on the next attempt; I assume it's
      github's fault.<br>
      &gt;<br>
      &gt; Hi Tomas,<br>
      &gt; thanks for your answer. The problem I am seeing is that it
      always behaves like this: in the stages of creating the rootfs it
      gets to the fetching of gcc cross initial, this stalls a while
      (tens of minutes) in which time bitbake fetches (all kind of
      native and target packages) and compiles native packages and it
      throws an error at the point where the dependency chain would have
      had gcc cross initial compiled and ready to be used by other
      packages. After that, rerunning the bitbake command to create the
      rootfs fetches successfully gcc and the build finishes. So I am
      always seeing this behavior: first fetch fails, second fetch
      works. Always like this, never had to try a third time to fetch
      gcc. That is why I am not suspecting especially a problem with
      github but rather the way bitbake tries the mirrors for gcc.<br>
      &gt;<br>
      <br>
      Git archive for gcc is in terabytes so it will take long time to
      fetch it. I have sent a patch to switch back to Svn in src_URI<br>
      That should avoid long delays in fetching gcc srcs<br>
      &gt; Thanks,<br>
      &gt; Florin<br>
      &gt;&gt;<br>
      &gt;&gt; Tomas<br>
      &gt;&gt; _______________________________________________<br>
      &gt;&gt; poky mailing list<br>
      &gt;&gt; <a moz-do-not-send="true"
        href="mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
      &gt;&gt; <a moz-do-not-send="true"
        href="https://lists.yoctoproject.org/listinfo/poky">https://lists.yoctoproject.org/listinfo/poky</a><br>
      &gt;<br>
      &gt; _______________________________________________<br>
      &gt; poky mailing list<br>
      &gt; <a moz-do-not-send="true"
        href="mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
      &gt; <a moz-do-not-send="true"
        href="https://lists.yoctoproject.org/listinfo/poky">https://lists.yoctoproject.org/listinfo/poky</a><br>
      &gt;
    </blockquote>
    <br>
  </body>
</html>

--------------060000050406060408090009--
