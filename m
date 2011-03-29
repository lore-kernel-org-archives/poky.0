Return-Path: <cgwalters@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 759874C80050
	for <poky@yoctoproject.org>; Tue, 29 Mar 2011 11:15:48 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwd20 with SMTP id 20so383495wwd.11
	for <poky@yoctoproject.org>; Tue, 29 Mar 2011 09:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=6j+SdWd/bcI5i7DvfRU6TtqvbiClplh+Xe62qsAZNro=;
	b=Ydp+dJpj8EUyvSStuSOAwAPUVC3s0GkbQBgpM1G4wvku/JLtjOa6gwWxgNd/1Pt8Wh
	66Imtxom3i2tTyw3lRYmmUcO00mDr3KdOn6NpP+lnlnOo1yQOfSFCPlF3a1Mn0QWFkpr
	jb9VpIUfLWJuWbuOSWsKjOreynIJGBHz3BFM8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	b=BBZso4R3+JCfbUgeCzjv4Rl8ZDFHiIaSRVSZ00BJFqFqiTejtXvDHSkmsTuafuDz1W
	GDQlpClgkgechzL5tm7vnUPmyTVqf+osnCVQxewarDQBdIZE0tFp7QVu126G7uy+LIGP
	vk1v+5XiqqP6MI3KFEN/hAdlbqPHFWXgHqAoA=
MIME-Version: 1.0
Received: by 10.216.72.201 with SMTP id t51mr4286200wed.6.1301415346542; Tue,
	29 Mar 2011 09:15:46 -0700 (PDT)
Sender: cgwalters@gmail.com
Received: by 10.216.49.20 with HTTP; Tue, 29 Mar 2011 09:15:46 -0700 (PDT)
In-Reply-To: <1301414580.24596.64.camel@rex>
References: <AANLkTi=zGTsBJ4t6MR=7pp2cSjwNFhSMJC=xQGy_mMBF@mail.gmail.com>
	<1301414580.24596.64.camel@rex>
Date: Tue, 29 Mar 2011 12:15:46 -0400
X-Google-Sender-Auth: de81hnqnD8-7xv8Y1-qHFP9AbSk
Message-ID: <AANLkTim-tPhaRCWsCP=sDW30FUL1MfyxTOHabCSHyeQK@mail.gmail.com>
From: Colin Walters <walters@verbum.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@yoctoproject.org
Subject: Re: [patch] autotools: Remove .la files by default
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
X-List-Received-Date: Tue, 29 Mar 2011 16:15:48 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 29, 2011 at 12:03 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:

> So no, I'm not going to merge this patch at this time. If we were going
> to do something like this I'd rather thrown out libtool entirely and
> switch to something like dolt.

Would you take an option, off by default then?  I definitely do not
want these files in my OS; I could remove them in a
ROOTFS_POSTPROCESS_COMMAND, but it'd be even better to do in after
each build.

> Also note in your gnome shell link above that its listed as required
> because of "the dirty hacks that jhbuild plays to get it to sandbox your
> system" which is hardly a glowing recommendation. We don't have this
> problem.

The core problem arises in that often for developers it's convenient
to do partial builds; say only rebuild glib and gtk+, but not rebuild
pango (which lies between them).  What the libtool pango.la file does
is add -L/usr/lib which is 1) unnecessary and 2) forces the linker
search first in /usr/lib instead of /opt/gnome like we want.

