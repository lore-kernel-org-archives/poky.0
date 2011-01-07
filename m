Return-Path: <kergoth@gmail.com>
Received: from mail-wy0-f172.google.com (mail-wy0-f172.google.com
	[74.125.82.172])
	by mx1.pokylinux.org (Postfix) with ESMTP id 143F04C80B70
	for <poky@lists.pokylinux.org>; Fri,  7 Jan 2011 08:47:58 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyf23 with SMTP id 23so18155232wyf.3
	for <poky@lists.pokylinux.org>; Fri, 07 Jan 2011 06:47:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:sender:received
	:in-reply-to:references:from:date:x-google-sender-auth:message-id
	:subject:to:cc:content-type;
	bh=ObsVYW72gw9hhVlTMYyK7HaqD4A7p7htg0TlU7r/vaQ=;
	b=uy70jcSQSpbHdm3A1iL8WLR4RixmNTa2rqrCIBLoxggriMKnzEhX6gRpl2JsasiyUs
	LBfKeVtjQflOENrl+Q4w9r6KmzVdVpWWWsj7wf5irh/ShuWp3Wy/uid6dLtuHySeF/vw
	HZPVpi6tzrAgAnABnVpT4gC1SpKvfJmgInJ6g=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	b=GXDx0sJ4a5vifNPrdQx9v4NBbxpeBFtETNx3YkHCvVMJP2K/3xAIiX0m2upR5heLso
	rSSjkOLSnyO9FEQnRib7APZ/jCeIOtOC7XBuaHxAGMuZOEzKNpR/vffA+piLlRt2NMM1
	YiLmsXmaLVY13gYH9+VV2aqAp7iszjE/B8epc=
Received: by 10.216.150.134 with SMTP id z6mr25512517wej.27.1294411460599;
	Fri, 07 Jan 2011 06:44:20 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.67.67 with HTTP; Fri, 7 Jan 2011 06:44:00 -0800 (PST)
In-Reply-To: <1294405139.17519.27035.camel@rex>
References: <4D26588E.7070701@mlbassoc.com>
	<AANLkTikFj5SROL4Thc3Aj8VK6oLudeVz=2vSRiJ8jOM9@mail.gmail.com>
	<AANLkTinAz2JynsoSYXZB6sTJUg2hJa8Apa_gNaKsdHfi@mail.gmail.com>
	<AANLkTinp0GooZu6e5uHCaTey=42qUe-NF9FN6qvVTwO3@mail.gmail.com>
	<1294405139.17519.27035.camel@rex>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 7 Jan 2011 07:44:00 -0700
X-Google-Sender-Auth: ZU6QoE0J6f7AacgzUfGpcRnB8bM
Message-ID: <AANLkTikNW+Nq0dyF0j5nS8dCetcxLgd6W4mQ=QUEwc26@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: SRCREV_FORMAT breaks my builds
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
X-List-Received-Date: Fri, 07 Jan 2011 14:47:59 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jan 7, 2011 at 5:58 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> The error is caused by our recent updates to bitbake from bitbake
> upstream. The behaviour of skipped tasks changed in the cache changes in
> that variable expansion was still attempted for variables from skipped
> recipes.
>
> I've added this fix:
>
> http://git.pokylinux.org/cgit.cgi/poky/commit/?id=847b717862a518746bc5e457f40760e3bd36f1db
>
>
> which seems to fix the problem here for me.

Well spotted, thanks.  I'll go ahead and apply to upstream master as
well, unless you'd like to do so.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

