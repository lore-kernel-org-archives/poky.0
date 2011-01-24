Return-Path: <kergoth@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8919D4C8085F
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 13:17:41 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwb31 with SMTP id 31so4811458wwb.11
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 11:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=S1w0N7fN0lZQJ0RajKqjFUAQRbeNKCfiSUUlUSRQZUY=;
	b=j3X983cWUbLUDXgsJME52GT12g6R9+GgUaGa6KMwag4BhxnamFvoDZ3uRJKR7WpP0I
	9vQiy+TWYerARku9dF0zws+RFuL4yaFXPUo2gjBn921ZTeaOpmqfCBQ5wZRv+kjGrR4q
	Et/7iFQxtatExXFUduOTUU/DGlfKof8BedCI4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=oQr8g7Qgztq4+iKAc/vMRv2zmqjYsrYDbAXwCLhQ0Z0lKM6oQwNz6UEWLkH6W+QRcs
	dXMcAEzbYdPDDAQjebI35zX5ikQslCb5A/7WKrcU82RppDMiimj60iMeHKcqBcs8lrDk
	Z9F6QQGWoPJ//as6n5sXCOwPSUpt3UTg8ESgY=
Received: by 10.216.155.75 with SMTP id i53mr2811630wek.27.1295896660317; Mon,
	24 Jan 2011 11:17:40 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.254.91 with HTTP; Mon, 24 Jan 2011 11:17:20 -0800 (PST)
In-Reply-To: <1865303E0DED764181A9D882DEF65FB685DF60F3EC@shsmsx502.ccr.corp.intel.com>
References: <cover.1295359004.git.dexuan.cui@intel.com>
	<1295885045.14388.45539.camel@rex>
	<1865303E0DED764181A9D882DEF65FB685DF60F3EC@shsmsx502.ccr.corp.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Mon, 24 Jan 2011 12:17:20 -0700
X-Google-Sender-Auth: HSSxBBos92wnQ3I_1yPfeFnwMxI
Message-ID: <AANLkTimkGyHZmA3E39mUEEMMi4isqANUxesnF5dKNAq8@mail.gmail.com>
To: "Cui, Dexuan" <dexuan.cui@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [RFC: enhance toolchain bootstrap process: v3: 0/7] enhance the toolchain bootstrap process
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
X-List-Received-Date: Mon, 24 Jan 2011 19:17:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 24, 2011 at 10:28 AM, Cui, Dexuan <dexuan.cui@intel.com> wrote:
>>
>> =C2=A0 gcc-cross-initial, gcc-crosssdk-initial: change
>> CROSS_TARGET_SYS_DIR and insall into new locations
>>
>> This change is ok but its incomplete. Why? If I apply this change and
>> try a build, things won't work as it needs bits from later commits. To
> I split my changes into small commits for easy review. Sorry, I didn't tr=
y to ensure every commit should be buildable. :-)

Note that in general, keeping things buildable through the history is
important for bisectability (assuming, of course, that this is a
priority for poky -- I'm not certain about that).  The more places
where it won't build, the more commits have to be skipped when
attempting to isolate a real problem.  I'd suggest using the git
test-sequence script (see google) to sanity check a branch before
requesting a merge.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

