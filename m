Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9903EE006D7
	for <poky@yoctoproject.org>; Thu, 17 Jan 2013 06:37:33 -0800 (PST)
Received: from mail-pb0-f72.google.com ([209.85.160.72])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 17 Jan 2013 06:37:32 -0800
Received: by mail-pb0-f72.google.com with SMTP id wz7so3028622pbc.3
	for <poky@yoctoproject.org>; Thu, 17 Jan 2013 06:37:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=w6R83b0jGA1GWoc8ospo8sy8QOc8OEPInrsk8AdW7uY=;
	b=kaBRzzvuDV44mjFzUXQTdDz05qfVsGkHpZ8ce4yD/cSLR6CUQXcDczRhYqSu7DUrDB
	9jVCweoLdTiopfc1IAlZ3jhdcN4b7hXczHCPaSN2ZP00mTPm/Yin5W6YW6+/ZnOiJJP3
	M0DDmKg1XVqU+mWrpEsimF1CtC2+JtygJio/LyQ/YaCw7yPQLFn5WKPSxhAF5vNlIP7Y
	hYoLXkpISXuo9srpyOowGQ6xF3mkbQbuQK8PzThOaDFPxEBYRTVj/hIbxlOWJf8FUQ6V
	lT2tOQ1LdX+ZafNCZLYXEfc2ENTl5XQyuXGJKzczixO1+M/01GSmBgsdW9zRGFLXuLz4
	81KQ==
X-Received: by 10.68.238.106 with SMTP id vj10mr14357165pbc.40.1358433452339; 
	Thu, 17 Jan 2013 06:37:32 -0800 (PST)
X-Received: by 10.68.238.106 with SMTP id vj10mr14357127pbc.40.1358433452114; 
	Thu, 17 Jan 2013 06:37:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.66.253.233 with HTTP; Thu, 17 Jan 2013 06:37:12 -0800 (PST)
In-Reply-To: <50F80A0D.2060806@simpleaudio.com>
References: <50F7CFDA.6090505@simpleaudio.com>
	<CAJTo0Lay83xOxnhUAUmb8bS+igk=woeMCboXR+S+VeTHYY61Fg@mail.gmail.com>
	<50F80088.4090809@simpleaudio.com>
	<CAJTo0LYFnrkk-WaMzAWARQP0jTZqt08mFdu7Jk08bED+m==1HQ@mail.gmail.com>
	<50F80A0D.2060806@simpleaudio.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 17 Jan 2013 14:37:12 +0000
Message-ID: <CAJTo0LbSR=sA2ayjNigSR2knATx4RDXFmo20sf5sCkvd87EscQ@mail.gmail.com>
To: Wayne Tams <wayne.tams@simpleaudio.com>
X-Gm-Message-State: ALoCoQnmSw/TvWJQbgPQoKDck6XsTlSvBy0Ol1yIOQDv2dUETHQVsUpYRcAwKQ2zZuQdiyBZWKdyR2iE4M9ZMKTQgGL3fhC37WuX539Prr/owJsZSkbQFB/ZQ535pylPhYQty6eexdkO7OqQVxe8pqckRZLui5aJUQ==
Cc: poky@yoctoproject.org
Subject: Re: gst-rtsp not building
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
X-List-Received-Date: Thu, 17 Jan 2013 14:37:33 -0000
Content-Type: text/plain; charset=UTF-8

Hi Wayne,

On 17 January 2013 14:26, Wayne Tams <wayne.tams@simpleaudio.com> wrote:
> That looks like that has solved that issue, build completed with a QA
> warning but I will look into this and see what is up.
>
> WARNING: QA Issue: gst-rtsp: Files/directories were installed but not
> shipped
>   /usr/share
>   /usr/share/vala
>   /usr/share/vala/vapi
>   /usr/share/vala/vapi/gst-rtsp-server-0.10.vapi
>   /usr/share/vala/vapi/gst-rtsp-server-0.10.deps

Excellent!  Those files can be added to the -dev package.

Can you submit your fixed recipe to meta-multimedia (in meta-oe), or
mail it to me and I can do that for you?

Cheers,
Ross

